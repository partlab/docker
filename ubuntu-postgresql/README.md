## partlab/ubuntu-postgresql

Docker image to run an out of the box PostgreSQL. 

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-postgresql .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-postgresql
```

#### Running the PostgreSQL server

```bash
$ docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=<password> --name postgresql partlab/ubuntu-postgresql
```

#### Running the PostgreSQL server with persistent directory

```bash
$ docker run -d -p 5432:5432 --name postgresql -v <data-dir>/db:/var/lib/postgresql partlab/ubuntu-postgresql
```

### Environment variables

 - `POSTGRES_PASSWORD`: Password for the postgres user (defaults a password is created - get the password via docker logs <container-id>)

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port5432,tcp,,5432,,5432"
$ boot2docker up
```
