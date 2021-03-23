#!/usr/bin/env bash

sudo docker container run -d \
  -p 8080:80 \
  --name httpd \
  httpd
curl localhost:8080

sudo docker container run -d \
  -p 8090:80 \
  --name nginx \
  --restart always \
  nginx
curl localhost:8090

sudo docker container run -d \
  -p 9000:8080 \
  -v jenkins_home:/var/jenkins_home \
  --name jenkins \
  --restart always \
  jenkins/jenkins:lts

echo
echo initial admin password
sudo docker exec -it jenkins \
  cat /var/jenkins_home/secrets/initialAdminPassword

sudo docker container ps

sudo docker image ls
sudo docker volume ls

# Verify count stats
sudo docker info

# Verify Usage stats
sudo docker system df