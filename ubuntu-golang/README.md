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

```bash
$ docker run -it --rm partlab/ubuntu-golang go -version
```
