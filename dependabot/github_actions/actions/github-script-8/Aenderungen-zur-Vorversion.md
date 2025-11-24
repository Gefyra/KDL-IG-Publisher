# Aenderungen Zur Vorversion - v2025.0.1

* [**Table of Contents**](toc.md)
* **Aenderungen Zur Vorversion**

## Aenderungen Zur Vorversion

### Historie der Änderungen zur Vorversion

Empfehlungen, Anregungen und Änderungswünsche für die nächste Version sind bis 15. September 2025 über mueller@dvmd.de bei der AG "Weiterentwicklung KDL" einzureichen. Bereits vorliegende Vorgänge sind unter https://art-decor.org/ad/#/kdl-/issues/issues dokumentiert.

## KDL-2025 - KDL-2024

### Neue KDL-Unterklassen (Level 2)

* VL0102 (Apothekendokumentation)
* UB1401 (Nachweisdokumentation: Infrastruktur)
* UB1402 (Nachweisdokumentation: Personal)
* UB1403 (Nachweisdokumentation: Sachliche Ausstattung)
* UB1404 (Nachweisdokumentation: Prozesse)

### Neue KDL-Dokumentenklassen (Level 3)

* AD010115 Entlassungsbericht
* AD010116 Verlegungsbericht
* AD060110 Konsilbericht
* LB120106 Hämatologisches Speziallabor
* LB120107 Laborbefund
* OP010104 Präoperative Anästhesiedokumentation
* OP010105 Postoperative Anästhesiedokumentation
* TH160102 Apotheke Patientenberatung
* VL010201 Apotheke Entlassbericht
* VL010202 Apotheke Betreuungsplan
* VL010203 Arzneimittelinformation
* VL010204 Apotheke Validierung
* VL010205 Apotheke Visitenprotokoll
* VL010206 AMTS-Prüfbericht
* VL010207 Apotheke Interventionsbericht
* VL010208 Arzneimittelabgabe
* VL010299 Sonstige Apothekendokumentation
* AM010110 Heil- und Kostenplan
* AM010111 Kostenvoranschlag
* AM010211 Antrag abrechnungsrelevante OPS-Kodes
* UB140101 Behördliche Genehmigung
* UB140102 Dokumentation vorhandender Infrastruktur
* UB140199 Sonstiger Nachweis Infrastruktur
* UB140201 Berufserlaubnis
* UB140202 Approbation
* UB140203 Arbeitsvertrag
* UB140204 Arbeitszeugnis
* UB140205 Dienstleistungsvereinbarung
* UB140206 Dienstplan
* UB140207 Weiterbildungs-/Fortbildungs-/Qualifikationsnachweis
* UB140208 Ausbildungsbefugnis
* UB140209 Personalliste
* UB140210 Auszug aus der Personalakte
* UB140211 PuPGV-Nachweis
* UB140299 Sonstiger Nachweis Personal
* UB140301 Arzneimittelliste
* UB140302 Inventarliste
* UB140303 Medizinproduktebuch
* UB140304 Geräteeinweisung
* UB140399 Sonstiger Nachweis sachliche Ausstattung
* UB140401 Aufstellung erbrachte Leistungen
* UB140402 Aufstellung medizinische Angebote
* UB140403 Dokumentation Behandlungsprogramm
* UB140404 Fallliste
* UB140405 Hygieneplan
* UB140406 Organigramm
* UB140407 Verfahrensanweisung
* UB140408 Dienstanweisung
* UB140409 Zertifizierungsurkunde
* UB140499 Sonstiger Nachweis Prozesse

### Änderungen der KDL-Bezeichnung

Aufgrund von Erfahrungsberichten aus der KDL-Anwendergruppe im Kontext Dokumentenklassifizierung wurden nachfolgende KDL-Bezeichnungen der Dokumentenklassen angepasst:

* OP010101 Intraoperative Anästhesiedokumentation
* TH130102 Arzneimitteladministration
* TH130107 Medikationsplan

### Änderungen der KDL-Beschreibung

Aufgrund von Erfahrungsberichten aus der KDL-Anwendergruppe im Kontext Dokumentenklassifizierung wurden nachfolgende KDL-Beschreibungen der Dokumentenklassen angepasst. Zweck der KDL-Beschreibungen ist vordergründig, die Klassifizierung von Dokumenten zu unterstützen.

