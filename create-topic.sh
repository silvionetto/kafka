#!/bin/bash

#Wait Kafka startup
sleep 20

#Create a topic test
setsid $KAFKA_HOME/kafka_2.10-0.10.2.1/bin/./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test 