# Artifacts Summary - Klinische Dokumentenklassen-Liste (KDL) v2026.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Dokumenten(typ)klassen Klinische Dokumentenklassen-Liste 2026](ValueSet-kdl.md) | ValueSets sind Listen von Codes, die in einem bestimmten Kontext verwendet werden. Durch sog. &quot;Terminology-Binding&quot; können Attribute von FHIR-Ressourcen an ValueSets gebunden werden, um die Menge der zulässigen Werte für dieses Attribut einzuschränken. Dieses ValueSet enthält nur Codes der Ebene 3 (Dokumenten(typ)klassen) aus dem CodeSystem &quot;KDL&quot; und ist für Bindings an Attribute geeignet, an denen ausschließlich Dokumentenklassen erlaubt werden sollen. Beispiel: DocumentReference.type |
| [Klinische Dokumentenklassen-Liste 2026](ValueSet-kdl-all.md) | Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem &quot;KDL&quot; (alle Hierarchieebenen). **Wichtig:** Dieses ValueSet sollte NICHT in Profilen verwendet werden! Zur Kodierung von Dokumententypen sollen ausschließlich Codes der Ebene 3 (Dokumenten(typ)klassen) verwendet werden. Verwenden Sie stattdessen das ValueSet &quot;ValueSetKDLEbene3&quot; für Bindings an Attribute wie DocumentReference.type. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CodeSystem Klinische Dokumentenklassen-Liste 2026](CodeSystem-kdl.md) | Die Klinische Dokumentenklassen-Liste (KDL) ist eine Entwicklung der anwendungsorientierten Forschung der DMI GmbH & Co. KG aus den Jahren 2013 – 2018 und basiert auf der Erfahrung aus der Indexierung von jährlich rund 4 Millionen Patientenakten mit 200 Millionen Dokumenten. Im Jahr 2018 ist die KDL für die Weiterentwicklung in den DVMD e. V. überführt wurden.Als Ergebnis dieser umfassenden Praxiserfahrung von Dokumenttyp-Benennungen deutscher Krankenhäuser leistet die KDL einen wichtigen Beitrag zur semantischen Interoperabilität in der Gesundheits-IT: Sie ermöglicht das Klassieren, also die Zuordnung, interner Dokumenttyp-Benennungen der Einrichtungen zu den Bezeichnungen bei Stakeholdern - und schafft so die Basis für den digitalen Austausch. Zu den zahlreichen potenziellen Stakeholdern in der Kommunikation - bei der Informationen aus Patientenakten eine Rolle spielen - zählen unter anderem Leistungspartner in der Behandlungskette, Kostenträger, der Medizinische Dienst, Behörden und der Patient.Die KDL ermöglicht eine einheitliche Bezeichnung der enorm vielfältigen Dokumententyp-Benennungen im täglichen Gebrauch. Sie stellt den Kern von Dokumententypen in einer medizinischen Einrichtung dar. Basis für die Liste sind die - von zwischenzeitlich über 300 Krankenhäusern aller Versorgungsstufen - vorhandenen Benennungen von Dokumenten (Bezeichnungen der papierbasierten und elektronischen Dokumentation) in einer Patientenakte. |

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

