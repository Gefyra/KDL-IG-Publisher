#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const PARENT_PROPERTY_DECLARATION = [
  { field: 'code', value: '#parent' },
  { field: 'uri', value: '"http://hl7.org/fhir/concept-properties#parent"' },
  {
    field: 'description',
    value:
      '"The concept identified in this property is a parent of the concept on which it is a property."'
  },
  { field: 'type', value: '#code' }
];

function usage() {
  const scriptName = path.basename(process.argv[1] || 'flatten-codesystem.js');
  console.error(`Usage: node ${scriptName} <input.fsh> <output.fsh>`);
}

function fail(message) {
  console.error(`Error: ${message}`);
  process.exit(1);
}

function readText(filePath) {
  try {
    return fs.readFileSync(filePath, 'utf8');
  } catch (error) {
    fail(`Konnte Eingabedatei nicht lesen: ${filePath}\n${error.message}`);
  }
}

function writeText(filePath, content) {
  try {
    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    fs.writeFileSync(filePath, content, 'utf8');
  } catch (error) {
    fail(`Konnte Ausgabedatei nicht schreiben: ${filePath}\n${error.message}`);
  }
}

function countLeadingSpaces(line) {
  const match = line.match(/^ */);
  return match ? match[0].length : 0;
}

function isConceptLine(line) {
  return /^(\s*)\* #\S+/.test(line);
}

function isConceptPropertyLine(line) {
  return /^(\s*)\* \^property/.test(line);
}

function isTopLevelPropertyLine(line) {
  return /^\* \^property/.test(line.trim());
}

