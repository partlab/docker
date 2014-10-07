FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install --no-install-recommends -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f nginx disable

VOLUME ["/var/www"]

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
