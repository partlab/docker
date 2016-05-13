FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV PG_VERSION 9.5

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8 && \
    echo 'deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main' \
      | tee /etc/apt/sources.list.d/postgresql.list && \
    apt-get update && \
    apt-get install -y -q --no-install-recommends \
      postgresql-$PG_VERSION postgresql-client-$PG_VERSION postgresql-contrib-$PG_VERSION && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/$PG_VERSION/main/pg_hba.conf && \
    echo "listen_addresses='*'" >> /etc/postgresql/$PG_VERSION/main/postgresql.conf  && \
    rm -rf /var/lib/postgresql/$PG_VERSION/main && \
    update-rc.d -f postgresql disable

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/postgresql"]

EXPOSE 5432

CMD ["/usr/local/bin/run"]
