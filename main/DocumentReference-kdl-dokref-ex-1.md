# kdl-dokref-ex-1 - v2025.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **kdl-dokref-ex-1**

## Example DocumentReference: kdl-dokref-ex-1

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.2.276.0.76.3.1.191.0002.01.9999999999999.00000001.999.99.9999999999999999

**status**: Current

**type**: Entlassungsbericht intern

**subject**: [Patient/example](Patient/example)

**date**: 2018-10-30 07:24:22+0000

**description**: Epikrise

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **Language** | **Url** |
| * | German (Region=Germany) | Binary/95a0827c-b3dc-41b6-a114-f7dde38e9f3e |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "kdl-dokref-ex-1",
  "masterIdentifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.276.0.76.3.1.191.0002.01.9999999999999.00000001.999.99.9999999999999999"
  },
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
        "code" : "AD010103",
        "display" : "Entlassungsbericht intern"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "date" : "2018-10-30T07:24:22+00:00",
  "description" : "Epikrise",
  "content" : [
    {
      "attachment" : {
        "language" : "de-DE",
        "url" : "Binary/95a0827c-b3dc-41b6-a114-f7dde38e9f3e"
      }
    }
  ]
}

```
