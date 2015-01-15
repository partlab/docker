FROM partlab/ubuntu-php5

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add - && \
    echo 'deb http://dl.hhvm.com/ubuntu utopic main' \
      | tee /etc/apt/sources.list.d/hhvm.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y hhvm libmemcached-dev libgmp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/hhvm"]
