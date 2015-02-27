FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV IOJS_VERSION 1.4.1
ENV IOJS_PCK iojs-v$IOJS_VERSION-linux-x64

RUN cd /opt && wget https://iojs.org/dist/v$IOJS_VERSION/$IOJS_PCK.tar.gz && \
    tar zxf $IOJS_PCK.tar.gz && rm $IOJS_PCK.tar.gz && \
    cp $IOJS_PCK/bin/* /usr/bin

CMD ["/usr/bin/iojs"]
