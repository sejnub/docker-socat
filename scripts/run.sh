#!/bin/bash


echo "#### run.sh has started."

docker rm -f socat

docker run             \
  -d                   \
  -p 514:514/udp       \
  --name socat         \
  --restart always     \
  sejnub/socat:latest

echo "#### run.sh has started."
