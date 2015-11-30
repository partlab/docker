FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - && \
    echo 'deb http://debian.neo4j.org/repo stable/' \
      | tee /etc/apt/sources.list.d/neo4j.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y neo4j && \
    sed -i "s|dbms.security.auth_enabled=true|dbms.security.auth_enabled=false|g" /etc/neo4j/neo4j-server.properties && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/neo4j"]

EXPOSE 7474 1337

CMD ["/usr/local/bin/run"]
