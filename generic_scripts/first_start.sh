#!/bin/bash


# export DOCKER_SOCAT_BRANCH=master
# 
# curl https://raw.githubusercontent.com/sejnub/docker-socat/master/generic_scripts/first_start.sh | bash
# cd ~
# cd ~/docker-socat/generic_scripts
# ls -asl


# clone
cd ~
curl https://raw.githubusercontent.com/sejnub/docker-socat/$DOCKER_SOCAT_BRANCH/generic_scripts/first_clone.sh | bash


cd ~; cd ~/docker-socat/generic_scripts
./build.sh

cd ~; cd ~/docker-socat/generic_scripts
./run.sh




echo "#### first_start.sh has ended."
