#!/bin/sh

# Workaround for CentOS 8 (EOL 2024-05-31)
# Error: Failed to download metadata for repo 'appstream': Cannot prepare internal mirrorlist: No URLs in mirrorlist
sudo sed -i 's/mirrorlist=/#mirrorlist=/g' \
            /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' \
            /etc/yum.repos.d/CentOS-*

# Docker CE for Linux installation script
sudo curl -sSL https://get.docker.com | sh

# Start the service and enable on boot
sudo systemctl start docker
sudo systemctl enable docker

# Add vagrant user to docker group
sudo usermod -aG docker vagrant

# Validate installation by running a sample image
sudo docker run --rm hello-world