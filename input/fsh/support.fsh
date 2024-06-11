Alias: $spor-org = https://spor.ema.europa.eu/omswi
Alias: $spor-rms = https://spor.ema.europa.eu/rmswi
Alias: $spor-productNamePartType-cs = https://spor.ema.europa.eu/lists/220000000000 // Medicinal Product Name Part Type
// Nordic compendium
Alias: $100000155531 = https://spor.ema.europa.eu/v1/lists/100000155531/terms/
Alias: $200000029659 = https://spor.ema.europa.eu/v1/lists/200000029659/terms/
Alias: $minzdrav = https://www.minzdrav.gov.ru/
Alias: $ncit = http://ncit.nci.nih.gov
Alias: $smpc = http://medicines.org.uk/smpc
Alias: $substance-name-type = http://hl7.org/fhir/substance-name-type
Alias: $medrt = http://hl7.org/fhir/medrt
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $section = https://gravitatehealth.eu/section
Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $ingredient-role = http://hl7.org/fhir/ingredient-role
Alias: $v3-RoleClass = http://terminology.hl7.org/CodeSystem/v3-RoleClass
Alias: $ncimeta = http://ncimeta.nci.nih.gov

Alias: $100000000005 = http://spor.ema.europa.eu/v1/100000000005
Alias: $100000000004 = http://spor.ema.europa.eu/v1/100000000004
Alias: $example-pi-list-types = http://spor.ema.europa.eu/v1/example-pi-list-types
Alias: $100000072057 = http://spor.ema.europa.eu/v1/100000072057



Instance: mah-ema
InstanceOf: OrganizationUvEpi
Title: "ACME industry as Marketing authorisation holder"
Description: "ACME industry as Marketing authorisation holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100000789"
* identifier.use = #official
* active = true 
* type = $spor-rms#220000000034  "Marketing authorisation holder"
//* type.text = "Marketing authorisation holder"
* name = "ACME industry"


* contact
  * address
    * text = "street x and y Paris FR"
    * use = #work
    * type = #physical
    * line = "street x and y"
    * city = "Paris"
    * country = "FR"
    

