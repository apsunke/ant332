#!/bin/bash

# Naming convention follows https://vpc-aes-lab-domain-z4rpgpj6to2uzlsc3thgvoqtuq.eu-west-1.es.amazonaws.com:443
yq w -i logstash-deployment.yml 'spec.template.spec.containers[0].env[1].value' $1

kubectl apply -f logstash-namespace.yml
kubectl apply -f logstash-cm.yml
kubectl apply -f logstash-deployment.yml
sleep 10
kubectl -n logstash get pod -oyaml | yq r - 'items[0].status.podIP'
