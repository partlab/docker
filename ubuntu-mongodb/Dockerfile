FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
      | tee /etc/apt/sources.list.d/10gen.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends mongodb-org && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/data/db"]

EXPOSE 27017 28017

CMD ["/usr/bin/mongod", "--smallfiles"]
