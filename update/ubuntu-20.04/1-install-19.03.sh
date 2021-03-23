#!/usr/bin/env bash

sudo apt-get remove -y \
  docker docker-engine docker.io containerd runc

sudo apt-get update
sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo apt-key add -

sudo apt-add-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get update

apt-cache madison docker-ce

_version="5:19.03.14~3.0~ubuntu-focal"
sudo apt-get install -y \
  docker-ce=${_version} \
  docker-ce-cli=${_version} \
  containerd.io

echo "\n Step 1 docker version:"
sudo docker version
echo