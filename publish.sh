#!/bin/sh
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 658681744708.dkr.ecr.us-west-2.amazonaws.com 
docker build -t jr-app-joplin .
docker tag jr-app-joplin:latest 658681744708.dkr.ecr.us-west-2.amazonaws.com/jr-app-joplin:latest 
docker push 658681744708.dkr.ecr.us-west-2.amazonaws.com/jr-app-joplin:latest