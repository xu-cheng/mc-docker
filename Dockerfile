FROM centos:centos7
MAINTAINER Xu Cheng <xucheng@me.com>

RUN yum install -y cronie ruby java-1.8.0-openjdk

ADD ./scripts /scripts
RUN chmod +x /scripts/*
RUN /scripts/build

EXPOSE 25565
VOLUME ["/data"]
CMD    ["/scripts/start"]
