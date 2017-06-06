#KAFKA

##Git Hub

- git init
- git add README.md
- git commit -m "first commit"
- git remote add origin https://github.com/silvionetto/kafka.git
- git push -u origin master

##Docker Hub

###Build Image
- docker build -t silvionetto/kafka:0.1 .

###Commit Image
- docker commit -m "Initial Version" -a "Silvio Netto" c5241dd0b857 silvionetto/kafka:0.1

###Run Image
- docker run -p 2181:2181 --name kafka_0_1 -it silvionetto/kafka:0.1 /bin/bash
