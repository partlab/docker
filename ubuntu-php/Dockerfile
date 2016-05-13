FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install --no-install-recommends -y php \
    php-fpm php-cli php-mysqlnd php-pgsql php-sqlite3 php-redis \
    php-apcu php-intl php-imagick php-mcrypt \
    php-json php-gd php-curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/php"]
