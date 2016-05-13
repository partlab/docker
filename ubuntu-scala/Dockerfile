FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV SCALA_VERSION 2.11.8
ENV SCALA_PKG scala-$SCALA_VERSION

RUN echo 'deb http://dl.bintray.com/sbt/debian /' \
      | tee /etc/apt/sources.list.d/sbt.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y --force-yes sbt && \
    wget http://www.scala-lang.org/files/archive/$SCALA_PKG.deb && \
    dpkg -i $SCALA_PKG.deb && rm $SCALA_PKG.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["scala"]
