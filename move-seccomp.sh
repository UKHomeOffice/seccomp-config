
set -o errexit
set -o nounset
set -o pipefail

cp /home/config/seccomp.json /var/lib/kubelet/seccomp

while :
do

  sleep 1

  if [ls /var/lib/kubelet/seccomp/ | grep seccomp.json != "seccomp.json"]
  then
    break
  fi 

done
