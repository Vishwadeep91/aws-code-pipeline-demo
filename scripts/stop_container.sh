#!/bin/bash
set -e

# Find container ID running on port 5000 or using the specific image
CONTAINER_ID=$(docker ps -q --filter "ancestor=vishwadeep91/simple-python-flask-app:latest")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container $CONTAINER_ID..."
  docker rm -f "$CONTAINER_ID"
else
  echo "No running container found for the image."
fi
