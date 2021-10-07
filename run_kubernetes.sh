#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="jsgilberto/ml-microservice:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-microservice \
    --image=jsgilberto/ml-microservice:latest \
    --port=80

# Step 3:
# List kubernetes pods
POD_NAME=$(kubectl get pods -o=name | grep ml-microservice)
echo "Pod name: ${POD_NAME}"

# Wait for pod to be ready
kubectl wait $POD_NAME --for condition=ready

# Step 4:
# Forward the container port to a host (LOCAL:REMOTE)
kubectl port-forward $POD_NAME 8000:80
