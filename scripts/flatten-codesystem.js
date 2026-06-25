#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const PARENT_PROPERTY = {
  code: 'parent',
  uri: 'http://hl7.org/fhir/concept-properties#parent',
  description:
    'The concept identified in this property is a parent of the concept on which it is a property.',
  type: 'code'
};

function usage() {
  const scriptName = path.basename(process.argv[1] || 'flatten-codesystem.js');
  console.error(`Usage: node ${scriptName} <input.json> <output.json>`);
}

function fail(message) {
  console.error(`Error: ${message}`);
  process.exit(1);
}

function readJson(filePath) {
  let raw;
  try {
    raw = fs.readFileSync(filePath, 'utf8');
  } catch (error) {
    fail(`Konnte Eingabedatei nicht lesen: ${filePath}\n${error.message}`);
  }

  try {
    return JSON.parse(raw);
  } catch (error) {
    fail(`Ungültiges JSON in ${filePath}\n${error.message}`);
  }
}

function writeJson(filePath, data) {
  try {
    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    fs.writeFileSync(filePath, `${JSON.stringify(data, null, 2)}\n`, 'utf8');
  } catch (error) {
    fail(`Konnte Ausgabedatei nicht schreiben: ${filePath}\n${error.message}`);
  }
}

function deepClone(value) {
  return JSON.parse(JSON.stringify(value));
}

function normalizeInvisibleWhitespace(value) {
  if (typeof value === 'string') {
    return value.replace(/\u00A0/g, ' ');
  }

  if (Array.isArray(value)) {
    return value.map(normalizeInvisibleWhitespace);
  }

  if (value && typeof value === 'object') {
    const normalized = {};
    for (const [key, entry] of Object.entries(value)) {
      normalized[key] = normalizeInvisibleWhitespace(entry);
    }
    return normalized;
  }

  return value;
}

function countNestedConceptContainers(concepts) {
  if (!Array.isArray(concepts)) {
    return 0;
  }

  let nestedCount = 0;
  for (const concept of concepts) {
    if (Array.isArray(concept.concept) && concept.concept.length > 0) {
      nestedCount += 1;
      nestedCount += countNestedConceptContainers(concept.concept);
    }
  }
  return nestedCount;
}

