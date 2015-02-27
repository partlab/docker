## partlab/ubuntu-jenkins

Docker image to run an out of the box Jenkins.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-jenkins .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-jenkins
```

#### Running the Jenkins server 

```bash
$ docker run -d -p 8080:8080 -p 50000:50000 --name jenkins partlab/ubuntu-jenkins
```

#### Running the Jenkins server with persistent directory

```bash
$ docker run -d -p 8080:8080 -p 50000:50000 --name jenkins -v <data-dir>:/var/jenkins partlab/ubuntu-jenkins
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker halt
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8080,tcp,,8080,,8080"
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port50000,tcp,,50000,,50000"
$ boot2docker up
```

