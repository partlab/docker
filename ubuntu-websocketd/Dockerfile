FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV WEBSKD_VERSION 0.2.12

RUN wget https://github.com/joewalnes/websocketd/releases/download/v$WEBSKD_VERSION/websocketd-$WEBSKD_VERSION\_amd64.deb && \
    dpkg -i websocketd-$WEBSKD_VERSION\_amd64.deb && \
    rm websocketd-$WEBSKD_VERSION\_amd64.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080
