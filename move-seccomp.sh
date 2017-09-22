#!/bin/sh -e

mkdir -p /var/lib/kubelet/seccomp/
cp * /var/lib/kubelet/seccomp/

tail -f /dev/null