* AU010103 Aufnahmebogen Die Dokumentation beinhaltet den Befund des aktuellen Zustands bei Aufnahme und Informationen zur Vorgeschichte. Inkl.: Aufnahmebefund, Aufnahmeblatt, Krankenblatt, Apotheke Aufnahmebogen
* AD010103 Entlassungsbericht intern Die Dokumentation beinhaltet die endgültige Zusammenfassung des stationären Aufenthaltes. Erstellt von der entlassenden Einrichtung. Exkl.: Verlegungsbericht intern; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL AD010115 (Entlassungsbericht) möglich.
* AD010104 Entlassungsbericht extern Die Dokumentation beinhaltet die endgültige Zusammenfassung des stationären Aufenthaltes. Erstellt von einer vorbehandelnden Einrichtung. Exkl.: Verlegungsbericht extern; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL AD010115 (Entlassungsbericht) möglich.
* AD010106 Verlegungsbericht intern Die Dokumentation beinhaltet die endgültige Zusammenfassung des stationären Aufenthaltes für die Verlegung auf eine andere Station, Fachbereich oder Einrichtung. Exkl.: Entlassungsbericht intern, Verlegungsschein intern; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL AD010116 (Verlegungsbericht) möglich.
* AD010107 Verlegungsbericht extern Die Dokumentation beinhaltet die endgültige Zusammenfassung des stationären Aufenthaltes für die Verlegung von einer anderen Einrichtung. Erstellt von der vorbehandelnden Einrichtung. Exkl.: Entlassungsbericht extern; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL * AD010116 (Verlegungsbericht) möglich.
* AD020208 Befund extern Die Dokumentation beinhaltet Ergebnisse von verschiedenen ärztlichen/therapeutischen Untersuchungen und Befunderhebungen, welche in vorbehandelnden Einrichtungen/Praxen entstanden sind, aber nicht durch eine spezifischere KDL abgebildet werden kann. Exkl. Laborbefund extern; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet.
* AD060103 Konsilbericht intern Die Dokumentation beinhaltet die Befundung und Empfehlung eines konsiliarischen Facharztes für den weiteren Behandlungsverlauf. Erstellt von der entlassenden Einrichtung.; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL AD060110 (Konsilbericht) möglich.
* AD060104 Konsilbericht extern Die Dokumentation beinhaltet die Zusammenfassung der Befundung und Empfehlung eines Facharztes für den weiteren Behandlungsverlauf. Erstellt von einer Fremdeinrichtung. Inkl.: KBV Muster 22 (Konsiliarbericht vor Aufnahme einer Psychotherapie); Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL AD060110 (Konsilbericht) möglich.
* AD060105 Visitenprotokoll Die Dokumentation beinhaltet Angaben zu einer ärztlichen, therapeutischen und pflegerischen Besprechung zum aktuellen Zustand sowie weitere Maßnahmen. Visiten erfolgen in der Regel direkt im Beisein des zu Behandelnden. Exkl.: Ärztlicher Verlaufsbericht, Pflegevisite, Apotheke Visitenprotokoll
* LB120102 Laborbefund extern Die Dokumentation beinhaltet Ergebnisse von Untersuchungen verschiedenster Materialien durch ein Fremdlabor/Praxis. Inkl.: Kumulativbefund, Vorbefund. Exkl.: Mikrobiologiebefund, Serologischer Befund; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL LB120107 (Laborbefund) möglich.
* LB120103 Laborbefund intern Die Dokumentation beinhaltet Ergebnisse von Untersuchungen verschiedenster Materialien durch ein hauseigenes Labor. Inkl.: Kumulativbefund, Vorbefund. Exkl.: Laborbefund extern, Mikrobiologiebefund, Serologischer Befund; Hinw.: Diese KDL-Dokumentenklasse wird ab 1. Januar 2026 obsolet. Die Abbildung ist ab sofort mit der KDL LB120107 (Laborbefund) möglich.
* OP010101 Anästhesieprotokoll Intraoperative Anästhesiedokumentation Die Dokumentation beinhaltet Angaben über die Schmerzausschaltung und Bewusstseinslage während eines Eingriffs, Operation. Exkl.: Aufwachraumprotokoll, Präoperative Visite
* OP010102 Aufwachraumprotokoll Die Dokumentation beinhaltet Angaben über die Aufwachphase nach einem Eingriff, Operation. Hinw.: Ist die Dokumentation der Aufwachphase Bestandteil der postoperativen Anästhesiedokumentation ist die KDL OP010105 zu verwenden.
* OP010103 Checkliste Anästhesie Die Dokumentation beinhaltet Informationen über notwendige Maßnahmen vor der Induktion der Anästhesie, vor Beginn des Eingriffs und bei Operationsende. Inkl. Sicherheits-Checkliste lt. Empfehlung der WHO
* TH130102 Apothekenbuch Arzneimitteladministration Die Dokumentation beinhaltet Angaben zu einer Medikamentengabe (bspw. verabreichte Menge, Chargennummer, Applikationsweg, Verabreichungsdatum, Verabreichende/r, Empfänger/in). Inkl.: Auszüge aus einem Apothekenbuch, Chargendokumentation Apotheke
* TH130107 Medikamentenplan intern/extern Medikationsplan Die Dokumentation beinhaltet eine Übersicht über verordnete Arzneimittel. Exkl.: Medikationsplan elektronisch (eMP) - ED110103
* TH130108 Rezept Die Dokumentation beinhaltet die Verschreibung des Arztes auf einem standardisiertem Formular von Arznei- oder Heilmitteln. Inkl. Muster 16 KBV, Sonderformen bspw. BTM. Exkl.: eRezept, Anforderung Medikation, Postoperative Verordnung
* TH130110 Prämedikationsprotokoll Die Dokumentation beinhaltet Angaben über die Anordnung und Verabreichung von Medikamenten vor einer Maßnahme. Exkl.: Anästhesieaufklärungsbogen, Präoperative Anästhesiedokumentation
* TH200199 Sonstiges Transfusionsdokument Die Dokumentation beinhaltet Angaben, die nicht in einer spezifischeren KDL dieser Unterklasse abgebildet werden kann. Inkl.: Bericht über Transfusionsreaktion, Checkliste Transfusion, Konservenausgabeprotokoll
* VL160115 Fotodokumentation Dekubitus Die Dokumentation beinhaltet fotografierte Dekubiti. Exkl.: Fotodokumentation Dermatologie, Fotodokumentation Wunden, OP-Bilddokumentation
* VL230103 Fotodokumentation Wunden Die Dokumentation beinhaltet bspw. postoperativ fotografierte Hautdefekte, Brandwunden, mechanische Wunden. Hier sind nur gedruckte Fotografien zu klassifizieren. Exkl.: Fotodokumentation Dermatologie, Fotodokumentation Dekubitus, OP-Bilddokumentation
* SD160199 Sonstiges psychiatrisch-psychotherapeutisches Dokument Die Dokumentation beinhaltet Angaben, die nicht in einer spezifischeren KDL dieser Unterklasse abgebildet werden kann. Inkl.: Psychischer Untersuchungsbefund, Psychopathologischer Befund, Therapieplan Psy
* AM010103 Kostenübernahmeverlängerung Die Dokumentation beinhaltet die Bestätigung zur Kostenübernahme bei Weiterführung der Behandlung. Inkl.: Kostenübernahmeerklärung
* AM010107 MD Prüfauftrag Die Dokumentation beinhaltet die schriftliche Ankündigung zur Überprüfung eines abrechnungsrelevanten Sachverhaltes oder einer Leistungsgruppen/StrOPS-Prüfung durch den Medizinischen Dienst. Exkl.: Schriftverkehr MD Kasse, MD Gutachten, Schriftverkehr MD Arzt
* AM050105 Einverständniserklärung Behandlung Die Dokumentation beinhaltet die schriftliche Erlaubnis um eine geplante Behandlung durchführen und dokumentieren zu können. Inkl.: Einwilligungserklärung Fotodokumentation, Einverständniserklärung Neugeborenenscreening, Einwilligung Apotheke (bspw. zur Herstellung von Arzneimitteln); Exkl.: Einwilligungen im Rahmen der medizinischen Aufklärung (Unterklasse Aufklärungen (AM0103))
* AM160201 Belehrung Die Dokumentation beinhaltet eine Aufklärung bzw. Anweisung wie, wann und wo eine bestimmte Handlung bzw. ein Verhalten auszuführen ist. Exkl. Arzneimittelinformation
* AM160202 Informationsblatt Die Dokumentation beinhaltet wichtige Hinweise, die für eine Behandlung oder stationären Aufenthalt notwendig sind. Inkl. KBV Muster PTV 10/11, Exkl. Arzneimittelinformation
* AM170199 Sonstiges Qualitätssicherungsdokument Die Dokumentation beinhaltet Angaben, die nicht in einer spezifischeren KDL dieser Unterklasse abgebildet werden kann. Inkl.: Komplikationsbogen, Leitfäden, Nachbehandlungsschema, Leitlinien, Verfahrensanweisung. Exkl.: SOP im Kontext Klinische Studien
* AM190112 Anforderung Unterlagen MD Die Dokumentation beinhaltet eine Liste mit den zur Prüfung der Abrechnung notwendigen Unterlagen in der Klassifikation nach IHE/KDL (gem. Abschnitt 6.2, Anlage 1,eVV) oder zur Leistungsgruppen/StrOPS-Prüfung durch den Medizinischen Dienst. Exkl.: Anforderung Unterlagen
* UB999996 Nachweise (Zusatz-) Entgelte Die Dokumentation beinhaltet die Nachweise (inkl. Dosis, Mengenangaben, Indikationsstellung) der durchgeführten diagnostischen, therapeutischen und/oder pflegerischen Maßnahmen von Entgelten, ergänzenden Tagesentgelten (ET), ZE oder ZP. Dieser KDL-Kode ist ausschließlich für die Anforderung von Unterlagen durch den MD zu verwenden.