function parseConceptLine(line) {
  const match = line.match(
    /^(\s*)\* (#\S+)(?:\s+"((?:[^"\\]|\\.)*)")?(?:\s+"((?:[^"\\]|\\.)*)")?\s*$/
  );
  if (!match) {
    fail(`Konzeptzeile konnte nicht geparst werden: ${line}`);
  }

  return {
    indent: match[1].length,
    code: match[2].slice(1),
    body: line.trimEnd().trim()
  };
}

function parsePropertyLine(line) {
  const trimmed = line.trim();
  const match = trimmed.match(/^\* \^property(?:\[(\d+|\+|=)\])?\.(\w+) = (.+?)\s*$/);
  if (!match) {
    fail(`Property-Zeile konnte nicht geparst werden: ${line}`);
  }

  return {
    raw: trimmed,
    indexToken: match[1] || null,
    field: match[2],
    value: match[3]
  };
}

function propertyEntriesFromLines(propertyLines, contextLabel) {
  const entries = [];
  let currentIndex = -1;

  for (const line of propertyLines) {
    const parsed = typeof line === 'string' ? parsePropertyLine(line) : line;

    if (parsed.indexToken === '+') {
      entries.push({ fields: [] });
      currentIndex = entries.length - 1;
    } else if (/^\d+$/.test(parsed.indexToken || '')) {
      currentIndex = Number(parsed.indexToken);
      while (entries.length <= currentIndex) {
        entries.push({ fields: [] });
      }
    } else if (parsed.indexToken === '=') {
      if (currentIndex < 0 || !entries[currentIndex]) {
        fail(`${contextLabel}: '=' ohne vorherige Property-Instanz.`);
      }
    } else if (parsed.field === 'code') {
      if (currentIndex >= 0 && entries[currentIndex] && entries[currentIndex].fields.length > 0) {
        entries.push({ fields: [] });
        currentIndex = entries.length - 1;
      } else if (currentIndex < 0) {
        entries.push({ fields: [] });
        currentIndex = entries.length - 1;
      }
    } else if (currentIndex < 0) {
      entries.push({ fields: [] });
      currentIndex = entries.length - 1;
    }

    entries[currentIndex].fields.push({
      field: parsed.field,
      value: parsed.value,
      raw: parsed.raw
    });
  }

  return entries.filter(entry => entry.fields.length > 0);
}

function renderPropertyEntries(entries, indent) {
  const lines = [];

  entries.forEach((entry, entryIndex) => {
    entry.fields.forEach((field, fieldIndex) => {
      let token;
      if (entryIndex === 0 && fieldIndex === 0) {
        token = '[0]';
      } else if (fieldIndex === 0) {
        token = '[+]';
      } else {
        token = '[=]';
      }

      lines.push(`${indent}* ^property${token}.${field.field} = ${field.value}`);
    });
  });

  return lines;
}

function cloneEntries(entries) {
  return entries.map(entry => ({
    fields: entry.fields.map(field => ({
      field: field.field,
      value: field.value,
      raw: field.raw
    }))
  }));
}

function normalizeEntry(entry) {
  return entry.fields.map(field => ({ field: field.field, value: field.value }));
}

function getEntryValue(entry, fieldName) {
  const field = entry.fields.find(item => item.field === fieldName);
  return field ? field.value : null;
}

function findPropertyEntry(entries, codeValue) {
  return entries.find(entry => getEntryValue(entry, 'code') === codeValue);
}

function parseFsh(text) {
  const lines = text.split(/\r?\n/);
  const before = [];
  const concepts = [];
  const after = [];
  const stack = [];
  let conceptSectionStarted = false;
  let conceptSectionEnded = false;
  let currentConcept = null;

  for (const line of lines) {
    if (!conceptSectionStarted) {
      if (isConceptLine(line)) {
        conceptSectionStarted = true;
      } else {
        before.push(line);
        continue;
      }
    }

    if (conceptSectionEnded) {
      after.push(line);
      continue;
    }

    if (isConceptLine(line)) {
      const parsed = parseConceptLine(line);
      const concept = {
        code: parsed.code,
        indent: parsed.indent,
        conceptLine: parsed.body,
        propertyLines: [],
        propertyEntries: [],
        children: []
      };

      while (stack.length > 0 && stack[stack.length - 1].indent >= concept.indent) {
        stack.pop();
      }

      if (stack.length > 0) {
        stack[stack.length - 1].children.push(concept);
      } else {
        concepts.push(concept);
      }

      stack.push(concept);
      currentConcept = concept;
      continue;
    }

    if (isConceptPropertyLine(line)) {
      if (!currentConcept) {
        fail(`Concept-Property ohne zugehöriges Konzept gefunden: ${line}`);
      }

      if (countLeadingSpaces(line) <= currentConcept.indent) {
        fail(`Concept-Property ist nicht tiefer eingerückt als sein Konzept: ${line}`);
      }

      currentConcept.propertyLines.push(line);
      currentConcept.propertyEntries = propertyEntriesFromLines(
        currentConcept.propertyLines,
        `Konzept ${currentConcept.code}`
      );
      continue;
    }

    if (line.trim() === '') {
      if (!currentConcept) {
        before.push(line);
      }
      continue;
    }

    conceptSectionEnded = true;
    after.push(line);
  }

  if (!conceptSectionStarted) {
    fail('Keine Konzeptdefinitionen in der FSH-Datei gefunden.');
  }

  return { before, concepts, after };
}

function traverseConcepts(concepts, visit, parentCode = null) {
  for (const concept of concepts) {
    visit(concept, parentCode);
    traverseConcepts(concept.children, visit, concept.code);
  }
}

function collectOriginalStats(concepts) {
  const stats = {
    totalConcepts: 0,
    rootConcepts: 0,
    existingPropertyLines: 0,
    deprecatedProperties: 0,
    codes: []
  };

  traverseConcepts(concepts, (concept, parentCode) => {
    stats.totalConcepts += 1;
    stats.codes.push(concept.code);
    if (parentCode == null) {
      stats.rootConcepts += 1;
    }

    for (const entry of concept.propertyEntries) {
      stats.existingPropertyLines += entry.fields.length;
      if (getEntryValue(entry, 'code') === '#status' && getEntryValue(entry, 'valueCode') === '#deprecated') {
        stats.deprecatedProperties += 1;
      }
    }
  });

  return stats;
}

function findDuplicateCodes(codes) {
  const seen = new Set();
  const duplicates = new Set();

  for (const code of codes) {
    if (seen.has(code)) {
      duplicates.add(code);
    } else {
      seen.add(code);
    }
  }

  return Array.from(duplicates).sort();
}

function normalizeTopLevelPropertyDeclarations(lines) {
  const result = lines.slice();
  let blockStart = -1;
  let blockEnd = -1;

  for (let i = 0; i < result.length; i += 1) {
    if (isTopLevelPropertyLine(result[i])) {
      if (blockStart === -1) {
        blockStart = i;
      }
      blockEnd = i;
    } else if (blockStart !== -1) {
      break;
    }
  }

  const entries =
    blockStart === -1
      ? []
      : propertyEntriesFromLines(result.slice(blockStart, blockEnd + 1), 'CodeSystem');

  if (!findPropertyEntry(entries, '#parent')) {
    entries.push({
      fields: PARENT_PROPERTY_DECLARATION.map(field => ({ field: field.field, value: field.value }))
    });
  }

  const rendered = renderPropertyEntries(entries, '');

  if (blockStart === -1) {
    if (result.length > 0 && result[result.length - 1] !== '') {
      result.push('');
    }
    result.push(...rendered, '');
    return result;
  }

  result.splice(blockStart, blockEnd - blockStart + 1, ...rendered);
  return result;
}

function flattenConcepts(concepts) {
  const flatConcepts = [];

  traverseConcepts(concepts, (concept, parentCode) => {
    const originalPropertyEntries = cloneEntries(concept.propertyEntries);
    const propertyEntries = cloneEntries(concept.propertyEntries);

    if (parentCode != null) {
      const parentEntry = findPropertyEntry(propertyEntries, '#parent');
      if (parentEntry) {
        if (getEntryValue(parentEntry, 'valueCode') !== `#${parentCode}`) {
          fail(`Konzept ${concept.code} enthält bereits eine parent-Property mit falschem Parent.`);
        }
      } else {
        propertyEntries.push({
          fields: [
            { field: 'code', value: '#parent' },
            { field: 'valueCode', value: `#${parentCode}` }
          ]
        });
      }
    }

    flatConcepts.push({
      code: concept.code,
      conceptLine: concept.conceptLine,
      parentCode,
      originalPropertyEntries,
      propertyEntries
    });
  });

  return flatConcepts;
}

function validateFlattened(flatConcepts, originalStats) {
  const codes = flatConcepts.map(concept => concept.code);
  const duplicateCodes = findDuplicateCodes(codes);
  const codeSet = new Set(codes);
  const parentReferenceErrors = [];
  let conceptsWithParent = 0;
  let nestedConceptsRemain = false;

  for (const concept of flatConcepts) {
    if (/^\s/.test(concept.conceptLine)) {
      nestedConceptsRemain = true;
    }

    for (let i = 0; i < concept.originalPropertyEntries.length; i += 1) {
      const originalEntry = concept.originalPropertyEntries[i];
      const transformedEntry = concept.propertyEntries[i];
      if (!transformedEntry) {
        fail(`Bestehende Concept-Properties wurden für Konzept ${concept.code} entfernt.`);
      }

      if (
        JSON.stringify(normalizeEntry(originalEntry)) !== JSON.stringify(normalizeEntry(transformedEntry))
      ) {
        fail(`Bestehende Concept-Properties wurden für Konzept ${concept.code} verändert.`);
      }
    }

    if (concept.parentCode != null) {
      conceptsWithParent += 1;
      if (!codeSet.has(concept.parentCode)) {
        parentReferenceErrors.push(`${concept.code} -> ${concept.parentCode}`);
      }
    }

    const statusEntry = findPropertyEntry(concept.propertyEntries, '#status');
    const parentEntry = findPropertyEntry(concept.propertyEntries, '#parent');
    if (statusEntry && getEntryValue(statusEntry, 'valueCode') === '#deprecated') {
      if (!parentEntry || getEntryValue(parentEntry, 'valueCode') !== `#${concept.parentCode}`) {
        fail(
          `Deprecated-Konzept ${concept.code} enthält nach der Transformation nicht sowohl status=deprecated als auch parent=${concept.parentCode}.`
        );
      }
    }
  }

  const summary = {
    totalConceptsBefore: originalStats.totalConcepts,
    totalConceptsAfter: flatConcepts.length,
    rootConcepts: originalStats.rootConcepts,
    conceptsWithParent,
    propertyLinesPreserved: originalStats.existingPropertyLines,
    deprecatedProperties: originalStats.deprecatedProperties,
    duplicateCodes,
    parentReferenceErrors,
    nestedConceptsRemain
  };

  if (summary.totalConceptsAfter !== summary.totalConceptsBefore) {
    fail('Die Anzahl der Konzepte nach der Transformation stimmt nicht mit der Eingabe überein.');
  }

  if (summary.conceptsWithParent !== summary.totalConceptsAfter - summary.rootConcepts) {
    fail('Nicht jedes Nicht-Root-Konzept besitzt genau eine parent-Property.');
  }

  if (summary.duplicateCodes.length > 0) {
    fail(`Doppelte Concept-Codes gefunden: ${summary.duplicateCodes.join(', ')}`);
  }

  if (summary.parentReferenceErrors.length > 0) {
    fail(`Ungültige parent-Referenzen gefunden: ${summary.parentReferenceErrors.join('; ')}`);
  }

  if (summary.nestedConceptsRemain) {
    fail('Nach der Transformation sind noch eingerückte Konzeptzeilen vorhanden.');
  }

  return summary;
}

function renderFsh(before, flatConcepts, after) {
  const lines = normalizeTopLevelPropertyDeclarations(before);

  if (lines.length > 0 && lines[lines.length - 1] !== '') {
    lines.push('');
  }

  for (const concept of flatConcepts) {
    lines.push(concept.conceptLine);
    lines.push(...renderPropertyEntries(concept.propertyEntries, '  '));
  }

  if (after.length > 0) {
    if (lines.length > 0 && lines[lines.length - 1] !== '') {
      lines.push('');
    }
    lines.push(...after);
  }

  return `${lines.join('\n')}\n`;
}

function printSummary(summary) {
  console.log(`Anzahl Konzepte vorher: ${summary.totalConceptsBefore}`);
  console.log(`Anzahl Konzepte nachher: ${summary.totalConceptsAfter}`);
  console.log(`Anzahl Root-Konzepte: ${summary.rootConcepts}`);
  console.log(`Anzahl Konzepte mit parent: ${summary.conceptsWithParent}`);
  console.log(
    `Anzahl vorhandener/deprecated Properties, die erhalten wurden: ` +
      `${summary.propertyLinesPreserved}/${summary.deprecatedProperties}`
  );
  console.log(
    `Doppelte Concept-Codes: ${
      summary.duplicateCodes.length > 0 ? summary.duplicateCodes.join(', ') : 'nein'
    }`
  );
  console.log(
    `Alle parent.valueCode-Referenzen gültig: ${
      summary.parentReferenceErrors.length === 0 ? 'ja' : 'nein'
    }`
  );
  console.log(
    `Noch verschachtelte concept-Zeilen vorhanden: ${summary.nestedConceptsRemain ? 'ja' : 'nein'}`
  );
}

function main() {
  const [, , inputArg, outputArg] = process.argv;

  if (!inputArg || !outputArg) {
    usage();
    process.exit(1);
  }

  const inputPath = path.resolve(inputArg);
  const outputPath = path.resolve(outputArg);

  const input = readText(inputPath);
  const parsed = parseFsh(input);
  const originalStats = collectOriginalStats(parsed.concepts);
  const flatConcepts = flattenConcepts(parsed.concepts);
  const summary = validateFlattened(flatConcepts, originalStats);
  const output = renderFsh(parsed.before, flatConcepts, parsed.after);

  writeText(outputPath, output);
  printSummary(summary);
  console.log(`Ausgabe geschrieben nach: ${outputPath}`);
}

main();
