#!/bin/bash
sudo su -
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker
docker run -d -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
