## partlab/ubuntu-tmate

A docker image with tmate - a fork tmux with share 

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-tmate .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-tmate
```

#### Usage

```bash
$ docker run -ti --rm -p 2222:2222 partlab/ubuntu-tmate
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port2222,tcp,,2222,,2222"
$ boot2docker up
```
