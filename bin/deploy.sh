#!/bin/bash

set -o errexit
set -o nounset

export SECCOMP_CONFIG_VERSION=v0.1

case ${DRONE_DEPLOY_TO} in

  'dev')
    export KUBE_NAMESPACE=kube-system
    export KUBE_SERVER=${DEV_KUBE_SERVER}
    export KUBE_TOKEN=${DEV_KUBE_TOKEN}
  ;;
  
  'test')
    export KUBE_NAMESPACE=kube-system
    export KUBE_SERVER=${TEST_KUBE_SERVER}
    export KUBE_TOKEN=${TEST_KUBE_TOKEN}
  ;;

  *)
    echo '[error] unknown deploy to target specified (in \$DRONE_DEPLOY_TO)'
    exit 1

esac

echo "--- Kube API URL: ${KUBE_SERVER}"
echo "--- Kube namespace: ${KUBE_NAMESPACE}"

kd --insecure-skip-tls-verify \
  --timeout 10m0s \
  -f kube/seccomp-daemonset.yaml 
