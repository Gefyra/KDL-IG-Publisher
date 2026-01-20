ValueSet: ValueSetKDL
Id: kdl-vs-2026
Title: "ValueSet Klinische Dokumentenklassen-Liste (Version 2025)"
Description: "ValueSets sind Listen von Codes, die in einem bestimmten Kontext verwendet werden. Durch sog. &quot;Terminology-Binding&quot; können Attribute von FHIR-Ressourcen an ValueSets gebunden werden, um die Menge der zulässigen Werte für dieses Attribut einzuschränken.  Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem &quot;KDL&quot; und ist für Bindings an Attribute geeignet, an denen alle Werte aus dem CodeSystem &quot;KDL&quot; erlaubt werden sollen.  Beispiel: DocumentReference.type"
* ^url = "http://dvmd.de/fhir/ValueSet/kdl"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.276.0.76.11.469"
* ^version = "2026"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* ^contact[0].name = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "dvmd@dvmd.de"
* ^contact[=].telecom[+].system = #url
* ^contact[=].telecom[=].value = "https://www.dvmd.de"
* ^contact[+].name = "Leitung der Arbeitsgruppe: Annett Müller, M.A. Health Information Management"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "mueller@dvmd.de"
* ^contact[=].telecom[+].system = #url
* ^contact[=].telecom[=].value = "https://dvmd.de/publikationen/kdl/"
* ^copyright = "2026 DVMD e.V."
* include codes from system CodeSystemKDL where child exists false
// * ^expansion.timestamp = "2026-01-01"
// * ^expansion.contains[0].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010101
// * ^expansion.contains[=].display = "Ärztliche Stellungnahme"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010102
// * ^expansion.contains[=].display = "Durchgangsarztbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010103
// * ^expansion.contains[=].display = "Entlassungsbericht intern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010104
// * ^expansion.contains[=].display = "Entlassungsbericht extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010105
// * ^expansion.contains[=].display = "Reha-Bericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010106
// * ^expansion.contains[=].display = "Verlegungsbericht intern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010107
// * ^expansion.contains[=].display = "Verlegungsbericht extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010108
// * ^expansion.contains[=].display = "Vorläufiger Arztbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010109
// * ^expansion.contains[=].display = "Ärztlicher Befundbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010110
// * ^expansion.contains[=].display = "Ärztlicher Verlaufsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010111
// * ^expansion.contains[=].display = "Ambulanzbrief"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010112
// * ^expansion.contains[=].display = "Kurzarztbrief"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010113
// * ^expansion.contains[=].display = "Nachschaubericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010114
// * ^expansion.contains[=].display = "Interventionsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010115
// * ^expansion.contains[=].display = "Entlassungsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010116
// * ^expansion.contains[=].display = "Verlegungsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD010199
// * ^expansion.contains[=].display = "Sonstiger Arztbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020101
// * ^expansion.contains[=].display = "Arbeitsunfähigkeitsbescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020102
// * ^expansion.contains[=].display = "Beurlaubung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020103
// * ^expansion.contains[=].display = "Todesbescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020104
// * ^expansion.contains[=].display = "Ärztliche Bescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020105
// * ^expansion.contains[=].display = "Notfall-/Vertretungsschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020106
// * ^expansion.contains[=].display = "Wiedereingliederungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020107
// * ^expansion.contains[=].display = "Aufenthaltsbescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020108
// * ^expansion.contains[=].display = "Geburtsanzeige"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020199
// * ^expansion.contains[=].display = "Sonstige Bescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020201
// * ^expansion.contains[=].display = "Anatomische Skizze"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020202
// * ^expansion.contains[=].display = "Befundbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020203
// * ^expansion.contains[=].display = "Bericht Gesundheitsuntersuchung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020204
// * ^expansion.contains[=].display = "Krebsfrüherkennung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020205
// * ^expansion.contains[=].display = "Messblatt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020206
// * ^expansion.contains[=].display = "Belastungserprobung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020207
// * ^expansion.contains[=].display = "Ärztlicher Fragebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020208
// * ^expansion.contains[=].display = "Befund extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD020299
// * ^expansion.contains[=].display = "Sonstige ärztliche Befunderhebung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060101
// * ^expansion.contains[=].display = "Konsilanforderung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060102
// * ^expansion.contains[=].display = "Konsilanmeldung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060103
// * ^expansion.contains[=].display = "Konsilbericht intern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060104
// * ^expansion.contains[=].display = "Konsilbericht extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060105
// * ^expansion.contains[=].display = "Visitenprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060106
// * ^expansion.contains[=].display = "Tumorkonferenzprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060107
// * ^expansion.contains[=].display = "Teambesprechungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060108
// * ^expansion.contains[=].display = "Anordnung/Verordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060109
// * ^expansion.contains[=].display = "Verordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060110
// * ^expansion.contains[=].display = "Konsilbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AD060199
// * ^expansion.contains[=].display = "Sonstige Fallbesprechung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010101
// * ^expansion.contains[=].display = "Übersicht abrechnungsrelevanter Diagnosen / Prozeduren"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010102
// * ^expansion.contains[=].display = "G-AEP Kriterien"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010103
// * ^expansion.contains[=].display = "Kostenübernahmeverlängerung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010104
// * ^expansion.contains[=].display = "Schriftverkehr MD Kasse"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010105
// * ^expansion.contains[=].display = "Abrechnungsschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010106
// * ^expansion.contains[=].display = "Rechnung ambulante/stationäre Behandlung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010107
// * ^expansion.contains[=].display = "MD Prüfauftrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010108
// * ^expansion.contains[=].display = "MD Gutachten"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010109
// * ^expansion.contains[=].display = "Begründete Unterlagen Leistungskodierung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010110
// * ^expansion.contains[=].display = "Heil- und Kostenplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010111
// * ^expansion.contains[=].display = "Kostenvoranschlag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010199
// * ^expansion.contains[=].display = "Sonstige Abrechnungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010201
// * ^expansion.contains[=].display = "Antrag auf Rehabilitation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010202
// * ^expansion.contains[=].display = "Antrag auf Betreuung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010203
// * ^expansion.contains[=].display = "Antrag auf gesetzliche Unterbringung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010204
// * ^expansion.contains[=].display = "Verlängerungsantrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010205
// * ^expansion.contains[=].display = "Antrag auf Psychotherapie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010206
// * ^expansion.contains[=].display = "Antrag auf Pflegeeinstufung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010207
// * ^expansion.contains[=].display = "Kostenübernahmeantrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010208
// * ^expansion.contains[=].display = "Antrag auf Leistungen der Pflegeversicherung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010209
// * ^expansion.contains[=].display = "Antrag auf Kurzzeitpflege"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010210
// * ^expansion.contains[=].display = "Antrag auf Fixierung/Isolierung beim Amtsgericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010211
// * ^expansion.contains[=].display = "Antrag abrechnungsrelevante OPS-Kodes"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010299
// * ^expansion.contains[=].display = "Sonstiger Antrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010301
// * ^expansion.contains[=].display = "Anästhesieaufklärungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010302
// * ^expansion.contains[=].display = "Diagnostischer Aufklärungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010303
// * ^expansion.contains[=].display = "Operationsaufklärungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010304
// * ^expansion.contains[=].display = "Aufklärungsbogen Therapie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM010399
// * ^expansion.contains[=].display = "Sonstiger Aufklärungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM030101
// * ^expansion.contains[=].display = "Aktenlaufzettel"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM030102
// * ^expansion.contains[=].display = "Checkliste Entlassung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM030103
// * ^expansion.contains[=].display = "Entlassungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM030104
// * ^expansion.contains[=].display = "Patientenlaufzettel"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM030199
// * ^expansion.contains[=].display = "Sonstige Checkliste Administration"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050101
// * ^expansion.contains[=].display = "Datenschutzerklärung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050102
// * ^expansion.contains[=].display = "Einverständniserklärung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050103
// * ^expansion.contains[=].display = "Erklärung Nichtansprechbarkeit Patienten"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050104
// * ^expansion.contains[=].display = "Einverständniserklärung Abrechnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050105
// * ^expansion.contains[=].display = "Einverständniserklärung Behandlung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050106
// * ^expansion.contains[=].display = "Einwilligung und Datenschutzerklärung Entlassungsmanagement"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050107
// * ^expansion.contains[=].display = "Schweigepflichtentbindung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050108
// * ^expansion.contains[=].display = "Entlassung gegen ärztlichen Rat"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050109
// * ^expansion.contains[=].display = "Aufforderung zur Herausgabe der medizinischen Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050110
// * ^expansion.contains[=].display = "Aufforderung zur Löschung der medizinischen Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050111
// * ^expansion.contains[=].display = "Aufforderung zur Berichtigung der medizinischen Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM050199
// * ^expansion.contains[=].display = "Sonstige Einwilligung/Erklärung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160101
// * ^expansion.contains[=].display = "Blutgruppenausweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160102
// * ^expansion.contains[=].display = "Impfausweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160103
// * ^expansion.contains[=].display = "Vorsorgevollmacht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160104
// * ^expansion.contains[=].display = "Patientenverfügung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160105
// * ^expansion.contains[=].display = "Wertgegenständeverwaltung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160106
// * ^expansion.contains[=].display = "Allergiepass"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160107
// * ^expansion.contains[=].display = "Herzschrittmacherausweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160108
// * ^expansion.contains[=].display = "Nachlassprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160109
// * ^expansion.contains[=].display = "Mutterpass (Kopie)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160110
// * ^expansion.contains[=].display = "Ausweiskopie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160111
// * ^expansion.contains[=].display = "Implantat-Ausweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160112
// * ^expansion.contains[=].display = "Betreuerausweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160113
// * ^expansion.contains[=].display = "Patientenbild"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160199
// * ^expansion.contains[=].display = "Sonstiges patienteneigenes Dokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160201
// * ^expansion.contains[=].display = "Belehrung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160202
// * ^expansion.contains[=].display = "Informationsblatt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160203
// * ^expansion.contains[=].display = "Informationsblatt Entlassungsmanagement"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160299
// * ^expansion.contains[=].display = "Sonstiges Patienteninformationsblatt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160301
// * ^expansion.contains[=].display = "Heil- / Hilfsmittelverordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160302
// * ^expansion.contains[=].display = "Krankentransportschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160303
// * ^expansion.contains[=].display = "Verordnung häusliche Krankenpflege"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM160399
// * ^expansion.contains[=].display = "Sonstige poststationäre Verordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170101
// * ^expansion.contains[=].display = "Dokumentationsbogen Meldepflicht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170102
// * ^expansion.contains[=].display = "Hygienestandard"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170103
// * ^expansion.contains[=].display = "Patientenfragebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170104
// * ^expansion.contains[=].display = "Pflegestandard"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170105
// * ^expansion.contains[=].display = "Qualitätssicherungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM170199
// * ^expansion.contains[=].display = "Sonstiges Qualitätssicherungsdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190101
// * ^expansion.contains[=].display = "Anforderung Unterlagen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190102
// * ^expansion.contains[=].display = "Schriftverkehr Amtsgericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190103
// * ^expansion.contains[=].display = "Schriftverkehr MD Arzt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190104
// * ^expansion.contains[=].display = "Schriftverkehr Krankenkasse"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190105
// * ^expansion.contains[=].display = "Schriftverkehr Deutsche Rentenversicherung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190106
// * ^expansion.contains[=].display = "Sendebericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190107
// * ^expansion.contains[=].display = "Empfangsbestätigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190108
// * ^expansion.contains[=].display = "Handschriftliche Notiz"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190109
// * ^expansion.contains[=].display = "Lieferschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190110
// * ^expansion.contains[=].display = "Schriftverkehr Amt/Gericht/Anwalt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190111
// * ^expansion.contains[=].display = "Schriftverkehr Strafverfolgung und Schadensersatz"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190112
// * ^expansion.contains[=].display = "Anforderung Unterlagen MD"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190113
// * ^expansion.contains[=].display = "Widerspruchsbegründung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190114
// * ^expansion.contains[=].display = "Schriftverkehr Unfallversicherungsträger und Leistungserbringer"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190199
// * ^expansion.contains[=].display = "Sonstiger Schriftverkehr"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190201
// * ^expansion.contains[=].display = "Beratungsbogen Sozialer Dienst"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190202
// * ^expansion.contains[=].display = "Soziotherapeutischer Betreuungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190203
// * ^expansion.contains[=].display = "Einschätzung Sozialdienst"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190204
// * ^expansion.contains[=].display = "Abschlussbericht Sozialdienst"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM190299
// * ^expansion.contains[=].display = "Sonstiges Dokument Sozialdienst"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM220101
// * ^expansion.contains[=].display = "Behandlungsvertrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM220102
// * ^expansion.contains[=].display = "Wahlleistungsvertrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM220103
// * ^expansion.contains[=].display = "Heimvertrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM220104
// * ^expansion.contains[=].display = "Angaben zur Vergütung von Mitarbeitenden"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AM220199
// * ^expansion.contains[=].display = "Sonstiger Vertrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010101
// * ^expansion.contains[=].display = "Anamnesebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010102
// * ^expansion.contains[=].display = "Anmeldung Aufnahme"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010103
// * ^expansion.contains[=].display = "Aufnahmebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010104
// * ^expansion.contains[=].display = "Checkliste Aufnahme"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010105
// * ^expansion.contains[=].display = "Stammblatt"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU010199
// * ^expansion.contains[=].display = "Sonstige Aufnahmedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU050101
// * ^expansion.contains[=].display = "Verordnung von Krankenhausbehandlung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU050102
// * ^expansion.contains[=].display = "Überweisungsschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU050103
// * ^expansion.contains[=].display = "Überweisungsschein Entlassung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU050104
// * ^expansion.contains[=].display = "Verlegungsschein Intern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU050199
// * ^expansion.contains[=].display = "Sonstiges Einweisungs-/Überweisungsdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190101
// * ^expansion.contains[=].display = "Einsatzprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190102
// * ^expansion.contains[=].display = "Notaufnahmebericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190103
// * ^expansion.contains[=].display = "Notaufnahmebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190104
// * ^expansion.contains[=].display = "Notfalldatensatz"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190105
// * ^expansion.contains[=].display = "ISAR Screening"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #AU190199
// * ^expansion.contains[=].display = "Sonstige Dokumentation Rettungsstelle"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020101
// * ^expansion.contains[=].display = "Anforderung bildgebende Diagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020102
// * ^expansion.contains[=].display = "Angiographiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020103
// * ^expansion.contains[=].display = "CT-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020104
// * ^expansion.contains[=].display = "Echokardiographiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020105
// * ^expansion.contains[=].display = "Endoskopiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020106
// * ^expansion.contains[=].display = "Herzkatheterprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020107
// * ^expansion.contains[=].display = "MRT-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020108
// * ^expansion.contains[=].display = "OCT-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020109
// * ^expansion.contains[=].display = "PET-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020110
// * ^expansion.contains[=].display = "Röntgenbefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020111
// * ^expansion.contains[=].display = "Sonographiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020112
// * ^expansion.contains[=].display = "SPECT-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020113
// * ^expansion.contains[=].display = "Szintigraphiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020114
// * ^expansion.contains[=].display = "Mammographiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020115
// * ^expansion.contains[=].display = "Checkliste bildgebende Diagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG020199
// * ^expansion.contains[=].display = "Sonstige Dokumentation bildgebende Diagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060101
// * ^expansion.contains[=].display = "Anforderung Funktionsdiagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060102
// * ^expansion.contains[=].display = "Audiometriebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060103
// * ^expansion.contains[=].display = "Befund evozierter Potentiale"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060104
// * ^expansion.contains[=].display = "Blutdruckprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060105
// * ^expansion.contains[=].display = "CTG-Ausdruck"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060106
// * ^expansion.contains[=].display = "Dokumentationsbogen Feststellung Hirntod"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060107
// * ^expansion.contains[=].display = "Dokumentationsbogen Herzschrittmacherkontrolle"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060108
// * ^expansion.contains[=].display = "Dokumentationsbogen Lungenfunktionsprüfung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060109
// * ^expansion.contains[=].display = "EEG-Auswertung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060110
// * ^expansion.contains[=].display = "EMG-Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060111
// * ^expansion.contains[=].display = "EKG-Auswertung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060112
// * ^expansion.contains[=].display = "Manometriebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060113
// * ^expansion.contains[=].display = "Messungsprotokoll Augeninnendruck"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060114
// * ^expansion.contains[=].display = "Neurographiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060115
// * ^expansion.contains[=].display = "Rhinometriebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060116
// * ^expansion.contains[=].display = "Schlaflabordokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060117
// * ^expansion.contains[=].display = "Schluckuntersuchung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060118
// * ^expansion.contains[=].display = "Checkliste Funktionsdiagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060119
// * ^expansion.contains[=].display = "Ergometriebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060120
// * ^expansion.contains[=].display = "Kipptischuntersuchung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060121
// * ^expansion.contains[=].display = "Augenuntersuchung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060122
// * ^expansion.contains[=].display = "Dokumentationsbogen ICD-Kontrolle"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060123
// * ^expansion.contains[=].display = "Zystometrie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060124
// * ^expansion.contains[=].display = "Uroflowmetrie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060199
// * ^expansion.contains[=].display = "Sonstige Dokumentation Funktionsdiagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060201
// * ^expansion.contains[=].display = "Schellong Test"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060202
// * ^expansion.contains[=].display = "H2 Atemtest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060203
// * ^expansion.contains[=].display = "Allergietest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060204
// * ^expansion.contains[=].display = "Zahlenverbindungstest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060205
// * ^expansion.contains[=].display = "6-Minuten-Gehtest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060209
// * ^expansion.contains[=].display = "Sonstige Funktionstests"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #DG060299
// * ^expansion.contains[=].display = "Sonstiger Funktionstest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED010199
// * ^expansion.contains[=].display = "Sonstige Audiodokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED020101
// * ^expansion.contains[=].display = "Fotodokumentation Operation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED020102
// * ^expansion.contains[=].display = "Fotodokumentation Dermatologie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED020103
// * ^expansion.contains[=].display = "Fotodokumentation Diagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED020104
// * ^expansion.contains[=].display = "Videodokumentation Operation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED020199
// * ^expansion.contains[=].display = "Foto-/Videodokumentation Sonstige"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110101
// * ^expansion.contains[=].display = "Behandlungspfad"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110102
// * ^expansion.contains[=].display = "Notfalldatenmanagement (NFDM)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110103
// * ^expansion.contains[=].display = "Medikationsplan elektronisch (eMP)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110104
// * ^expansion.contains[=].display = "eArztbrief"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110105
// * ^expansion.contains[=].display = "eImpfpass"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110106
// * ^expansion.contains[=].display = "eZahnärztliches Bonusheft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110107
// * ^expansion.contains[=].display = "eArbeitsunfähigkeitsbescheinigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110108
// * ^expansion.contains[=].display = "eRezept"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110109
// * ^expansion.contains[=].display = "Pflegebericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110110
// * ^expansion.contains[=].display = "eDMP"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110111
// * ^expansion.contains[=].display = "eMutterpass"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110112
// * ^expansion.contains[=].display = "KH-Entlassbrief"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110113
// * ^expansion.contains[=].display = "U-Heft Untersuchungen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110114
// * ^expansion.contains[=].display = "U-Heft Teilnahmekarte"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110115
// * ^expansion.contains[=].display = "U-Heft Elternnotiz"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110116
// * ^expansion.contains[=].display = "Überleitungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED110199
// * ^expansion.contains[=].display = "Sonstige Dokumentation KIS"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190101
// * ^expansion.contains[=].display = "E-Mail Befundauskunft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190102
// * ^expansion.contains[=].display = "E-Mail Juristische Beweissicherung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190103
// * ^expansion.contains[=].display = "E-Mail Arztauskunft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190104
// * ^expansion.contains[=].display = "E-Mail Sonstige"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190105
// * ^expansion.contains[=].display = "Fax Befundauskunft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190106
// * ^expansion.contains[=].display = "Fax Juristische Beweissicherung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190107
// * ^expansion.contains[=].display = "Fax Arztauskunft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190108
// * ^expansion.contains[=].display = "Fax Sonstige"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #ED190199
// * ^expansion.contains[=].display = "Sonstiger elektronischer Schriftverkehr"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB020101
// * ^expansion.contains[=].display = "Blutgasanalyse"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB020102
// * ^expansion.contains[=].display = "Blutkulturenbefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB020103
// * ^expansion.contains[=].display = "Herstellungs- und Prüfprotokoll von Blut und Blutprodukten"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB020104
// * ^expansion.contains[=].display = "Serologischer Befund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB020199
// * ^expansion.contains[=].display = "Sonstige Dokumentation Blut"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120101
// * ^expansion.contains[=].display = "Glukosetoleranztestprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120102
// * ^expansion.contains[=].display = "Laborbefund extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120103
// * ^expansion.contains[=].display = "Laborbefund intern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120104
// * ^expansion.contains[=].display = "Anforderung Labor"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120105
// * ^expansion.contains[=].display = "Überweisungsschein Labor"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120106
// * ^expansion.contains[=].display = "Hämatologisches Speziallabor"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120107
// * ^expansion.contains[=].display = "Laborbefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB120199
// * ^expansion.contains[=].display = "Sonstiger Laborbefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB130101
// * ^expansion.contains[=].display = "Mikrobiologiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB130102
// * ^expansion.contains[=].display = "Urinbefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB220101
// * ^expansion.contains[=].display = "Befund über positive Infektionsmarker"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #LB220102
// * ^expansion.contains[=].display = "Virologiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010101
// * ^expansion.contains[=].display = "Intraoperative Anästhesiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010102
// * ^expansion.contains[=].display = "Aufwachraumprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010103
// * ^expansion.contains[=].display = "Checkliste Anästhesie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010104
// * ^expansion.contains[=].display = "Präoperative Anästhesiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010105
// * ^expansion.contains[=].display = "Postoperative Anästhesiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP010199
// * ^expansion.contains[=].display = "Sonstige Anästhesiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150101
// * ^expansion.contains[=].display = "Chargendokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150102
// * ^expansion.contains[=].display = "OP-Anmeldungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150103
// * ^expansion.contains[=].display = "OP-Bericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150104
// * ^expansion.contains[=].display = "OP-Bilddokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150105
// * ^expansion.contains[=].display = "OP-Checkliste"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150106
// * ^expansion.contains[=].display = "OP-Protokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150107
// * ^expansion.contains[=].display = "Postoperative Verordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150108
// * ^expansion.contains[=].display = "OP-Zählprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150109
// * ^expansion.contains[=].display = "Dokumentation ambulantes Operieren"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP150199
// * ^expansion.contains[=].display = "Sonstige OP-Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP200101
// * ^expansion.contains[=].display = "Transplantationsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP200102
// * ^expansion.contains[=].display = "Spenderdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #OP200199
// * ^expansion.contains[=].display = "Sonstige Transplantationsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT080101
// * ^expansion.contains[=].display = "Histologieanforderung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT080102
// * ^expansion.contains[=].display = "Histologiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT130101
// * ^expansion.contains[=].display = "Molekularpathologieanforderung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT130102
// * ^expansion.contains[=].display = "Molekularpathologiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT230199
// * ^expansion.contains[=].display = "Sonstige pathologische Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT260101
// * ^expansion.contains[=].display = "Zytologieanforderung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #PT260102
// * ^expansion.contains[=].display = "Zytologiebefund"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070101
// * ^expansion.contains[=].display = "Geburtenbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070102
// * ^expansion.contains[=].display = "Geburtenprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070103
// * ^expansion.contains[=].display = "Geburtenverlaufskurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070104
// * ^expansion.contains[=].display = "Neugeborenenscreening"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070105
// * ^expansion.contains[=].display = "Partogramm"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070106
// * ^expansion.contains[=].display = "Wiegekarte"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070107
// * ^expansion.contains[=].display = "Neugeborenendokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070108
// * ^expansion.contains[=].display = "Säuglingskurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070109
// * ^expansion.contains[=].display = "Geburtenbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070110
// * ^expansion.contains[=].display = "Perzentilkurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070111
// * ^expansion.contains[=].display = "Entnahme Nabelschnurblut"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070112
// * ^expansion.contains[=].display = "Datenblatt für den Pädiater"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070199
// * ^expansion.contains[=].display = "Sonstige Geburtendokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070201
// * ^expansion.contains[=].display = "Barthel Index"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070202
// * ^expansion.contains[=].display = "Dem Tect"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070203
// * ^expansion.contains[=].display = "ISAR Screening"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070204
// * ^expansion.contains[=].display = "Sturzrisikoerfassungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070205
// * ^expansion.contains[=].display = "Geriatrische Depressionsskala"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070206
// * ^expansion.contains[=].display = "Geriatrische Assessmentdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070207
// * ^expansion.contains[=].display = "Mobilitätstest nach Tinetti"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070208
// * ^expansion.contains[=].display = "Timed Up and Go Test"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD070299
// * ^expansion.contains[=].display = "Sonstiges geriatrisches Dokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110101
// * ^expansion.contains[=].display = "Geriatrische Komplexbehandlungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110102
// * ^expansion.contains[=].display = "Intensivmedizinische Komplexbehandlungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110103
// * ^expansion.contains[=].display = "MRE/Nicht-MRE Komplexbehandlung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110104
// * ^expansion.contains[=].display = "Neurologische Komplexbehandlungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110105
// * ^expansion.contains[=].display = "Palliativmedizinische Komplexbehandlungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110106
// * ^expansion.contains[=].display = "PKMS-Dokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110107
// * ^expansion.contains[=].display = "Dokumentation COVID"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD110199
// * ^expansion.contains[=].display = "Sonstige Komplexbehandlungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD130101
// * ^expansion.contains[=].display = "Vertrag Maßregelvollzug"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD130102
// * ^expansion.contains[=].display = "Antrag Maßregelvollzug"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD130103
// * ^expansion.contains[=].display = "Schriftverkehr Maßregelvollzug"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD130104
// * ^expansion.contains[=].display = "Einwilligung/Einverständniserklärung Maßregelvollzug"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD130199
// * ^expansion.contains[=].display = "Sonstiges Maßregelvollzugdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD150101
// * ^expansion.contains[=].display = "Follow up-Bogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD150102
// * ^expansion.contains[=].display = "Meldebogen Krebsregister"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD150103
// * ^expansion.contains[=].display = "Tumorkonferenzprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD150104
// * ^expansion.contains[=].display = "Tumorlokalisationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD150199
// * ^expansion.contains[=].display = "Sonstiger onkologischer Dokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160101
// * ^expansion.contains[=].display = "Patientenaufzeichnungen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160102
// * ^expansion.contains[=].display = "Testpsychologische Diagnostik"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160103
// * ^expansion.contains[=].display = "Psychiatrisch-psychotherapeutische Therapieanordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160104
// * ^expansion.contains[=].display = "Psychiatrisch-psychotherapeutische Therapiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160105
// * ^expansion.contains[=].display = "Psychiatrisch-psychotherapeutischer Verlaufsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160106
// * ^expansion.contains[=].display = "Spezialtherapeutische Verlaufsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160107
// * ^expansion.contains[=].display = "Therapieeinheiten Ärzte/Psychologen/Spezialtherapeuten"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160108
// * ^expansion.contains[=].display = "1:1 Betreuung/Einzelbetreuung/Psychiatrische Intensivbehandlung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160109
// * ^expansion.contains[=].display = "Checkliste für die Unterbringung psychisch Kranker"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160110
// * ^expansion.contains[=].display = "Dokumentation Verhaltensanalyse"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160111
// * ^expansion.contains[=].display = "Dokumentation Depression"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160112
// * ^expansion.contains[=].display = "Dokumentation Stationsäquivalente Behandlung (StäB)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SD160199
// * ^expansion.contains[=].display = "Sonstiges psychiatrisch-psychotherapeutisches Dokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF060101
// * ^expansion.contains[=].display = "Forschungsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF060199
// * ^expansion.contains[=].display = "Sonstige Forschungsdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190101
// * ^expansion.contains[=].display = "CRF-Bogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190102
// * ^expansion.contains[=].display = "Einwilligung Studie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190103
// * ^expansion.contains[=].display = "Protokoll Ein- und Ausschlusskriterien"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190104
// * ^expansion.contains[=].display = "Prüfplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190105
// * ^expansion.contains[=].display = "SOP-Bogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190106
// * ^expansion.contains[=].display = "Studienbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #SF190199
// * ^expansion.contains[=].display = "Sonstige Studiendokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020101
// * ^expansion.contains[=].display = "Bestrahlungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020102
// * ^expansion.contains[=].display = "Bestrahlungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020103
// * ^expansion.contains[=].display = "Bestrahlungsverordnung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020104
// * ^expansion.contains[=].display = "Radiojodtherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020105
// * ^expansion.contains[=].display = "Therapieprotokoll mit Radionukliden"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH020199
// * ^expansion.contains[=].display = "Sonstiges Bestrahlungstherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060101
// * ^expansion.contains[=].display = "Ergotherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060102
// * ^expansion.contains[=].display = "Logopädieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060103
// * ^expansion.contains[=].display = "Physiotherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060104
// * ^expansion.contains[=].display = "Anforderung Funktionstherapie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060105
// * ^expansion.contains[=].display = "Elektrokonvulsionstherapie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060106
// * ^expansion.contains[=].display = "Transkranielle Magnetstimulation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH060199
// * ^expansion.contains[=].display = "Sonstiges Funktionstherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130101
// * ^expansion.contains[=].display = "Anforderung Medikation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130102
// * ^expansion.contains[=].display = "Arzneiadministration"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130103
// * ^expansion.contains[=].display = "Chemotherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130104
// * ^expansion.contains[=].display = "Hormontherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130105
// * ^expansion.contains[=].display = "Medikamentenplan extern"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130106
// * ^expansion.contains[=].display = "Medikamentenplan intern/extern (mit BTM)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130107
// * ^expansion.contains[=].display = "Medikationsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130108
// * ^expansion.contains[=].display = "Rezept"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130109
// * ^expansion.contains[=].display = "Schmerztherapieprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130110
// * ^expansion.contains[=].display = "Prämedikationsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130111
// * ^expansion.contains[=].display = "Lyse Dokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH130199
// * ^expansion.contains[=].display = "Sonstiges Dokument medikamentöser Therapie"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH160101
// * ^expansion.contains[=].display = "Protokoll Ernährungsberatung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH160102
// * ^expansion.contains[=].display = "Apotheke Patientenberatung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH160199
// * ^expansion.contains[=].display = "Sonstiges Protokoll Patientenschulung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH200101
// * ^expansion.contains[=].display = "Anforderung Blutkonserven"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH200102
// * ^expansion.contains[=].display = "Blutspendeprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH200103
// * ^expansion.contains[=].display = "Bluttransfusionsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH200104
// * ^expansion.contains[=].display = "Konservenbegleitschein"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH200199
// * ^expansion.contains[=].display = "Sonstiges Transfusionsdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #TH230199
// * ^expansion.contains[=].display = "Sonstige Therapiedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010101
// * ^expansion.contains[=].display = "Dekubitusrisikoeinschätzung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010102
// * ^expansion.contains[=].display = "Mini Mental Status Test inkl. Uhrentest"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010103
// * ^expansion.contains[=].display = "Schmerzerhebungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010104
// * ^expansion.contains[=].display = "Ernährungsscreening"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010105
// * ^expansion.contains[=].display = "Aphasiescreening"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010106
// * ^expansion.contains[=].display = "Glasgow Coma Scale"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010107
// * ^expansion.contains[=].display = "NIH Stroke Scale"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010108
// * ^expansion.contains[=].display = "IPSS (Internationaler Prostata Symptom Score)"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010199
// * ^expansion.contains[=].display = "Sonstiger Assessmentbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010201
// * ^expansion.contains[=].display = "Apotheke Entlassbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010202
// * ^expansion.contains[=].display = "Apotheke Betreuungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010203
// * ^expansion.contains[=].display = "Arzneimittelinformation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010204
// * ^expansion.contains[=].display = "Apotheke Validierung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010205
// * ^expansion.contains[=].display = "Apotheke Visitenprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010206
// * ^expansion.contains[=].display = "AMTS-Prüfbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010207
// * ^expansion.contains[=].display = "Apotheke Interventionsbericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010208
// * ^expansion.contains[=].display = "Arzneimittelabgabe"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL010299
// * ^expansion.contains[=].display = "Sonstige Apothekendokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040101
// * ^expansion.contains[=].display = "Diabetiker Kurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040102
// * ^expansion.contains[=].display = "Insulinplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040199
// * ^expansion.contains[=].display = "Sonstige Diabetesdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040201
// * ^expansion.contains[=].display = "Dialyseanforderung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040202
// * ^expansion.contains[=].display = "Dialyseprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040299
// * ^expansion.contains[=].display = "Sonstige Dialysedokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040301
// * ^expansion.contains[=].display = "Ein- und Ausfuhrprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040302
// * ^expansion.contains[=].display = "Fixierungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040303
// * ^expansion.contains[=].display = "Isolierungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040304
// * ^expansion.contains[=].display = "Lagerungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040305
// * ^expansion.contains[=].display = "Punktionsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040306
// * ^expansion.contains[=].display = "Punktionsprotokoll therapeutisch"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040307
// * ^expansion.contains[=].display = "Reanimationsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040308
// * ^expansion.contains[=].display = "Sondenplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040309
// * ^expansion.contains[=].display = "Behandlungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040310
// * ^expansion.contains[=].display = "Infektionsdokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040311
// * ^expansion.contains[=].display = "Nosokomialdokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040312
// * ^expansion.contains[=].display = "Stomadokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040313
// * ^expansion.contains[=].display = "Katheterdokument"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040314
// * ^expansion.contains[=].display = "Kardioversion"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL040399
// * ^expansion.contains[=].display = "Sonstiger Durchführungsnachweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090101
// * ^expansion.contains[=].display = "Beatmungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090102
// * ^expansion.contains[=].display = "Intensivkurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090103
// * ^expansion.contains[=].display = "Intensivpflegebericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090104
// * ^expansion.contains[=].display = "Monitoringausdruck"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090105
// * ^expansion.contains[=].display = "Intensivdokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL090199
// * ^expansion.contains[=].display = "Sonstiger Intensivdokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160101
// * ^expansion.contains[=].display = "Auszug aus den medizinischen Daten"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160102
// * ^expansion.contains[=].display = "Ernährungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160103
// * ^expansion.contains[=].display = "Meldebogen Krebsregister"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160104
// * ^expansion.contains[=].display = "Pflegeanamnesebogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160105
// * ^expansion.contains[=].display = "Pflegebericht"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160106
// * ^expansion.contains[=].display = "Pflegekurve"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160107
// * ^expansion.contains[=].display = "Pflegeplanung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160108
// * ^expansion.contains[=].display = "Pflegeüberleitungsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160109
// * ^expansion.contains[=].display = "Sturzprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160110
// * ^expansion.contains[=].display = "Überwachungsprotokoll"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160111
// * ^expansion.contains[=].display = "Verlaufsdokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160112
// * ^expansion.contains[=].display = "Pflegevisite"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160113
// * ^expansion.contains[=].display = "Fallbesprechung Bezugspflegekraft"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160114
// * ^expansion.contains[=].display = "Pflegenachweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160115
// * ^expansion.contains[=].display = "Fotodokumentation Dekubitus"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL160199
// * ^expansion.contains[=].display = "Sonstiger Pflegedokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL230101
// * ^expansion.contains[=].display = "Wunddokumentationsbogen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL230102
// * ^expansion.contains[=].display = "Bewegungs- und Lagerungsplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL230103
// * ^expansion.contains[=].display = "Fotodokumentation Wunden"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #VL230199
// * ^expansion.contains[=].display = "Sonstige Wunddokumentation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140101
// * ^expansion.contains[=].display = "Behördliche Genehmigung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140102
// * ^expansion.contains[=].display = "Dokumentation vorhandender Infrastruktur"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140199
// * ^expansion.contains[=].display = "Sonstiger Nachweis Infrastruktur"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140201
// * ^expansion.contains[=].display = "Berufserlaubnis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140202
// * ^expansion.contains[=].display = "Approbation"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140203
// * ^expansion.contains[=].display = "Arbeitsvertrag"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140204
// * ^expansion.contains[=].display = "Arbeitszeugnis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140205
// * ^expansion.contains[=].display = "Dienstleistungsvereinbarung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140206
// * ^expansion.contains[=].display = "Dienstplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140207
// * ^expansion.contains[=].display = "Weiterbildungs-/Fortbildungs-/Qualifikationsnachweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140208
// * ^expansion.contains[=].display = "Ausbildungsbefugnis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140209
// * ^expansion.contains[=].display = "Personalliste"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140210
// * ^expansion.contains[=].display = "Auszug aus der Personalakte"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140211
// * ^expansion.contains[=].display = "PuPGV-Nachweis"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140299
// * ^expansion.contains[=].display = "Sonstiger Nachweis Personal"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140301
// * ^expansion.contains[=].display = "Arzneimittelliste"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140302
// * ^expansion.contains[=].display = "Inventarliste"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140303
// * ^expansion.contains[=].display = "Medizinproduktebuch"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140304
// * ^expansion.contains[=].display = "Geräteeinweisung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140399
// * ^expansion.contains[=].display = "Sonstiger Nachweis sachliche Ausstattung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140401
// * ^expansion.contains[=].display = "Aufstellung erbrachte Leistungen"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140402
// * ^expansion.contains[=].display = "Aufstellung medizinische Angebote"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140403
// * ^expansion.contains[=].display = "Dokumentation Behandlungsprogramm"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140404
// * ^expansion.contains[=].display = "Fallliste"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140405
// * ^expansion.contains[=].display = "Hygieneplan"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140406
// * ^expansion.contains[=].display = "Organigramm"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140407
// * ^expansion.contains[=].display = "Verfahrensanweisung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140408
// * ^expansion.contains[=].display = "Dienstanweisung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140409
// * ^expansion.contains[=].display = "Zertifizierungsurkunde"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB140499
// * ^expansion.contains[=].display = "Sonstiger Nachweis Prozesse"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB999996
// * ^expansion.contains[=].display = "Nachweise (Zusatz-) Entgelte"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB999997
// * ^expansion.contains[=].display = "Gesamtdokumentation stationäre Versorgung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB999998
// * ^expansion.contains[=].display = "Gesamtdokumentation ambulante Versorgung"
// * ^expansion.contains[+].system = "http://dvmd.de/fhir/CodeSystem/kdl"
// * ^expansion.contains[=].code = #UB999999
// * ^expansion.contains[=].display = "Sonstige medizinische Dokumentation"