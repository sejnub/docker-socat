#!/bin/bash

echo "#### build.sh has started."


cd ~/docker-socat

docker build                 \
  -t sejnub/socat:latest     \
  -t sejnub/socat:rpi-latest \
  .

echo "#### build.sh has ended."
