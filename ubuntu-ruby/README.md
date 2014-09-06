## partlab/ubuntu-ruby

Simple base docker image to run Ruby applications.
This image uses rvm and the last stable version of ruby.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-ruby .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-ruby
```

#### Usage

```bash
$ docker run -it --rm partlab/ubuntu-ruby ruby --version
```
