#!/bin/sh -e

cp seccomp.json /var/lib/kubelet/seccomp/

tail -f /dev/null
