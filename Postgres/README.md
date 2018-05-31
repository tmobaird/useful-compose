# Postgres

This docker-compose file is for those looking to provision a Postgres container
on their host machines. The instructions are for setting up a Postgres
instance on your localhost that will almost exactly mirror what a
regular local Postgres install will do for you.

The benefits of this are being able to easily and reproducibly spin up a
Postgres instance that you can use without worrying about managing some
of the weirder things that can happen when installing Postgres locally.

### Prerequisites

- Install Docker and Docker Compose ([link]())

### To Start Up

To start up a new container, simply run:

```
docker-compose up postgres
```

This will create a new container running Postgres and map this instance of Postgres to port 5432 on your host machine. If you have the `psql` command util installed, you can connect with: `psql "user=myuser password=mysecretpassword port=5432"`.

To test out if my database is working correctly, I like to use Intellij's 
database tool window. For those using this tool, here's the info needed
to connect:

- Host: **localhost**
- Port: **5432**
- Database: **postgres**
- User: **myuser**
- Password: **mysecretpassword**

Enjoy!
