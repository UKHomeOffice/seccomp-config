FROM alpine:latest

LABEL description="Seccomp config docker image" \
      maintainer="Ben Eustace <ben.eustace@digital.homeoffice.gov.uk>"

WORKDIR /home/config

COPY seccomp.json /home/config/seccomp.json

ENTRYPOINT ["cp", "/home/config/seccomp.json", "/var/lib/kubelet/seccomp"]
