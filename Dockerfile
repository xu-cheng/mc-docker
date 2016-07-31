FROM i386/java:8-jre
MAINTAINER Xu Cheng <xucheng@me.com>

RUN apt-get update && apt-get install -y cron ruby \
    && rm -rf /var/lib/apt/lists/*

ADD ./scripts /scripts
RUN chmod +x /scripts/*
RUN /scripts/build
ADD ./ops.txt /minecraft

EXPOSE 25565 25575
VOLUME ["/data"]
CMD    ["/scripts/start"]
