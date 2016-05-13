FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

ENV NODEJS_VERSION 6.1.0
ENV NODEJS_PCK node-v$NODEJS_VERSION-linux-x64

RUN cd /opt && wget https://nodejs.org/dist/v$NODEJS_VERSION/$NODEJS_PCK.tar.gz && \
    tar zxf $NODEJS_PCK.tar.gz && rm $NODEJS_PCK.tar.gz && \
    ln -s /opt/$NODEJS_PCK/bin/node /usr/bin/node && \
    ln -s /opt/$NODEJS_PCK/bin/npm /usr/bin/ && \
    apt-get update && apt-get install python build-essential -y && \
    npm install -g node-gyp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/node"]
