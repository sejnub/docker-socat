#!/bin/bash


cd ~/docker-socat

docker build                 \
  -t sejnub/socat:latest     \
  -t sejnub/socat:rpi-latest \
  .
