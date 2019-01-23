#!/bin/bash



# To change this for another repo
# - global replace: DOCKER_SOCAT -> ...
# - global replace: docker-socat -> ...

DEFAULT_BRANCH=master

echo "#### clone.sh has started."

if [ $# -gt 0 ]; then
  DOCKER_SOCAT_BRANCH=$1
  echo "clone.sh was called with the branch parameter '$DOCKER_SOCAT_BRANCH'. So I will use that."
else
  echo "clone.sh was called without a branch parameter."
  if [ -z "$DOCKER_SOCAT_BRANCH" ]; then
    DOCKER_SOCAT_BRANCH=$DEFAULT_BRANCH
    echo "I am setting the branch of docker-socat to the default '$DOCKER_SOCAT_BRANCH'."
  else
    echo "The env variable DOCKER_SOCAT_BRANCH has the value '$DOCKER_SOCAT_BRANCH'"
    echo "so I use that because clone was called without an overwriting paramter."
  fi
fi

echo "Cloning the branch '$DOCKER_SOCAT_BRANCH' of docker-socat."

# Checkout docker-socat and cache git login
cd ~
rm -rf ~/docker-socat
git clone https://github.com/sejnub/docker-socat.git

# Do everything
cd ~/docker-socat
git checkout $DOCKER_SOCAT_BRANCH
cd ~

echo "#### clone.sh has ended."
