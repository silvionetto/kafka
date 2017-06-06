#KAFKA

##Git Hub
[https://github.com/silvionetto/kafka](https://github.com/silvionetto/kafka)

- git init
- git add README.md
- git commit -m "first commit"
- git remote add origin https://github.com/silvionetto/kafka.git
- git push -u origin master

##Docker Hub
[https://hub.docker.com/r/silvionetto/kafka/](https://hub.docker.com/r/silvionetto/kafka/)

- bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'

###Build Image
- docker build -t silvionetto/kafka:0.1 .
- docker build -t silvionetto/kafka_producer:0.1 .

###Commit Image
- docker commit -m "Initial Version" -a "Silvio Netto" c5241dd0b857 silvionetto/kafka:0.1

###Run Image
- docker run -p 2181:2181 -p 9092:9092 --name kafka_0_1 -it silvionetto/kafka:0.1 /bin/bash
- docker run --name kafka_producer_0_1 -it silvionetto/kafka_producer:0.1 /bin/bash
