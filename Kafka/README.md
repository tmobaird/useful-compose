# Apache Kafka by Confluent

This is a docker compose set up to easily spin up an Apache Kafka by Confluent instance.

### To Start

```
docker-compose up
```

### To Stop

```
docker-compose stop
```

### To Destroy

```
docker-compose down
```

### Note

This configuration includes two docker containers that will be run. One for Zookeeper (a tool for managing Kafka clusters), and a container for the actual Kafka cluster itself.

The Kafka configuration will be mapped to `localhost:9292` and will accept connections at this location alone. In most docker Kafka setups, the host and port would be something like `kafka:9292`, but since this set up is for purely spinning up a Kafka instance that is accessible from the localhost, the location becomes `localhost:9292`. This is configurable to whatever you would, you just need to change the environment variable `KAFKA_ADVERTISED_LISTENERS` for the
Kafka service.

For more information about using the Confluent provided Kafka images, visit [this doc](https://docs.confluent.io/current/installation/docker/docs/config-reference.html).
