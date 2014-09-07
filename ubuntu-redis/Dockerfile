FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install --no-install-recommends -y redis-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f redis-server disable && \
    sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf

VOLUME ["/var/lib/redis"]

EXPOSE 6379

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]
