#!/bin/bash


echo "#### run.sh has started."

docker rm -f socat

docker run             \
  -it                  \
  --name socat         \
  --restart always     \
  sejnub/socat:latest

echo "#### run.sh has started."
