FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN cd /opt && wget http://downloads.typesafe.com/typesafe-activator/1.2.10/typesafe-activator-1.2.10.zip
RUN apt-get update && apt-get install -y unzip
RUN cd /opt && unzip typesafe-activator-1.2.10.zip
RUN ln -s /opt/activator-1.2.10 /opt/activator
RUn rm -f /opt/typesafe-activator-1.2.10.zip
RUN apt-get remove --purge -y unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/opt/activator-1.2.10"]

EXPOSE 8888 9000

CMD ["/opt/activator-1.2.10/activator", "ui", "-Dhttp.address=0.0.0.0"]
