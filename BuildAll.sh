#!/bin/bash

oc new-project pgAdmin-php \
    --description="pgAdmin php" \
    --display-name="pgAdmin php"

echo "pgAdmin"
oc create -f phpPgAdmin/BuildConfig.yaml
oc create -f phpPgAdmin/ImageStream.yaml
oc create -f phpPgAdmin/DeploymentConfig.yaml
oc create -f phpPgAdmin/Services.yaml
oc create -f phpPgAdmin/Route.yaml
oc start-build phppgadmin
