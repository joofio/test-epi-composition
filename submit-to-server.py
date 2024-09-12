import requests
from os import listdir
import json


FOLDER = "../test-epi-composition/fsh-generated/resources"
SERVER = "https://sandbox.hl7europe.eu/gravitate-health/fhir"


ORDER_LIST = [
    "Organization",
    "MedicinalProductDefinition",
    # "ManufacturedItemDefinition",
    # "RegulatedAuthorization",
    # "AdministrableProductDefinition",
    # "Ingredient",
    # "Substance",
    # "ClinicalUseDefinition",
    # "PackagedProductDefinition",
    "Bundle",
    "Composition",
    "List",
]
# 37d610f9c96d541562699215b0864126 xenical
# 6eb523b7a88cd6dcee848368833cbd08 dovato
# 3a3583227b4c5b0887f1e0d38269b469 humira
# d99852efa4d4976d99a584078a2ca48c karvea
# c29ba23bb04c16ab758f150fe41d6513 remsima
# 040bd687344f34655b854f4b67248074 skillarence
# 3063ae54c8b95c21a8b236c970f9eb21 ogivri / trastuzumab


BLOCKLIST = [
    "37d610f9c96d541562699215b0864126",
    "6eb523b7a88cd6dcee848368833cbd08",
    "3a3583227b4c5b0887f1e0d38269b469",
    "d99852efa4d4976d99a584078a2ca48c",
    "c29ba23bb04c16ab758f150fe41d6513",
    "040bd687344f34655b854f4b67248074",
    "3063ae54c8b95c21a8b236c970f9eb21",
]

h = {"Cache-Control": "no-cache", "Pragma": "no-cache"}
for file in listdir(FOLDER):
    res = file.split("-")[0]
    if res == "Organization":
        f = open(FOLDER + "/" + file)
        data = json.load(f)
        id_ = data["id"]
        x = requests.put(SERVER + "/" + res + "/" + id_, json=data, headers=h)
        #          print(x.status_code)
        if x.status_code == 400:
            print(res)
            print(x.text)

for file in listdir(FOLDER):
    res = file.split("-")[0]
    if res == "Bundle" and not any(substring in file for substring in BLOCKLIST):
        f = open(FOLDER + "/" + file)
        data = json.load(f)
        id_ = data["id"]
        # print(id_)
        for item in ORDER_LIST:
            for resources in data["entry"]:
                # print(resources)
                res1 = resources["resource"]["resourceType"]
                id_1 = resources["resource"]["id"]
                data_ = resources["resource"]
                #       print(res1, id_1)
                if res1 == item:
                    x = requests.put(
                        SERVER + "/" + res1 + "/" + id_1, json=data_, headers=h
                    )
                    #          print(x.status_code)
                    if x.status_code == 400:
                        print(res)
                        print(x.text)
            id_ = data["id"]
        x = requests.put(SERVER + "/" + res + "/" + id_, json=data, headers=h)
        #          print(x.status_code)
        if x.status_code == 400:
            print(res)
            print(x.text)
for file in listdir(FOLDER):
    res = file.split("-")[0]
    if res == "List":
        f = open(FOLDER + "/" + file)
        data = json.load(f)
        id_ = data["id"]
        x = requests.put(SERVER + "/" + res + "/" + id_, json=data, headers=h)
        #          print(x.status_code)
        if x.status_code == 400:
            print(res)
            print(x.text)
