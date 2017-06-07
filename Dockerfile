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

#Create dir logs
RUN mkdir logs

#Copy scripts
COPY docker-entrypoint.sh bin/docker-entrypoint.sh
COPY create-topic.sh bin/create-topic.sh
COPY start-producer.sh bin/start-producer.sh

#Change permissions
RUN chmod +x bin/docker-entrypoint.sh
RUN chmod +x bin/create-topic.sh
RUN chmod +x bin/start-producer.sh

CMD ${KAFKA_HOME}/kafka_2.10-0.10.2.1/bin/docker-entrypoint.sh
#ENTRYPOINT ${KAFKA_HOME}/kafka_2.10-0.10.2.1/bin/docker-entrypoint.sh

#Expose port
EXPOSE 2181
EXPOSE 9092