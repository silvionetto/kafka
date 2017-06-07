# KAFKA Docker image

Kafka Docker image

# Usage
```
docker run -p 2181:2181 -p 9092:9092 --name kafka_0_1 -it silvionetto/kafka:0.1 /bin/bash
```

# Git Hub
[`https://github.com/silvionetto/kafka`](https://github.com/silvionetto/kafka)

```
git clone https://github.com/silvionetto/kafka.git
```

# Docker Hub
[`https://hub.docker.com/r/silvionetto/kafka/`](https://hub.docker.com/r/silvionetto/kafka/)

```
bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
```

# Build Image
Kafka Server

```
docker build -t silvionetto/kafka:0.1 .
```

Kafka Producer

```
docker build -t silvionetto/kafka_producer:0.1 .
```

Kafka Consumer

```
docker build -t silvionetto/kafka_consumer:0.1 .
```

# Commit Image
```
docker commit -m "Initial Version" -a "Silvio Netto" c5241dd0b857 silvionetto/kafka:0.1
```