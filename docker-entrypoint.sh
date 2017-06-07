#!/bin/bash

#Run Zookeeper
setsid $KAFKA_HOME/kafka_2.10-0.10.2.1/bin/./zookeeper-server-start.sh config/zookeeper.properties >logs/zookeeper.log 2>&1 < /dev/null &

#Wait Zookeeper startup
sleep 10

#Create Topic
$KAFKA_HOME/kafka_2.10-0.10.2.1/bin/./create-topic.sh

#Run Kafka Server
$KAFKA_HOME/kafka_2.10-0.10.2.1/bin/./kafka-server-start.sh config/server.properties
