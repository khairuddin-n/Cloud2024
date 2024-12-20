#!/bin/bash

# Build the Docker image
docker build -t khairuddinn/movie-service:latest .

# Push the image to Docker Hub
docker push khairuddinn/movie-service:latest
