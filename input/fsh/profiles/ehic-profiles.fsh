//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CoverageEhic
Parent:   Coverage
Id:       Coverage-eu-ehic
Title:    "Coverage: EHIC "
Description: "Coverage profile for the European Health Insurance Card"
//-------------------------------------------------------------------------------------------
* identifier 1..1 MS // #8 card number
* identifier ^short = "EHIC#8 - Identification number of the card"
* identifier ^definition = "Logical number of the card"
* status 1..1 MS // 
* type 1.. MS
* type = EuV3ActCode#EHIC "European Health Insurance Card"  // to be added
* beneficiary 1..1 MS // #3, 4 ,5, 6
* beneficiary ^short = "EHIC fields #3 to #6 (Name, Id, birthDate)"
* beneficiary only Reference(PatientEhic)
* period 1..1 
* period.end 1..1 MS // #9 - Expiry date
* period.end ^short = "EHIC#9 - Expiry date"
* period.end ^definition = "Expiry date of the card"
* payor	1..1
* payor only Reference(Organization)
* payor.display 1..1 MS // #7
* payor.display ^short = "EHIC#7 - Identification number of the institution"
* payor.display ^definition = "Identification number and acronym of the competent institution"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: PatientEhic
Parent: Patient
Id: Patient-eu-ehic
Title: "Patient (EHIC)"
Description: "This profile represents the constraints applied to the Patient resource when sed with the EHIC coverage profile."
* identifier 1.. 
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier ^short = "Identifiers used for this patient"
* identifier ^definition = "Identifiers used for this patient"
* identifier contains ehic 1..1 MS
* identifier[ehic] ^short = "EHIC#6 - Personal identification number"
* identifier[ehic] ^definition = "Personal identification number of the card holder or, when no such number exists, the number of the insured person from whom the rights of the card holder derive"
* identifier[ehic].system 1..1 MS 
* identifier[ehic].system from VsEHICPersonalIdUri (extensible)
* identifier[ehic].value 1..1 MS
* name 1..*
* name.family 1..1 MS // #3
* name.family ^short = "EHIC#3 - Name"
* name.family ^definition = "Forename of the card holder"
* name.given 1.. MS // #4
* name.given ^short = "EHIC#4 - Given names"
* name.given ^definition = "Surname of the card holder"
* birthDate 1..1 MS // #5
* birthDate ^short = "EHIC#5 - Date of birth"
* birthDate ^definition = "Date of birth of the card holder"
