#!/bin/bash
sudo apt-get update
sudo apt-get install -y \
    curl \
    wget \
    unzip

echo 'Ubuntu Noble container created successfully!'
rustc --version
cargo --version
node --version
python3 --version 
go version 
docker --version