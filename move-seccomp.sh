#!/bin/sh -e

mkdir -p /var/lib/kubelet/seccomp/
cp !(move-seccomp.sh) /var/lib/kubelet/seccomp/

tail -f /dev/null
