DOCKER=docker

.PHONY: all clean

all:
	$(DOCKER) build -t partlab/ubuntu ./ubuntu
	$(DOCKER) build -t partlab/ubuntu-ruby ./ubuntu-ruby
	$(DOCKER) build -t partlab/ubuntu-java ./ubuntu-java
	$(DOCKER) build -t partlab/ubuntu-php5 ./ubuntu-php5
	$(DOCKER) build -t partlab/ubuntu-hhvm ./ubuntu-hhvm
	$(DOCKER) build -t partlab/ubuntu-mariadb ./ubuntu-mariadb
	$(DOCKER) build -t partlab/ubuntu-postgresql ./ubuntu-postgresql
	$(DOCKER) build -t partlab/ubuntu-couchdb ./ubuntu-couchdb
	$(DOCKER) build -t partlab/ubuntu-mongodb ./ubuntu-mongodb
	$(DOCKER) build -t partlab/ubuntu-redis ./ubuntu-redis
	$(DOCKER) build -t partlab/ubuntu-elasticsearch ./ubuntu-elasticsearch
	$(DOCKER) build -t partlab/ubuntu-nginx ./ubuntu-nginx
	$(DOCKER) build -t partlab/ubuntu-typesafe ./ubuntu-typesafe
	$(DOCKER) build -t partlab/ubuntu-jenkins ./ubuntu-jenkins
	$(DOCKER) build -t partlab/ubuntu-droneci ./ubuntu-droneci

push:
	$(DOCKER) push partlab/ubuntu
	$(DOCKER) push partlab/ubuntu-ruby
	$(DOCKER) push partlab/ubuntu-java
	$(DOCKER) push partlab/ubuntu-php5
	$(DOCKER) push partlab/ubuntu-hhvm
	$(DOCKER) push partlab/ubuntu-mariadb
	$(DOCKER) push partlab/ubuntu-postgresql
	$(DOCKER) push partlab/ubuntu-couchdb
	$(DOCKER) push partlab/ubuntu-mongodb
	$(DOCKER) push partlab/ubuntu-redis
	$(DOCKER) push partlab/ubuntu-elasticsearch
	$(DOCKER) push partlab/ubuntu-nginx
	$(DOCKER) push partlab/ubuntu-typesafe
	$(DOCKER) push partlab/ubuntu-jenkins
	$(DOCKER) push partlab/ubuntu-droneci

clean:
	$(DOCKER) images --no-trunc | grep partlab | awk '{print $$3}' | xargs docker rmi
