#!/bin/bash -e
cp /home/config/seccomp.json /var/lib/kubelet/seccomp

tail -f /dev/null