function collectStats(concepts) {
  const stats = {
    totalConcepts: 0,
    withParent: 0,
    codes: [],
    conceptPropertiesExcludingParent: 0,
    deprecatedProperties: 0
  };

  function visit(list) {
    if (!Array.isArray(list)) {
      return;
    }

    for (const concept of list) {
      stats.totalConcepts += 1;
      stats.codes.push(concept.code);

      const properties = Array.isArray(concept.property) ? concept.property : [];
      let hasParentProperty = false;

      for (const property of properties) {
        if (property && property.code === 'parent') {
          hasParentProperty = true;
        } else {
          stats.conceptPropertiesExcludingParent += 1;
        }

        if (property && property.code === 'status' && property.valueCode === 'deprecated') {
          stats.deprecatedProperties += 1;
        }
      }

      if (hasParentProperty) {
        stats.withParent += 1;
      }

      visit(concept.concept);
    }
  }

  visit(concepts);
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

function ensureParentPropertyDeclaration(codeSystem) {
  if (!Array.isArray(codeSystem.property)) {
    codeSystem.property = [];
  }

  const existing = codeSystem.property.find(property => property && property.code === 'parent');
  if (!existing) {
    codeSystem.property.push(deepClone(PARENT_PROPERTY));
  }
}

function addParentProperty(flatConcept, parentCode) {
  if (parentCode == null) {
    return;
  }

  if (!Array.isArray(flatConcept.property)) {
    flatConcept.property = [];
  }

  const existingParentProperties = flatConcept.property.filter(
    property => property && property.code === 'parent'
  );

  if (existingParentProperties.length > 1) {
    fail(`Konzept ${flatConcept.code} enthält mehrere parent-Properties.`);
  }

  if (existingParentProperties.length === 1) {
    if (existingParentProperties[0].valueCode !== parentCode) {
      fail(
        `Konzept ${flatConcept.code} enthält bereits eine parent-Property mit valueCode ` +
          `${existingParentProperties[0].valueCode}, erwartet ${parentCode}.`
      );
    }
    return;
  }

  flatConcept.property.push({
    code: 'parent',
    valueCode: parentCode
  });
}

function flattenConcepts(concepts) {
  const flatConcepts = [];
  const stats = {
    rootConcepts: 0
  };

  function visit(list, parentCode) {
    if (!Array.isArray(list)) {
      return;
    }

    for (const concept of list) {
      if (parentCode == null) {
        stats.rootConcepts += 1;
      }

      const children = Array.isArray(concept.concept) ? concept.concept : [];
      const flatConcept = deepClone(concept);
      delete flatConcept.concept;

      addParentProperty(flatConcept, parentCode);
      flatConcepts.push(flatConcept);

      visit(children, concept.code);
    }
  }

  visit(concepts, null);
  return { flatConcepts, stats };
}

function validateCodeSystem(codeSystem) {
  if (!codeSystem || typeof codeSystem !== 'object') {
    fail('Eingabe ist kein JSON-Objekt.');
  }

  if (codeSystem.resourceType !== 'CodeSystem') {
    fail(`Erwartet resourceType "CodeSystem", gefunden: ${codeSystem.resourceType || '<leer>'}`);
  }

  if (!Array.isArray(codeSystem.concept)) {
    fail('CodeSystem.concept fehlt oder ist kein Array.');
  }
}

function validateParentReferences(flatConcepts) {
  const codes = new Set(flatConcepts.map(concept => concept.code));
  const missingReferences = [];

  for (const concept of flatConcepts) {
    const properties = Array.isArray(concept.property) ? concept.property : [];
    const statusDeprecated = properties.some(
      property => property && property.code === 'status' && property.valueCode === 'deprecated'
    );
    const parentProperty = properties.find(property => property && property.code === 'parent');

    if (parentProperty && !codes.has(parentProperty.valueCode)) {
      missingReferences.push(`${concept.code} -> ${parentProperty.valueCode}`);
    }

    if (statusDeprecated) {
      if (!parentProperty) {
        missingReferences.push(`${concept.code} -> <missing parent for deprecated concept>`);
      }
    }
  }

  return missingReferences;
}

function printSummary(summary) {
  console.log(`Anzahl Konzepte vorher: ${summary.before.totalConcepts}`);
  console.log(`Anzahl Konzepte nachher: ${summary.after.totalConcepts}`);
  console.log(`Anzahl Root-Konzepte: ${summary.rootConcepts}`);
  console.log(`Anzahl Konzepte mit parent: ${summary.after.withParent}`);
  console.log(
    `Anzahl vorhandener/deprecated Properties, die erhalten wurden: ` +
      `${summary.after.conceptPropertiesExcludingParent}/${summary.after.deprecatedProperties}`
  );
  console.log(
    `Doppelte Concept-Codes: ${
      summary.duplicateCodes.length > 0 ? summary.duplicateCodes.join(', ') : 'nein'
    }`
  );
  console.log(
    `Alle parent.valueCode-Referenzen gültig: ${
      summary.missingParentReferences.length === 0 ? 'ja' : 'nein'
    }`
  );
  console.log(
    `Verschachtelte concept.concept nach Transformation vorhanden: ${
      summary.remainingNestedConcepts === 0 ? 'nein' : 'ja'
    }`
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

  const input = readJson(inputPath);
  validateCodeSystem(input);

  const originalConcepts = input.concept;
  const originalStats = collectStats(originalConcepts);

  const transformed = deepClone(input);
  ensureParentPropertyDeclaration(transformed);
  delete transformed.text;

  const { flatConcepts, stats: flattenStats } = flattenConcepts(originalConcepts);
  transformed.concept = flatConcepts;
  const normalizedTransformed = normalizeInvisibleWhitespace(transformed);

  const transformedStats = collectStats(normalizedTransformed.concept);
  const duplicateCodes = findDuplicateCodes(transformedStats.codes);
  const missingParentReferences = validateParentReferences(normalizedTransformed.concept);
  const remainingNestedConcepts = countNestedConceptContainers(normalizedTransformed.concept);
  const parentDeclarationCount = Array.isArray(normalizedTransformed.property)
    ? normalizedTransformed.property.filter(property => property && property.code === 'parent').length
    : 0;

  const summary = {
    before: originalStats,
    after: transformedStats,
    rootConcepts: flattenStats.rootConcepts,
    duplicateCodes,
    missingParentReferences,
    remainingNestedConcepts
  };

  printSummary(summary);

  if (transformedStats.totalConcepts !== originalStats.totalConcepts) {
    fail('Die Anzahl der Konzepte nach der Transformation stimmt nicht mit der Eingabe überein.');
  }

  if (transformedStats.withParent !== transformedStats.totalConcepts - summary.rootConcepts) {
    fail('Nicht jedes Nicht-Root-Konzept besitzt genau eine parent-Property.');
  }

  if (summary.rootConcepts !== transformedStats.totalConcepts - transformedStats.withParent) {
    fail('Die Anzahl der Root-Konzepte ist nach der Transformation inkonsistent.');
  }

  if (
    transformedStats.conceptPropertiesExcludingParent !==
    originalStats.conceptPropertiesExcludingParent
  ) {
    fail('Bestehende Concept-Properties wurden nicht unverändert erhalten.');
  }

  if (transformedStats.deprecatedProperties !== originalStats.deprecatedProperties) {
    fail('Deprecated-Properties wurden nicht vollständig erhalten.');
  }

  if (duplicateCodes.length > 0) {
    fail(`Doppelte Concept-Codes gefunden: ${duplicateCodes.join(', ')}`);
  }

  if (missingParentReferences.length > 0) {
    fail(
      `Ungültige parent.valueCode-Referenzen gefunden: ${missingParentReferences.join('; ')}`
    );
  }

  if (remainingNestedConcepts > 0) {
    fail('Nach der Transformation sind noch verschachtelte concept.concept-Elemente vorhanden.');
  }

  if (parentDeclarationCount !== 1) {
    fail(`CodeSystem.property enthält parent ${parentDeclarationCount} Mal statt genau 1 Mal.`);
  }

  writeJson(outputPath, normalizedTransformed);
  console.log(`Ausgabe geschrieben nach: ${outputPath}`);
}

main();
