FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN wget http://downloads.drone.io/master/drone.deb && \
    dpkg -i drone.deb && \
    rm drone.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/drone

EXPOSE 80

CMD ["/usr/local/bin/droned", "--config", "/etc/drone/drone.toml"]
