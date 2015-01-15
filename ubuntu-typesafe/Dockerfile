FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV TYPESAFE_VERSION 1.2.12

RUN cd /opt && wget http://downloads.typesafe.com/typesafe-activator/$TYPESAFE_VERSION/typesafe-activator-$TYPESAFE_VERSION.zip && \
    apt-get update && apt-get install -y unzip && \
    cd /opt && unzip typesafe-activator-$TYPESAFE_VERSION.zip && \
    ln -s /opt/activator-$TYPESAFE_VERSION /opt/activator && \
    rm -f /opt/typesafe-activator-$TYPESAFE_VERSION.zip && \
    apt-get remove --purge -y unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/opt/activator-$TYPESAFE_VERSION"]

EXPOSE 8888 9000

CMD ["/opt/activator-$TYPESAFE_VERSION/activator", "ui", "-Dhttp.address=0.0.0.0"]
