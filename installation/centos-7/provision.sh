#!/bin/sh


VERSION="20.10.9"

# Uninstall old versions of Docker
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# Set up the repository
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Engine
sudo yum install -y docker-ce-${VERSION} \
                    docker-ce-cli-${VERSION} \
                    containerd.io \
                    docker-compose-plugin

# Add vagrant user to docker group
sudo usermod -aG docker vagrant

# Start and enable docker
sudo systemctl start docker
sudo systemctl enable docker

# Validate installation by running a sample image
sudo docker run --rm hello-world