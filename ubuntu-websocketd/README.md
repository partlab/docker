## partlab/ubuntu-websocketd

Simple base docker image to run [websocketd](http://websocketd.com/).

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-websocketd .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-websocketd
```

#### Using (example)

On Dockerfile

FROM partlab/ubuntu-websocketd
ADD . /<path>/filename.sh

```bash
$ docker build -t <websocket-name> .
$ docker run -d -p 8080:8080 --name websocket <websocket-name> websocketd --port=8080 --devconsole /<path>/filename.sh
```

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker halt
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port8080,tcp,,8080,,8080"
$ boot2docker up
```
