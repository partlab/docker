DOCKER=docker

.PHONY: all clean

all: build push


# Build images

build: b_os b_langs b_frameworks b_dbs b_services b_tools

b_os:
	$(DOCKER) build -t partlab/ubuntu ./ubuntu

b_langs:
	$(DOCKER) build -t partlab/ubuntu-ruby ./ubuntu-ruby
	$(DOCKER) build -t partlab/ubuntu-java ./ubuntu-java
	$(DOCKER) build -t partlab/ubuntu-scala ./ubuntu-scala
	$(DOCKER) build -t partlab/ubuntu-php5 ./ubuntu-php5
	$(DOCKER) build -t partlab/ubuntu-hhvm ./ubuntu-hhvm
	$(DOCKER) build -t partlab/ubuntu-iojs ./ubuntu-iojs
	$(DOCKER) build -t partlab/ubuntu-golang ./ubuntu-golang

b_frameworks:
	$(DOCKER) build -t partlab/ubuntu-meteor ./ubuntu-meteor
	$(DOCKER) build -t partlab/ubuntu-typesafe ./ubuntu-typesafe

b_dbs:
	$(DOCKER) build -t partlab/ubuntu-mariadb ./ubuntu-mariadb
	$(DOCKER) build -t partlab/ubuntu-postgresql ./ubuntu-postgresql
	$(DOCKER) build -t partlab/ubuntu-couchdb ./ubuntu-couchdb
	$(DOCKER) build -t partlab/ubuntu-mongodb ./ubuntu-mongodb
	$(DOCKER) build -t partlab/ubuntu-redis ./ubuntu-redis
	$(DOCKER) build -t partlab/ubuntu-neo4j ./ubuntu-neo4j

b_services:
	$(DOCKER) build -t partlab/ubuntu-elasticsearch ./ubuntu-elasticsearch
	$(DOCKER) build -t partlab/ubuntu-nginx ./ubuntu-nginx
	$(DOCKER) build -t partlab/ubuntu-websocketd ./ubuntu-websocketd

b_tools:
	$(DOCKER) build -t partlab/ubuntu-tmate ./ubuntu-tmate
	$(DOCKER) build -t partlab/ubuntu-jenkins ./ubuntu-jenkins
	$(DOCKER) build -t partlab/ubuntu-droneci ./ubuntu-droneci


# Push on registry

push: ps_os p_langs p_frameworks p_dbs p_services

p_os:
	$(DOCKER) push partlab/ubuntu

p_langs:
	$(DOCKER) push partlab/ubuntu-ruby
	$(DOCKER) push partlab/ubuntu-java
	$(DOCKER) push partlab/ubuntu-scala
	$(DOCKER) push partlab/ubuntu-php5
	$(DOCKER) push partlab/ubuntu-hhvm
	$(DOCKER) push partlab/ubuntu-iojs

p_frameworks:
	$(DOCKER) push partlab/ubuntu-meteor
	$(DOCKER) push partlab/ubuntu-typesafe

p_dbs:
	$(DOCKER) push partlab/ubuntu-mariadb
	$(DOCKER) push partlab/ubuntu-postgresql
	$(DOCKER) push partlab/ubuntu-couchdb
	$(DOCKER) push partlab/ubuntu-mongodb
	$(DOCKER) push partlab/ubuntu-redis

p_services:
	$(DOCKER) push partlab/ubuntu-elasticsearch
	$(DOCKER) push partlab/ubuntu-nginx
	$(DOCKER) push partlab/ubuntu-websocketd

p_tools:
	$(DOCKER) push partlab/ubuntu-tmate
	$(DOCKER) push partlab/ubuntu-jenkins
	$(DOCKER) push partlab/ubuntu-droneci


# Delete all images

clean:
	$(DOCKER) images --no-trunc | grep partlab | awk '{print $$3}' | xargs docker rmi
