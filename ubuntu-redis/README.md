## partlab/ubuntu-redis

Docker image to run an out of the box Redis server.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-redis .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-redis
```

#### Running the Redis server

```bash
$ docker run -d -p 6379:6379 --name redis partlab/ubuntu-redis
```

#### Running the Redis server with persistent directory

```bash
$ docker run -d -p 6379:6379 --name redis -v <data-dir>/db:/var/lib/redis partlab/ubuntu-redis
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port6379,tcp,,6379,,6379"
$ boot2docker up
```
