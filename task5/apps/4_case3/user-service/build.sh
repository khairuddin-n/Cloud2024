#!/bin/bash

# Build the Docker image
docker build -t khairuddinn/user-service:latest .

# Push the image to Docker Hub
docker push khairuddinn/user-service:latest
