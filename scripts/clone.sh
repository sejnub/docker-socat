#!/bin/bash

export DOCKER_SOCAT_BRANCH=master

# To change this for another repo
# - global replace: DOCKER_SOCAT -> ...
# - global replace: docker-socat -> ...

echo "#### clone.sh has started."


#########
# clone #
#########

echo "Cloning the branch '$DOCKER_SOCAT_BRANCH' of docker-socat."

# rm
cd ~
rm -rf ~/docker-socat

# clone
git clone https://github.com/sejnub/docker-socat.git

# checkout
cd ~/docker-socat
git checkout $DOCKER_SOCAT_BRANCH
cd ~

echo "#### clone.sh has ended."
