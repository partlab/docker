## partlab/ubuntu-elasticsearch

Docker image to run an out of the box Elasticsearch.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-elasticsearch .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-elasticsearch
```

#### Running the Elasticsearch server 

```bash
$ docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch partlab/ubuntu-elasticsearch
```

#### Running the Elasticsearch server with persistent directory

```bash
$ docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch -v <data-dir>/db:/var/lib/elasticsearch partlab/ubuntu-elasticsearch
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port9200,tcp,,9200,,9200"
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port9300,tcp,,9300,,9300"
$ boot2docker up
```
