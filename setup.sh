#!/bin/bash
export KUMA_VALUES=./kuma-values.yaml
curl -ls https://raw.githubusercontent.com/kumahq/kuma-tools/master/gcloud_standalone.sh | bash -

kubectl apply -k k8s
