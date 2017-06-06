FROM openjdk:8-jdk

#Kafka
MAINTAINER Silvio Netto <silvio.netto@gmail.com>

#Install curl
RUN apt-get update && apt-get install -y git curl

#Create Kafka Home
RUN mkdir -p /var/kafka_home

#Set variables
ENV KAFKA_HOME=/var/kafka_home

#Set work directory
WORKDIR $KAFKA_HOME

#Download Kafka
RUN curl -fsSL http://www-eu.apache.org/dist/kafka/0.10.2.1/kafka_2.10-0.10.2.1.tgz -o ${KAFKA_HOME}/kafka_2.10-0.10.2.1.tgz

#Extract Kafka
RUN tar -xvzf kafka_2.10-0.10.2.1.tgz

#Set work directory
WORKDIR $KAFKA_HOME/kafka_2.10-0.10.2.1

#Copy entry point
COPY docker-entrypoint.sh /var/kafka_home/kafka_2.10-0.10.2.1/docker-entrypoint.sh

#Change permission
RUN chmod +x /var/kafka_home/kafka_2.10-0.10.2.1/docker-entrypoint.sh

#Expose port
EXPOSE 2181
EXPOSE 9092