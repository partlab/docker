FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
      | tee /etc/apt/sources.list.d/10gen.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends mongodb-org-server && \
    sed 's/^bind_ip/#bind_ip/' -i /etc/mongod.conf && \
    sed 's/^#httpinterface/httpinterface/' -i /etc/mongod.conf && \
    sed 's/^#port/port/' -i /etc/mongod.conf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f mongod disable

VOLUME ["/var/lib/mongodb"]

EXPOSE 27017 28017

CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
