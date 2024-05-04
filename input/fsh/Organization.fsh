// organisation
Profile: CROrganization
Parent: Organization
Description: "A client registry profile of the Organization resource."
* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier.use MS
* identifier.use ^label = "Use"
* identifier.type MS
* identifier.type ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.type.coding ^label = "Type"
* identifier.system MS
* identifier.system ^label = "System"
* identifier.value MS
* identifier.value ^label = "Value"
* active 0..1 MS
* active ^label = "Active"
* name 0..1 MS 
* name ^label = "Name of Organization"
* telecom 	0..* MS
* telecom ^label = "Telecom"
* telecom.use = #work


Instance : CROrganizationExample
InstanceOf : CROrganization
Description: "An example of a organisation resource."
* identifier[0].system = "ugandaemr"
* identifier[0].value = "10EV14"
* identifier[0].use = #official
* active = true
* name = "Kisenyi Health Centre IV"
* telecom[0].system = #work
* telecom[0].value = "0785423121"
