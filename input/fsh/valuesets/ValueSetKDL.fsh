ValueSet: ValueSetKDL
Id: kdl-all
Title: "Klinische Dokumentenklassen-Liste 2026"
Description: "Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem &quot;KDL&quot; (alle Hierarchieebenen). **Wichtig:** Dieses ValueSet sollte NICHT in Profilen verwendet werden! Zur Kodierung von Dokumententypen sollen ausschließlich Codes der Ebene 3 (Dokumenten(typ)klassen) verwendet werden. Verwenden Sie stattdessen das ValueSet &quot;ValueSetKDLEbene3&quot; für Bindings an Attribute wie DocumentReference.type."
* insert DVMDAuthor
* insert EffectivePeriod

* ^meta.profile[+] = $shareablevalueset
* ^url = "http://dvmd.de/fhir/ValueSet/kdl-all"
* ^language = #de-DE
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^copyright = "2026 DVMD e.V."
* include codes from system KDL|2026.0.0
