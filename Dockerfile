FROM openjdk:8-jdk

MAINTAINER Silvio Netto <silvio.netto@gmail.com>

#Install curl
RUN apt-get update && apt-get install -y git curl

#Set variables
ENV KAFKA_HOME=/var/kafka_home

#Set arguments
ARG user=kafka
ARG group=kafka
ARG uid=1000
ARG gid=1000

#Create user / Add user
RUN groupadd -g ${gid} ${group} \
    && useradd -d ${KAFKA_HOME} -u ${uid} -g ${gid} -m -s /bin/bash ${user}

#Create volume
VOLUME /var/kafka_home

#Set work directory
WORKDIR $KAFKA_HOME

#Download Kafka
CMD curl -fsSL http://www-eu.apache.org/dist/kafka/0.10.2.1/kafka_2.10-0.10.2.1.tgz -o kafka_2.10-0.10.2.1.tgz

#Extract Kafka
CMD tar -xvzf kafka_2.10-0.10.2.1.tgz

#Start Kafka
CMD bin/zookeeper-server-start.sh config/zookeeper.properties

#Expose port
EXPOSE 2181

#Change user
USER ${user}