FROM debian:stretch
LABEL maintainer="Fusion Developers <dev@fusionpay.org>"
LABEL description="Dockerised FusionCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
