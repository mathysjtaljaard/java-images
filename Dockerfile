FROM oraclelinux:7-slim

RUN yum -y update \
  && yum install -y wget

COPY ./jre-8u15*-linux-x64.rpm /tmp

RUN mkdir -p /usr/share/man && mkdir -p /usr/share/man/man1 \
  && cd /tmp \
  && yum localinstall -y jre-8u15*-linux-x64.rpm
