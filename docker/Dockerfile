FROM debian:stretch
LABEL maintainer="AurumCoinHunter Developers <dev@aurumcoinhunter.org>"
LABEL description="Dockerised AurumCoinHunterCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
