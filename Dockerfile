FROM ubuntu:18.04
MAINTAINER mars119<f1195751600@gmail.com>

ENV WORKPATH /usr/phddns

WORKDIR $WORKPATH

COPY *.deb ./

RUN apt update
RUN apt install wget -y
CMD  dpkg -i *.deb && /bin/bash
