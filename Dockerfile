FROM ubuntu:18.04

MAINTAINER mars119<f1195751600@gmail.com>

RUN apt update

RUN apt -y install wget net-tools psmisc lsb-release && apt autoclean

ENV WORKPATH /var/log/phddns/

WORKDIR $WORKPATH

ADD https://down.oray.com/hsk/linux/phddns_5.2.0_amd64.deb phddns_5.2.0_amd64.deb

CMD dpkg -i *.deb && tail -q -n 10 -f /var/log/phddns/*.log
