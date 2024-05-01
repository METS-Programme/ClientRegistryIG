Profile:        CrJurisdiction
Parent:         Location
Id:             cr-jurisdiction
Title:          "Jurisdiction"
Description:    "CR Profile of Locations to manage jurisdictions."
* type 1..1 MS
* type ^label = "Location Type"
* type.coding 1..1 MS
* type.coding ^label = "Location Type"
* type.coding from CrJurisdictionType (required)
* physicalType 1..1 MS
* physicalType ^label = "Location Physical Type"
* name 1..1 MS
* name ^label = "Name"
* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier.use 0..0
* identifier.value MS
* identifier.value ^label = "Value"
* identifier.type 1..1 MS
* identifier.type ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.type.coding ^label = "Type"
* identifier.type.coding from CrFacilityIdentifierValueSet
* status 1..1 MS
* status ^label = "Status"
* partOf 0..1 MS
* partOf only Reference(CrJurisdiction)
* partOf ^label = "Part Of(Country/Region/District/County/Sub-County)"


ValueSet:         CrJurisdictionType
Id:               cr-jurisdiction-type
Title:            "Cr Jurisdiction Type ValueSet"
* ^date = "2023-08-12T08:41:04.362Z"
* ^version = "0.6.0"
* codes from system CrJurisdictionType

CodeSystem:      CrJurisdictionType
Id:              cr-jurisdiction-type
Title:           "Jurisdiction Type"
* ^date = "2023-08-12T08:41:04.362Z"
* ^version = "0.6.0"
* #country "Country" "Country"
* #region "Region" "Region"
* #county "County" "County"
* #district "District" "District"
* #subcounty "Sub-County" "Sub-County"
* #municipality "Municipality" "Municipality"
* #city "City" "City"
* #lga "Local Government" "Local Government"
* #parish "Parish" "Parish"
* #village "Village" "Village"


Profile:        CrFacility
Parent:         Location
Id:             cr-facility
Title:          "Facility"
Description:    "CR Profile of Locations to manage facilities."
* type 1..1 MS
* type ^label = "Facility Type"
* type.coding 1..1 MS
* type.coding from CrFacilityTypeValueSet
* type.coding ^label = "Facility Type"
* physicalType 1..1 MS
* physicalType ^label = "Facility Physical Type"
* physicalType.coding 1..1 MS
* physicalType.coding ^label = "Facility Physical Type"
* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier.use 0..0
* identifier.value MS
* identifier.value ^label = "Value"
* identifier.type 1..1 MS
* identifier.type ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.type.coding ^label = "Type"
* identifier.type.coding from CrFacilityIdentifierValueSet
* extension contains
        CrFacilityOwnership named ownership 0..1 MS and
        CrFacilityAuthority named authority 0..1 MS and
        CrFacilityStatus named facilityStatus 1..1 MS
* extension[ownership].valueCoding MS
* extension[ownership] ^label = "Ownership"
* extension[authority].valueCoding MS
* extension[authority] ^label = "Authority"
* extension[facilityStatus].valueCoding MS
* extension[facilityStatus] ^label = "Status"
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* position 0..1 MS
* position ^label = "Co-ordinates"
* position.longitude 1..1 MS
* position.longitude ^label = "Longitude"
* position.latitude 1..1 MS
* position.latitude ^label = "Latitude"
* partOf 1..1 MS 
* partOf only Reference(CrJurisdiction)
* partOf ^label = "Part Of(Country/Region/District/County/Sub-County)"

Extension:     CrFacilityStatus
Id:            cr-facility-status
Title:         "Cr facility Status"
Description:   "Cr facility status"
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Status"
* valueCoding from CrFacilityStatusValueSet (required)

ValueSet:         CrFacilityStatusValueSet
Id:               cr-facility-status
Title:            "Facility Status"
* ^date = "2024-02-10T08:41:04.362Z"
* ^version = "0.1.0"
* codes from system CrFacilityStatusCodeSystem

