FROM alpine:latest

LABEL description="Seccomp config docker image" \
      maintainer="Ben Eustace <ben.eustace@digital.homeoffice.gov.uk>"

WORKDIR /home/config

COPY config/* /home/config/
COPY move-seccomp.sh /home/config/move-seccomp.sh

ENTRYPOINT ["./move-seccomp.sh"]
