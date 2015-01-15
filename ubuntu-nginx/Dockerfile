FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install --no-install-recommends -y nginx && \
    apt-get clean && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/var/www", "/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d"]

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
