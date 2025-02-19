//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Instance: EhicExampleIt
InstanceOf: CoverageEhic
Description: "Example of Italian EHIC (Tessera TEAM)"
* identifier.system = "http://toBeDefined.org/ehic"
* identifier.value = "80380000900090510553"
* status = 	#active
// * type = COV_TYP#PUBLICPOL
* beneficiary = Reference(Patient/esempio-CF-residenza)
* period.end = 2022-01-19
[r4-init]
* payor = Reference(Organization/example-rt)
* payor.display = "SSN-MIN SALUTE - 500001"
[r4-end]
[r5-init]
* kind = http://hl7.org/fhir/coverage-kind#other
* insurer = Reference(Organization/example-rt)
* insurer.display = "SSN-MIN SALUTE - 500001"
[r5-end]
