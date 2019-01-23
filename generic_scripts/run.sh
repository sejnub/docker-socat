#!/bin/bash

docker rm -f socat

docker run             \
  -it                  \
  --name socat         \
  --restart always     \
  sejnub/socat:latest
