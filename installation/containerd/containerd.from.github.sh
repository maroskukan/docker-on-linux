#!/bin/bash

# Download and extract the containerd binaries
VERSION="1.4.4"
FILE="containerd-${VERSION}-linux-amd64.tar.gz"
wget "https://github.com/containerd/containerd/releases/download/v${VERSION}/${FILE}"
tar xvf "${FILE}"

sudo cp bin/* /usr/bin