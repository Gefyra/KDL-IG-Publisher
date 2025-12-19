# Artifacts Summary - v2025.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ValueSet Klinische Dokumentenklassen-Liste (Version 2025)](ValueSet-kdl-vs-2025.md) | ValueSets sind Listen von Codes, die in einem bestimmten Kontext verwendet werden. Durch sog. &quot;Terminology-Binding&quot; können Attribute von FHIR-Ressourcen an ValueSets gebunden werden, um die Menge der zulässigen Werte für dieses Attribut einzuschränken. Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem &quot;KDL&quot; und ist für Bindings an Attribute geeignet, an denen alle Werte aus dem CodeSystem &quot;KDL&quot; erlaubt werden sollen. Beispiel: DocumentReference.type |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CodeSystem Klinische Dokumentenklassen-Liste (Version 2026)](CodeSystem-kdl-cs-2026.md) | Diese CodeSystem-Ressource definiert alle in der Klinischen Dokumentenklassen-Liste aktuell gültigen Codes. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [ConceptMap zur Übersetzung von KDL-Codes in IHE-XDS DocumentEntry.classCodes - Kontext: Archivierung, inkl. eVV](ConceptMap-kdl-ihe-classcode.md) | Diese Ressource dient als Grundlage für die Zuordnung von KDL-Codes zu IHE-XDS DocumentEntry.classCodes (gemäß Spezifikation von IHE Deutschland e.V., siehe http://www.ihe-d.de/projekte/xds-value-sets-fuer-deutschland/). Grundlage ist der ANWENDUNGSFALL: DIGITALE ARCHIVIERUNG, inkl. aktuelle Anforderungen des Anhangs zur Anlage 1 der eVV. Das Reviewergebnis - zu diesem Mappingkonzept - von der IHE-AG IHE-XDS ValueSets aus 2023 wurde berücksichtigt. |
| [ConceptMap zur Übersetzung von KDL-Codes in IHE-XDS DocumentEntry.typeCodes - Kontext: Archivierung, inkl. eVV](ConceptMap-kdl-ihe-typecode.md) | Diese Ressource dient als Grundlage für die Zuordnung von KDL-Codes zu IHE-XDS DocumentEntry.typeCodes (gemäß Spezifikation von IHE Deutschland e.V., siehe http://www.ihe-d.de/projekte/xds-value-sets-fuer-deutschland/). Grundlage ist der ANWENDUNGSFALL: DIGITALE ARCHIVIERUNG, inkl. aktuelle Anforderungen des Anhangs zur Anlage 1 der eVV. Das Reviewergebnis - zu diesem Mappingkonzept - von der IHE-AG IHE-XDS ValueSets aus 2023 wurde berücksichtigt. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [kdl-dokref-ex-1](DocumentReference-kdl-dokref-ex-1.md) | Epikrise |
| [kdl-dokref-ex-2](DocumentReference-kdl-dokref-ex-2.md) | Aufklärung - Anästhesie |

