#!/bin/bash

# Variables
DOCKER_USER="humarsdevops"
IMAGE_NAME="dev"

# Build and push
docker build -t $DOCKER_USER/$IMAGE_NAME:latest .
docker push $DOCKER_USER/$IMAGE_NAME:latest

