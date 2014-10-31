## partlab/ubuntu-droneci

Docker image to run an out of the box Drone CI.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-droneci .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-droneci
```

#### Running the Drone CI server 

```bash
$ docker run -d -p 8080:80 --name droneci partlab/ubuntu-droneci
```

#### Running the Drone CI server with persistent directory

```bash
$ docker run -d -p 8080:80  --name droneci -v <data-dir>:/var/lib/drone partlab/ubuntu-droneci
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8080,tcp,,8080,,8080"
$ boot2docker up
```
