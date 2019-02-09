# Useful Compose

This repo includes a list of usable docker compose files to run commonly used services (ie. Postgres, Redis, etc.).

### Service Roadmap :car:

- [x] Postgres
- [x] Microsoft SQL Server
- [x] Redis
- [x] Apache Kafka
- [x] ActiveMQ
- [ ] RabbitMQ
- [ ] MongoDB

### Testing :white_check_mark:

This project does include tests of the service configurations. These are nothing related to the actual docker images themselves,
but releated to the actual usage that the given docker-compose.yml file defines. This usually includes things
such as port mappings, server names, etc.

The testing for this project uses the [bats](https://github.com/sstephenson/bats) testing framework for bash. To run
tests with bats, you must first install bats. There are two ways to install bats, and they are as follows:

1: 
```
git clone https://github.com/sstephenson/bats.git
cd bats
./install.sh /usr/local
```
2:
```
git clone https://github.com/sstephenson/bats.git
PATH=$PATH:~/bats/bin
```

Then you can easily run bats tests with the command `bats` followed by the path to a `.bats` file. Example:

```
bats Redis/test.bats
```

The project currently still supports no way to run all tests for the project at once, but this is being explored.
Any help regarding this is welcome! :smile: :whale:
