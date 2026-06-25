Instance: kdl-dokref-ex-2
InstanceOf: DocumentReference
Usage: #example
* masterIdentifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:1.2.276.0.76.3.1.191.0002.01.9999999999999.00000001.999.99.9999999999999999"
* status = #current
* type
  * coding[0] = KDL#AM010301 "Anästhesieaufklärungsbogen"
  * coding[+] = $IHEXDStypeCode#EINW "Einwilligungen/Aufklärungen"
* category = $IHEXDSclassCode#ADM "Administratives Dokument"
* subject.reference = "http://example.org/fhir/Patient/example"
* date = "2019-07-30T14:45:32+00:00"
* description = "Aufklärung - Anästhesie"
* content.attachment
  * language = #de-DE
  * url = "Binary/example"
  * creation = "2018-09-20T15:07:35+00:00"
* context.encounter.reference = "http://example.org/fhir/Encounter/example"
