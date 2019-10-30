#!/bin/bash
yq w -i logstash-deployment.yml 'spec.template.spec.containers[0].env[1].value' $1

kubectl apply -f logstash-namespace.yml
kubectl apply -f logstash-cm.yml
kubectl apply -f logstash-deployment.yml
sleep 10
kubectl -n logstash get pod -oyaml | yq r - 'items[0].status.podIP'
