# ValueSet Klinische Dokumentenklassen-Liste (Version 2025) - v2025.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ValueSet Klinische Dokumentenklassen-Liste (Version 2025)**

## ValueSet: ValueSet Klinische Dokumentenklassen-Liste (Version 2025) 

| | |
| :--- | :--- |
| *Official URL*:http://dvmd.de/fhir/ValueSet/kdl | *Version*:2025.0.1 |
| Active as of 2025-01-01 | *Computable Name*:ValueSetKDL |
| *Other Identifiers:*OID:1.2.276.0.76.11.469 | |
| **Copyright/Legal**: 2025 DVMD e.V. | |

 
ValueSets sind Listen von Codes, die in einem bestimmten Kontext verwendet werden. Durch sog. "Terminology-Binding" können Attribute von FHIR-Ressourcen an ValueSets gebunden werden, um die Menge der zulässigen Werte für dieses Attribut einzuschränken. Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem "KDL" und ist für Bindings an Attribute geeignet, an denen alle Werte aus dem CodeSystem "KDL" erlaubt werden sollen. Beispiel: DocumentReference.type 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "kdl-vs-2025",
  "url" : "http://dvmd.de/fhir/ValueSet/kdl",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.276.0.76.11.469"
    }
  ],
  "version" : "2025.0.1",
  "name" : "ValueSetKDL",
  "title" : "ValueSet Klinische Dokumentenklassen-Liste (Version 2025)",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-01",
  "publisher" : "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)",
  "contact" : [
    {
      "name" : "Der Fachverband für Dokumentation und Informationsmanagement in der Medizin (DVMD)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.dvmd.de"
        },
        {
          "system" : "email",
          "value" : "dvmd@dvmd.de"
        }
      ]
    }
  ],
  "description" : "ValueSets sind Listen von Codes, die in einem bestimmten Kontext verwendet werden. Durch sog. &quot;Terminology-Binding&quot; können Attribute von FHIR-Ressourcen an ValueSets gebunden werden, um die Menge der zulässigen Werte für dieses Attribut einzuschränken.  Dieses ValueSet enthält sämtliche Codes aus dem CodeSystem &quot;KDL&quot; und ist für Bindings an Attribute geeignet, an denen alle Werte aus dem CodeSystem &quot;KDL&quot; erlaubt werden sollen.  Beispiel: DocumentReference.type",
  "copyright" : "2025 DVMD e.V.",
  "compose" : {
    "include" : [
      {
        "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
        "filter" : [
          {
            "property" : "child",
            "op" : "exists",
            "value" : "false"
          }
        ]
      }
    ]
  }
}

```
