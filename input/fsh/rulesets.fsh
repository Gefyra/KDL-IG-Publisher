// Rulesets for KDL IG

RuleSet: DVMDAuthor
* ^extension[+].url = $artifact-author
* ^extension[=].valueContactDetail.name = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* ^extension[=].valueContactDetail.telecom[0].system = #email
* ^extension[=].valueContactDetail.telecom[0].value = "dvmd@dvmd.de"

RuleSet: DVMDAuthorInstance
* extension[+].url = $artifact-author
* extension[=].valueContactDetail.name = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* extension[=].valueContactDetail.telecom[0].system = #email
* extension[=].valueContactDetail.telecom[0].value = "dvmd@dvmd.de"

RuleSet: EffectivePeriod
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "2026-01-01"

RuleSet: EffectivePeriodInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2026-01-01"
