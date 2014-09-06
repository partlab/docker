## partlab/ubuntu-couchdb

Docker image to run an out of the box CouchDB.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-couchdb .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-couchdb
```

#### Running the CouchDB server

```bash
$ docker run -d -p 5984:5984 --name couchdb partlab/ubuntu-couchdb
```

#### Running the CouchDB server with persistent directory

```bash
$ docker run -d -p 5984:5984 --name couchdb -v <data-dir>/db:/var/lib/couchdb partlab/ubuntu-couchdb
```

### Environment variables

 - `COUCHDB_PASSWORD`: Password for the admin user (defaults a password is created - get the password via docker logs <container-id>)

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port5984,tcp,,5984,,5984"
$ boot2docker up
```
