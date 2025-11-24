# kdl-dokref-ex-2 - v2025.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **kdl-dokref-ex-2**

## Example DocumentReference: kdl-dokref-ex-2

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.0/NamingSystem-uri.html)/urn:oid:1.2.276.0.76.3.1.191.0002.01.9999999999999.00000001.999.99.9999999999999999

**status**: Current

**type**: Anästhesieaufklärungsbogen

**category**: Administratives Dokument

**subject**: [Patient/example](Patient/example)

**date**: 2019-07-30 14:45:32+0000

**description**: Aufklärung - Anästhesie

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Language** | **Url** | **Creation** |
| * | German (Region=Germany) | Binary/example | 2018-09-20 15:07:35+0000 |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter/example](Encounter/example) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "kdl-dokref-ex-2",
  "masterIdentifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.276.0.76.3.1.191.0002.01.9999999999999.00000001.999.99.9999999999999999"
  },
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
        "code" : "AM010301",
        "display" : "Anästhesieaufklärungsbogen"
      },
      {
        "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
        "code" : "EINW",
        "display" : "Einwilligungen/Aufklärungen"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://ihe-d.de/CodeSystems/IHEXDSclassCode",
          "code" : "ADM",
          "display" : "Administratives Dokument"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/example"
  },
  "date" : "2019-07-30T14:45:32+00:00",
  "description" : "Aufklärung - Anästhesie",
  "content" : [
    {
      "attachment" : {
        "language" : "de-DE",
        "url" : "Binary/example",
        "creation" : "2018-09-20T15:07:35+00:00"
      }
    }
  ],
  "context" : {
    "encounter" : [
      {
        "reference" : "Encounter/example"
      }
    ]
  }
}

```
