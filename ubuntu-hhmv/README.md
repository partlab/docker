## partlab/ubuntu-hhvm

Simple base docker image to run PHP with HHVM applications.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-hhvm .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-hhvm
```

#### Usage

```bash
$ docker run -it --rm partlab/ubuntu-hhvm hhvm --version
```
