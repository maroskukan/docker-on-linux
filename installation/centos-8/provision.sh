#!/bin/sh

# Docker CE for Linux installation script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Start the service and enable on boot
systemctl start docker
systemctl enable docker

# Add vagrant user to docker group
usermod -aG docker vagrant