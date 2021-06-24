#!/bin/bash

### MODE SECURE
set -u # en cas de variable non définit, arreter le script
set -e # en cas d'erreur (code de retour non-zero) arreter le script

templateFile="template2.json"
devParameterFile="parametersFile.json"

az group create --name tp2-kevin-template --location "East US"

az deployment group create --name deploy-kevin --resource-group tp2-kevin-template --template-file $templateFile --parameters $devParameterFile