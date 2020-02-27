#!/bin/bash

set -e 

#Script to update the instance, install some utilities, Jenkins and NGINX.  

utilities() {
   sudo yum update -y 
   sudo yum install git-core bind-utils wget -y
}

jenkins() {
   sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
   sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
   sudo yum -y update
   sudo yum install jenkins java -y
}

nginx() {
   sudo yum install epel-release -y
   sudo yum update -y    
   sudo yum install nginx -y 
}

echo "Installing utilities"
utilities

echo "Installing Jenkins"
jenkins

echo "Installing NGINX"
nginx
