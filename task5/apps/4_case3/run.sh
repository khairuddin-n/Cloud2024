#!/bin/sh
kubectl apply -f k8s/ticket-service-deployment.yaml
kubectl apply -f k8s/movie-service-deployment.yaml
kubectl apply -f k8s/user-service-deployment.yaml
kubectl apply -f k8s/services.yaml
