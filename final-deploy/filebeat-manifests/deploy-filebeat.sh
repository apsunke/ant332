#!/bin/bash
yq w -i -d1 filebeat-deployment.yml 'spec.template.spec.containers[0].env[1].value' $1

kubectl apply -f filebeat-deployment.yml
