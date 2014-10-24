FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install --no-install-recommends -y php5 \
    php5-fpm php5-cli php5-mysqlnd php5-pgsql php5-sqlite php5-redis \
    php5-apcu php5-intl php5-imagick php5-mcrypt \
    php5-json php5-gd php5-curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/php"]
