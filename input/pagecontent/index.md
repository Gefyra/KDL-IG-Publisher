---
topic: Hauptseite
---
# Hauptseite 

{{render:KDL/DVMD-logo}} 

## Motivation

Die Klinische Dokumentenklassen-Liste (KDL) ist eine Entwicklung der anwendungsorientierten Forschung der DMI GmbH & Co. KG aus den Jahren 2013 – 2018 und basiert auf der Erfahrung aus der Indexierung von jährlich rund 4 Millionen Patientenakten mit 200 Millionen Dokumenten. In 2018 ist die KDL für die Weiterentwicklung in den DVMD e. V. überführt wurden. 

Als Ergebnis dieser umfassenden Praxiserfahrung von Dokumenttyp-Benennungen deutscher Krankenhäuser leistet die KDL einen wichtigen Beitrag zur semantischen Interoperabilität in der Gesundheits-IT: Sie ermöglicht das Klassieren, also die Zuordnung, interner Dokumenttyp-Benennungen der Einrichtungen zu den Bezeichnungen bei Stakeholdern – und schafft so die Basis für den digitalen Austausch. Zu den zahlreichen potenziellen Stakeholdern in der Kommunikation, die bei der Informationen aus Patientenakten eine Rolle spielen, zählen unter anderem Leistungspartner in der Behandlungskette, Kostenträger, der Medizinische Dienst, Behörden und der Patient.

## Zweckbestimmung dieses Leitfadens

Dieser Implementierungsleitfaden soll es Anwendern und Entwicklern erleichtern, die KDL in FHIR-basierte Systeme zu integrieren. Die Repräsentation und Bereitstellung der Terminologie in einem standardisierten, maschinenlesbaren Format, reduziert den Aufwand bei der Implementierung erheblich und macht die KDL für FHIR-basierte Anwendungssysteme bzw. Terminologieserver umgehend nutzbar.

Mit dem neuen HL7&copy;-Standard FHIR&copy; liegt ein moderner webbasierter Standard für das Gesundheitswesen vor, der es Entwicklern erlaubt, klinische Informationen und Terminologien mit einer einheitlichen technologischen Basis zu integrieren.

Eine standardisierte Terminologie-API erlaubt die Anbindung spezialisierter Terminologie-Dienste in Anwendungssysteme sowie den standardisierten Austausch von Terminologien.

Mehr Informationen zum Umgang mit Terminologien in FHIR sind in der Spezifikation des [FHIR Terminologie Moduls (R4)](http://hl7.org/implement/standards/fhir/terminology-module.html) zu finden.

Für Fragen zur FHIR-Implementierung im Allgemeinen und der Nutzung von Terminologie-Ressourcen im Besonderen, können folgende Foren im Internationalen FHIR Chat genutzt werden:
* [deutschsprachiges Forum](https://chat.fhir.org/#narrow/stream/179183-german-(d-a-ch)) 
* [allgemeine Implementierungsfragen](https://chat.fhir.org/#narrow/stream/179166-implementers) 
* [Terminologie-Forum](https://chat.fhir.org/#narrow/stream/179202-terminology) 

## Bereitstellung der Technischen Spezifikation 
Die mit diesem Leitfaden assozizierten FHIR-Ressourcen sind als Packages publiziert.
Die aktuelle sowie vergangene Versionen können unter folgendem Link heruntergeladen werden:

https://terminologien.bfarm.de/kodiersysteme.html


## Ansprechpartner, Gültigkeit, Lizenzbedingungen
Die KDL-2026 gilt ab 1. Januar 2026.

Weitere Empfehlungen, Änderungswünsche und Hinweise sind bis 15. September 2026 an die Leitung der AG, Annett Müller (mueller@dvmd.de), zu senden. Gemeinsam mit den Teilnehmenden der AG "KDL-Weiterentwicklung", aber auch im regelmäßigen Austausch mit der "KDL-Anwendergruppe" werden die Einreichungen diskutiert. Ergeben sich daraus essentielle Anpassungen des Klassiifkationssystems, ist die Notwendigkeit einer neuen Version gegeben.

Weitere Informationen sind auf der Webseite des DVMD zu finden: https://dvmd.de/publikationen/kdl/. Bitte beachten Sie auch die Veranstaltungen des DVMD - u. a. zur KDL: https://dvmd.de/veranstaltungen/

Copyright: 
2013-2018 DM GmbH & Co. KG
seit 2018 DVMD e.V.

Die KDL ist frei verfügbar. Sie können das CodeSystem unter den Bedingungen der GNU General Public License, wie von der Free Software Foundation, Version 3 der Lizenz oder (nach Ihrer Wahl) jeder neueren veröffentlichten Version, weiter verteilen und/oder modifizieren.

Die KDL wird ohne jede Gewähr bereitgestellt. Für weitere Einzelheiten verweisen wir auf die GNU General Public License unter https://www.gnu.org/licenses/

## Danksagung
Diese Publikation wurde erstellt mit freundlicher Unterstützung von

{{render:KDL/DMI-logo}}

{{render:KDL/Gefyra-final-klein}} 