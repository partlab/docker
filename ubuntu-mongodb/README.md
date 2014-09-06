## partlab/ubuntu-mongodb

Docker image to run an out of the box MongoDB.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-mongodb .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-mongodb
```

#### Running the MongoDB server

```bash
$ docker run -d -p 27017:27017 -p 28017:28017 --name mongodb partlab/ubuntu-mongodb
```

#### Running the MongoDB server with persistent directory

```bash
$ docker run -d -p 27017:27017 -p 28017:28017 --name mongodb -v <data-dir>/db:/var/lib/mongodb partlab/ubuntu-mongodb
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port27017,tcp,,27017,,27017"
$ VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port28017,tcp,,28017,,28017"
$ boot2docker up
```
