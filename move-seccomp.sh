#!/bin/sh -e

mkdir -p /var/lib/kubelet/seccomp/
cp test.json /var/lib/kubelet/seccomp/

tail -f /dev/null
