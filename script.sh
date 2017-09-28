#!/bin/bash 
docker --version  # document the version travis is using
 pip install awscli # install aws cli w/o sudo
 export PATH=$PATH:/root/.local/bin # put aws in the path
 eval $(aws ecr get-login --region us-west-2 --no-include-email) #needs AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY envvars
 docker build -t test-repo .
 docker tag test-repo:latest 425987977703.dkr.ecr.us-west-2.amazonaws.com/test-repo:latest
 docker push 425987977703.dkr.ecr.us-west-2.amazonaws.com/test-repo:latest

