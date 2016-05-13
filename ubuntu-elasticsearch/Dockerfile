FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV PATH=$PATH:/usr/share/elasticsearch/bin

RUN wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add - && \
    echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' \
      | tee /etc/apt/sources.list.d/elasticsearch.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y elasticsearch && \
    /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/share/elasticsearch

RUN set -ex \
  && for path in \
  ./data \
    ./logs \
    ./config \
    ./config/scripts \
  ; do \
    mkdir -p "$path"; \
    chown -R elasticsearch:elasticsearch "$path"; \
  done

COPY ./config /usr/share/elasticsearch/config

USER elasticsearch

VOLUME ["/usr/share/elasticsearch"]

EXPOSE 9200 9300

CMD ["elasticsearch"]
