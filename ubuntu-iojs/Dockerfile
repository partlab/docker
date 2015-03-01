FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV IOJS_VERSION 1.4.1
ENV IOJS_PCK iojs-v$IOJS_VERSION-linux-x64

RUN cd /opt && wget https://iojs.org/dist/v$IOJS_VERSION/$IOJS_PCK.tar.gz && \
    tar zxf $IOJS_PCK.tar.gz && rm $IOJS_PCK.tar.gz && \
    ln -s /opt/$IOJS_PCK/bin/iojs /usr/bin/ && \
    ln -s /opt/$IOJS_PCK/bin/iojs /usr/bin/node && \
    ln -s /opt/$IOJS_PCK/bin/npm /usr/bin/ && \
    apt-get update && apt-get install python build-essential -y && \
    npm install -g node-gyp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/iojs"]
