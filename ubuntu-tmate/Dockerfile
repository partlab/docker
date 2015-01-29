FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN add-apt-repository ppa:nviennot/tmate && \
    apt-get update && \
    apt-get install --no-install-recommends -y openssh-server tmate && \
    echo -e 'y\n'|ssh-keygen -q -t rsa -N "" -f ~/.ssh/id_rsa && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 2222

CMD ["/usr/bin/tmate"]
