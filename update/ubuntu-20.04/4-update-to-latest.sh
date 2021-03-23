#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y \
  docker-ce docker-ce-cli containerd.io

echo "docker version"
sudo docker version

echo
echo explore state post-install

echo "docker image ls"
sudo docker image ls

echo "docker container ls"
sudo docker container ls

echo "docker container ls"
sudo docker container ls

echo "docker volume ls"
sudo docker volume ls