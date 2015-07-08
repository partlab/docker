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
    sed -i "s|#node_auto_indexing|node_auto_indexing|g" /var/lib/neo4j/conf/neo4j.properties && \
    sed -i "s|#node_keys_indexable|node_keys_indexable|g" /var/lib/neo4j/conf/neo4j.properties && \
    echo "remote_shell_host=0.0.0.0" >> /var/lib/neo4j/conf/neo4j.properties && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/neo4j"]

EXPOSE 7474 1337

CMD ["/usr/local/bin/run"]
