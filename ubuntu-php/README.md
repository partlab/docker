## partlab/ubuntu-php

Simple base docker image to run php applications.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-php .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-php
```

#### Using (example)

On Dockerfile

FROM partlab/ubuntu-php
ADD . /<path>

```bash
$ docker build -t <website-name> .
$ docker run -d -p 8080:8080 --name mywebsite <website-name> php -S 0.0.0.0:8080 -t /<path>
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker halt
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8080,tcp,,8080,,8080"
$ boot2docker up
```
