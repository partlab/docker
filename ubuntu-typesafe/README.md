## partlab/ubuntu-typesafe

Docker image to run an out of the box Typesafe Activator.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-typesafe .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-typesafe
```

#### Running the Typesafe Activator server 

```bash
$ docker run -d -p 8888:8888 -p 9000:9000 --name typesafe partlab/ubuntu-typesafe
```

#### Running the Typesafe Activator server with persistent directory

```bash
$ docker run -d -p 8888:8888 -p 9000:9000 --name typesafe -v <src-dir>:/opt/activator-1.2.10 partlab/ubuntu-typesafe
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker halt
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8888,tcp,,8888,,8888"
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port9000,tcp,,9000,,9000"
$ boot2docker up
```
