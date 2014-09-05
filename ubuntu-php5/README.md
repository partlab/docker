## partlab/ubuntu-php5

Simple base docker image to run PHP5 applications.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-php5 .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-php5
```

#### Using (example)

On Dockerfile

FROM partlab/ubuntu-php5
ADD . /<path>

```bash
$ docker build -t <website-name> .
$ docker run -d -p 8080:8080 --name mywebsite <website-name> php -S 0.0.0.0:8080 -t /<path>
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8080,tcp,,8080,,8080"
$ boot2docker up
```
