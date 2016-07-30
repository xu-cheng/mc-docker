FROM centos:centos7
MAINTAINER Xu Cheng <xucheng@me.com>

RUN yum install -y cronie ruby java-1.8.0-openjdk

ADD ./scripts /scripts
RUN chmod +x /scripts/*
RUN /scripts/build
ADD ./ops.txt /minecraft

EXPOSE 25565 25575
VOLUME ["/data"]
CMD    ["/scripts/start"]
