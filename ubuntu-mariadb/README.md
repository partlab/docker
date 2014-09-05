## partlab/ubuntu-mariadb

Docker image to run an out of the box MariaDB.

### Usage

#### Build

```bash
$ docker build -t partlab/ubuntu-mariadb .
```

#### Download automated build

```bash
$ docker pull partlab/ubuntu-mariadb
```

#### Running the MariaDB server

```bash
$ docker run -d -p 3306:3306 -e MARIADB_ROOT_PASSWORD=<password> --name mariadb partlab/ubuntu-mariadb
```

#### Running the MariaDB server with persistent directory

```bash
$ docker run -d -p 3306:3306 --name mariadb -v <data-dir>/db:/var/lib/mysql partlab/ubuntu-mariadb
```

### Environment variables

 - `MARIADB_ROOT_PASSWORD`: Password for the root user (set every time the server starts, defaults is a blank password)
 - `MARIADB_DATABASE`: A database to automatically create if it doesn't exist. If not provided, does not create a database.
 - `MARIADB_USER`: A user to create that has access to the database specified by `MARIADB_DATABASE`.
 - `MARIADB_PASSWORD`: The password for `MARIADB_USER`. (defaults is a blank password)

### Tips

#### VirtualBox (boot2docker-vm)

```bash
$ boot2docker down
$ VBoxManage modifyvm boot2docker-vm --natpf1 "tcp-port3306,tcp,,3306,,3306"
$ boot2docker up
```
