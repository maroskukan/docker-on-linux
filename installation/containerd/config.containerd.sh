#!/bin/bash

sudo mkdir -p /etc/containerd/

cat <<-EOF | sudo tee /etc/containerd/config.toml

[grpc]
# vagrant gid is 1000
gid = 1000

EOF