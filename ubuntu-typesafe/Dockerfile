FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV TYPESAFE_VERSION 1.3.6
ENV TYPESAFE_PKG typesafe-activator-$TYPESAFE_VERSION

RUN cd /opt && wget http://downloads.typesafe.com/typesafe-activator/$TYPESAFE_VERSION/$TYPESAFE_PKG.zip && \
    apt-get update && apt-get install -y unzip && \
    unzip $TYPESAFE_PKG.zip && \
    ln -s /opt/activator-$TYPESAFE_VERSION /opt/activator && \
    rm -f /opt/$TYPESAFE_PKG.zip && \
    apt-get remove --purge -y unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/opt/activator"]

EXPOSE 8888 9000

CMD ["/opt/activator/activator", "ui", "-Dhttp.address=0.0.0.0"]
