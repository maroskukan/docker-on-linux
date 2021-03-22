#!/bin/bash

VERSION="v1.0.0-rc93"

sudo wget \
  https://github.com/opencontainers/runc/releases/download/${VERSION}/runc.amd64 \
  --output-document /bin/runc
sudo chmod +x /bin/runc
