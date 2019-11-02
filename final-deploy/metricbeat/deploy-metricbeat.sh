#!/bin/bash
yq w -i -d2 metricbeat-deployment.yaml 'spec.template.spec.containers[0].env[0].value' $1

yq w -i -d2 metricbeat-deployment.yaml 'spec.template.spec.containers[0].env[1].value' $2

yq w -i -d5 metricbeat-deployment.yaml 'spec.template.spec.containers[0].env[0].value' $1

yq w -i -d5 metricbeat-deployment.yaml 'spec.template.spec.containers[0].env[1].value' $2

kubectl apply -f metricbeat-deployment.yaml
