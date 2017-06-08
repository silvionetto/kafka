# KAFKA Docker image

Kafka Docker image

# Usage

To validate follow the steps above:

**Start Kafka service**

```
docker run -p 2181:2181 -p 9092:9092 --name kafka --rm -it silvionetto/kafka
```

**Start Kafka producer**

```
docker exec -it kafka bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
```

**Start Kafka consumer**

```
docker exec -it kafka bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
```

# Git Hub
[`https://github.com/silvionetto/kafka`](https://github.com/silvionetto/kafka)


# Docker Hub
[`https://hub.docker.com/r/silvionetto/kafka/`](https://hub.docker.com/r/silvionetto/kafka/)