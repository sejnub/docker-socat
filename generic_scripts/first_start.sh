#!/bin/bash

echo "#### first_start.sh has started."


export DOCKER_SOCAT_BRANCH

# clone
cd ~

url=raw.githubusercontent.com/sejnub/docker-socat/$DOCKER_SOCAT_BRANCH/generic_scripts/clone.sh

echo "Piping the following to bash: '$url'"
curl https://raw.githubusercontent.com/sejnub/docker-socat/$DOCKER_SOCAT_BRANCH/generic_scripts/clone.sh | bash


cd ~; cd ~/docker-socat/generic_scripts
./build.sh

cd ~; cd ~/docker-socat/generic_scripts
./run.sh


echo "#### first_start.sh has ended."
