## partlab/ubuntu-golang

Simple base docker image to run golang applications

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-golang .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-golang
```

#### Usage

#### Using (example)

On Dockerfile

FROM partlab/ubuntu-golang

ADD . /opt/go/src/myapp

RUN go get github.com/gin-gonic/gin
RUN go install myapp

ENTRYPOINT /opt/go/bin/myapp

EXPOSE 8080

```bash
$ docker build -t myapp .
$ docker run -p 8080:8080 --name myapp --rm myapp
```
