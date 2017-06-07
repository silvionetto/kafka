#!/bin/bash

#Create a topic test
$KAFKA_HOME/kafka_2.10-0.10.2.1/bin/kafka-console-producer.sh --broker-list 192.168.99.100:9092 --topic test