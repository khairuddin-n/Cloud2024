#!/bin/bash

# Build the Docker image
docker build -t khairuddinn/ticket-service:latest .

# Push the image to Docker Hub
docker push khairuddinn/ticket-service:latest
