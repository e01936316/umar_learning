#!/bin/bash

# Pull latest image and run the container
docker pull humarsdevops/dev:latest
docker stop react-container || true
docker rm react-container || true
docker run -d --name react-container -p 80:80 humarsdevops/dev:latest