CodeSystem:      CrFacilityStatusCodeSystem
Id:              cr-facility-status
Title:           "Facility Status"
* ^date = "2024-02-10T08:41:04.362Z"
* ^version = "0.1.0"
* #functional "Functional"
* #nonFunctional "Non-Functional"


Extension:     CrFacilityAuthority
Id:            cr-facility-authority
Title:         "Cr facility Authority"
Description:   "Cr facility authority"
* ^context.type = #element
* ^context.expression = "Location"    
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Authority"
* valueCoding from CrFacilityAuthorityValueSet (required)

ValueSet:         CrFacilityAuthorityValueSet
Id:               cr-facility-authority
Title:            "Cr Facility Authority ValueSet"
* ^date = "2023-02-13T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system CrFacilityAuthorityCodeSystem

CodeSystem:      CrFacilityAuthorityCodeSystem
Id:              cr-facility-authority
Title:           "Authority Type"
* ^date = "2023-02-13T08:41:04.362Z"
* ^version = "0.4.0"
* #MOH "MOH"
* #Private "Private"
* #UCMB "UCMB"
* #UPMB "UPMB"
* #UPS "UPS"
* #UPF "UPF"
* #UPDF "UPDF"
* #UNHCR "UNHCR"
* #UCBHCA "UCBHCA"
* #MoES "MoES"
* #NGO "NGO"
* #UBTS "UBTS"
* #UOMB "UOMB"
* #UMMB "UMMB"
* #BOU "BOU"
* #SDA "SDA"


ValueSet:         CrFacilityIdentifierValueSet
Id:               cr-Facility-identifier-valueset
Title:            "CR facility Identifier ValueSet"
* ^date = "2022-02-13T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system CrFacilityIdentifierCodeSystem

CodeSystem:       CrFacilityIdentifierCodeSystem
Id:               cr-Facility-identifier
Title:            "Identifier Type"
* ^date = "2022-02-13T08:41:04.362Z"
* ^version = "0.4.0"
* #dhis2Id "DHIS2 ID"
* #mfrId "MFR ID"
* #ihrisOld "Old Ihris Id"

ValueSet:         CrFacilityOwnershipValueSet
Id:               cr-facility-ownership
Title:            "CR Facility Ownership ValueSet"
* ^date = "2023-02-22T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system CrFacilityOwnershipTypeCodeSystem

CodeSystem:      CrFacilityOwnershipTypeCodeSystem
Id:              cr-facility-ownership-type
Title:           "Facility Ownership Type"
* ^date = "2023-02-22T08:41:04.362Z"
* ^version = "0.4.0"
* #PNPF "PNFP" 
* #PFP "PFP"
* #GOV "GOV"
* #NGO "NG0"

ValueSet:         CrFacilityTypeValueSet
Id:               cr-facility-type
Title:            "Cr Facility Type ValueSet"
* ^date = "2023-02-25T08:41:04.362Z"
* ^version = "0.10.0"
* codes from system CrFacilityType

CodeSystem:      CrFacilityType
Id:              cr-facility-type
Title:           "Facility Type"
* ^date = "2023-02-25T08:41:04.362Z"
* ^version = "0.10.0"
* #Nhospital "National Referral Hospital"
* #RRhospital "Regional Referral Hospital"
* #hospital "General Hospital"
* #HCIV "Health Center IV"
* #HCIII "Health Center III"
* #HCII "Health Center II"
* #HP "Health Post"
* #LAB "Laboratory"
* #IC "Imaging Center"
* #SC "Special Clinic"
* #CLC "Clinic"
* #SPH "Specialized Hospital"
* #PHARM "Pharmacy"
* #HI "Health Institution"
* #HSC "Health Science College"
* #NRL "National Reference Laboratory"
* #DS "Drug Shop"
* #NBB "National Blood Bank"
* #RBB "Regional Blood Bank"
* #BCDP "Blood Collection and Distribution Point"

Extension:      CrFacilityOwnership
Id:             cr-facility-ownership
Title:          "Cr facility ownership type"
Description:    "Cr extension for Personal Prefix."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Ownership"
* valueCoding from CrFacilityOwnershipValueSet (required)