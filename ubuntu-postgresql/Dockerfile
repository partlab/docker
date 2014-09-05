FROM partlab/ubuntu

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8 && \
    echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' \
      | tee /etc/apt/sources.list.d/postgresql.list && \
    apt-get update && \
    apt-get install -y -q --no-install-recommends \
      postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3 && \
    apt-get clean && \
    echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf && \
    echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf  && \
    rm -rf /var/lib/postgresql/9.3/main && \
    update-rc.d -f postgresql disable

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/postgresql"]

EXPOSE 5432

CMD ["/usr/local/bin/run"]
