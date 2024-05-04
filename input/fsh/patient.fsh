// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CRPatient
Parent: Patient
Description: "A client registry profile of the Patient resource."
* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier ^constraint[0].key = "search-identifier"
* identifier ^constraint[0].severity = #error
* identifier ^constraint[0].expression = "'identifier' | iif(system.exists(), system & '|' & value, value)"
* identifier ^constraint[0].human = "The identifier must be unique and another record has this identifier"
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
* name 1..* MS
* name ^label = "Name"
* name.use MS
* name.use ^label = "Use"
* name.family 1..1 MS
* name.family ^label = "Family"
* name.family ^constraint[0].key = "name-check"
* name.family ^constraint[0].severity = #error
* name.family ^constraint[0].expression = "matches('^[A-Za-z ]*$')"
* name.family ^constraint[0].human = "Name must be only text."
* name.given 1..* MS
* name.given ^label = "Given Name"
* name.prefix MS
* name.prefix ^label = "Prefix"
* name.suffix MS
* name.suffix ^label = "Suffix"
* telecom 0..* MS
* telecom ^label = "Telecom"
* telecom.system MS
* telecom.system ^label = "Contact Type"
* telecom.use MS
* telecom.use ^label = "Use"
* telecom.value MS
* telecom.value ^label = "Value"
* telecom ^constraint[0].key = "search-phone"
* telecom ^constraint[0].severity = #error
* telecom ^constraint[0].expression = "'phonenumber' | iif(value.exists(), system & '|' & value, value)"
* telecom ^constraint[0].human = "The identifier must be unique and another record has this identifier"
* address 0..* MS
* address ^label = "Address"
* address.district MS
* address.district ^label = "District"
* address.country MS
* address.country ^label = "Country"
* deceasedBoolean
* gender 0..1 MS
* gender ^label = "Gender"
* maritalStatus 0..1 MS
* maritalStatus ^label = "Marital Status"
* birthDate MS
* birthDate ^label = "Birth Date"
* active 1..1 MS
* active ^label = "Active"
* contact 0..* MS
* contact ^label = "Next of Kin"
* contact.relationship 1..* MS
* contact.name 0..1 MS
* contact.name ^label = "Contact Name"
* contact.address 0..1 MS
* contact.address ^label = "Contact Address"
* contact.telecom 0..* MS
* contact.telecom ^label = "Contact Telecom"
* extension contains CrPatientAddress named patientaddress 1..1 MS
* extension[patientaddress] ^label = "Patient Address"
* extension[patientaddress].valueReference 1..1 MS
* communication 0..* MS
* communication ^label = "Language of commmunication"
* managingOrganization 	0..1 MS
* managingOrganization.reference 0..1 MS
* managingOrganization.reference ^label = "Managing Organization"
* managingOrganization only Reference(CROrganization)



// instance of CR patient
Instance: CRPatientExample
InstanceOf: CRPatient
Description: "An example of a patient with a license to krill."
* identifier[0].system = "http://clientregistry.org/openmrs"
* identifier[0].value = "10EV14"
* identifier[0].use = #official
* identifier[1].system = "http://health.go.ug/cr/nationalid"
* identifier[1].value = "CM345678941"
* identifier[1].use = #usual
* identifier[2].system = "http://health.go.ug/cr/artnumber"
* identifier[2].value = "CM345678941"
* identifier[2].use = #usual
* identifier[3].system = "http://health.go.ug/cr/hin"
* identifier[3].value = "PT123451"
* identifier[3].use = #usual
* name[0].given[0] = "James"
* name[0].family = "Pond"
* name[0].use = #official
* telecom[0].value = "test@gmail.com"
* telecom[0].system = #email
* telecom[0].use = #work
* telecom[1].system = #phone
* telecom[1].value = "0705612891"
* telecom[1].use = #home
* birthDate = "1994-10-04"
* deceasedBoolean = false
* active = true
* gender = #male
* maritalStatus.text = "M"
* maritalStatus.coding[0].system = "http://terminology.hl7.org/ValueSet/v3-MaritalStatus"
* maritalStatus.coding[0].display = "Marital Status"
* address
  * district = "Kampala"
  * country = "Uganda"
* contact.relationship[0].text = "Mother"
* contact.gender = #female
* contact.name[0].family = "Sekindi Joseph"
* contact.address[0].line = "Kyegegwa town council"
* contact.address[0].country = "Uganda"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "0786123456"
* contact.telecom[0].use = #home
* communication[0].language = urn:ietf:bcp:47#en-US "English (UK)"
* communication[0].preferred = true
* extension[patientaddress].valueReference = Reference(a1bvHu4FRCq)
* managingOrganization.reference = Reference(CROrganizationExample)



// address extension for patient
Extension: CrPatientAddress
Id: cr-patient-address
Title: "CR Patient Address"
Description: "CR extension for Patient Address."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only Reference(CrJurisdiction)
* valueReference 1..1 MS
* valueReference ^label = "Patient Address"
* valueReference.reference 1..1 MS
* valueReference.reference ^label = "Patient Address"