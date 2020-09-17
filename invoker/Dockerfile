FROM ubuntu:18.04
RUN apt update && apt install -y curl
COPY invoke.sh /invoke.sh
ENTRYPOINT /invoke.sh
