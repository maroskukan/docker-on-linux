#!/bin/bash

VERSION="1.4.4"
FILE="containerd-${VERSION}-linux-amd64.tar.gz"
wget "https://github.com/containerd/containerd/releases/download/v${VERSION}/${FILE}"
tar xvf "${FILE}"