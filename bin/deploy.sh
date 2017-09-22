#!/bin/bash

set -o errexit
set -o nounset

export SECCOMP_CONFIG_VERSION=v0.1

export KUBE_NAMESPACE=kube-system
export KUBE_SERVER=${KUBE_SERVER}
export KUBE_TOKEN=${KUBE_TOKEN}

echo "--- Kube API URL: ${KUBE_SERVER}"
echo "--- Kube namespace: ${KUBE_NAMESPACE}"

kd --insecure-skip-tls-verify \
  --timeout 10m0s \
  -f kube/seccomp-daemonset.yaml 
