Alias: $spor-org = https://spor.ema.europa.eu/omswi
Alias: $spor-rms = https://spor.ema.europa.eu/rmswi
Alias: $spor-productNamePartType-cs = https://spor.ema.europa.eu/lists/220000000000 // Medicinal Product Name Part Type

Instance: mah-ema
Instance: mah-ema
InstanceOf: OrganizationUvEpi
Title: "ACME industry as Marketing authorisation holder"
Description: "ACME industry as Marketing authorisation holder"
Usage: #inline

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
    


Instance: mock
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product acmedrug-man"
Description: "acmedrug-man"
Usage: #inline

 
* identifier[+].system = "http://fakesys.com/ids"
* identifier[=].value = "ididid"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "acmedrug-man"
  * type = $spor-productNamePartType-cs#220000000001 "Full name" 
  
  * part[0]
    * part = "acme"
    * type = $spor-productNamePartType-cs#220000000002 "Invented name part"
  
  * part[+]
    * part = "acmedrug"
    * type = $spor-productNamePartType-cs#220000000003 "Scientific name part"
  
  * part[+]
    * part = "75 mg"
    * type = $spor-productNamePartType-cs#220000000004 "Strength part"
  
  * part[+]
    * part = "tablet"
    * type = $spor-productNamePartType-cs#220000000005 "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#DK "Denmark"
    * jurisdiction = urn:iso:std:iso:3166#DK "Denmark"
    * language = urn:ietf:bcp:47#en  "English"

