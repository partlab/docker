## partlab/ubuntu-neo4j

Docker image to run an out of the box neo4j.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-neo4j .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-neo4j
```

#### Running the neo4j server 

```bash
$ docker run -d -p 7474:7474 --name neo4j partlab/ubuntu-neo4j
```

#### Running the neo4j server with persistent directory

```bash
$ docker run -d -p 7474:7474 --name neo4j -v <data-dir>:/var/lib/neo4j partlab/ubuntu-neo4j
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker halt
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port7474,tcp,,7474,,7474"
$ boot2docker up
```
