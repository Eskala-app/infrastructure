#!/bin/bash

set -e 

#Script to update the instance, install some utilities, dependencies for the application and NGINX.  

utilities() {
   yum update -y 
   yum install git-core bind-utils wget -y
}

nginx() {
   yum install epel-release -y
   yum update -y    
   yum install nginx -y 
}

echo "Installing utilities"
utilities

echo "Installing NGINX"
nginx
