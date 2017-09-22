#!/bin/bash -e

mkdir -p /var/lib/kubelet/seccomp
cp seccomp.json /var/lib/kubelet/seccomp

tail -f /dev/null
