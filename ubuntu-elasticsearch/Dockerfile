FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add - && \
    echo 'deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main' \
      | tee /etc/apt/sources.list.d/elasticsearch.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y elasticsearch && \
    /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/elasticsearch"]

EXPOSE 9200 9300

CMD ["/usr/local/bin/run"]
