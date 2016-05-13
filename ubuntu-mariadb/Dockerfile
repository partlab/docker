FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db && \
    echo 'deb http://download.nus.edu.sg/mirror/mariadb/repo/10.1/ubuntu vivid main' \
      | tee /etc/apt/sources.list.d/mariadb.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y mariadb-server && \
    sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f mysql disable

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/usr/local/bin/run"]
