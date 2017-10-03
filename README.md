# seccomp-config

This repository is for updating seccomp configuration on all kubernetes nodes. It does this by running a daemonset on kubernetes which deploys a pod that mounts the seccomp kubelet directory. Feel free to make any issues or pull requests and I'll get arround to responding.

# Using seccomp

To bind a specific profile to a Pod, you can use the following alpha annotations:
 
 - Specify a Seccomp profile for all containers of the Pod: seccomp.security.alpha.kubernetes.io/pod
 - Specify a Seccomp profile for an individual container: container.seccomp.security.alpha.kubernetes.io/${container_name}

For the value of the annotation you can use one of the following contents:

Value | Description
----- | -----------
runtime/default | the default profile for the container runtime
unconfined (not recommended) | unconfined profile, disable Seccomp sandboxing
localhost/\<profile-name\> | the profile installed to the nodes local seccomp profile root

A list of profiles installed to the node seccomp root are:

 - deny-all.json
 - default.json (docker default profile)
