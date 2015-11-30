## partlab/ubuntu-nodejs

Simple base docker image to run Node.js applications

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-nodejs .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-nodejs
```

#### Usage

```bash
$ docker run -it --rm partlab/ubuntu-nodejs node --version
```
