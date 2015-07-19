FROM partlab/ubuntu-iojs

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN curl https://install.meteor.com/ | sh

CMD ["/usr/local/bin/meteor"]
