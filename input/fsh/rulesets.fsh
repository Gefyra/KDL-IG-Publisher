// Rulesets for KDL IG

RuleSet: DVMDAuthor
* ^extension[+].url = $artifact-author
* ^extension[=].valueContactDetail.name = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* ^extension[=].valueContactDetail.telecom[0].system = #email
* ^extension[=].valueContactDetail.telecom[0].value = "dvmd@dvmd.de"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.dvmd.de"

RuleSet: DVMDAuthorInstance
* extension[+].url = $artifact-author
* extension[=].valueContactDetail.name = "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)"
* extension[=].valueContactDetail.telecom[0].system = #email
* extension[=].valueContactDetail.telecom[0].value = "dvmd@dvmd.de"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.dvmd.de"

RuleSet: EffectivePeriod
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "2026-01-01"

RuleSet: EffectivePeriodInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2026-01-01"

RuleSet: LastReviewDate
* ^extension[+].url = $resource-lastReviewDate
* ^extension[=].valueDate = "2026-01-13"

RuleSet: LastReviewDateInstance
* extension[+].url = $resource-lastReviewDate
* extension[=].valueDate = "2026-01-13"
