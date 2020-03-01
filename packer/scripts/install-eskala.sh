#!/bin/bash

set -e 

#Script to update the instance, install docker, docker-compose and some utilities.

utilities() {
   sudo yum update -y 
   sudo yum install git-core bind-utils wget -y
}

docker() {
   sudo yum install -y yum-utils \
   device-mapper-persistent-data \
   lvm2
   sudo yum-config-manager \
   --add-repo \
   https://download.docker.com/linux/centos/docker-ce.repo
   sudo yum install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm -y
   sudo yum install docker-ce docker-ce-cli -y
   sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
}

echo "Installing utilities"
utilities

echo "Installing docker and docker-compose"
docker
