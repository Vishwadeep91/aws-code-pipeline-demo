#!/bin/bash
set -e

# Get container ID running the specified image
containerID=$(docker ps --filter "ancestor=vishwadeep91/simple-python-flask-app:latest" -q)

# Check if a container was found
if [ -n "$containerID" ]; then
  echo "Removing container: $containerID"
  docker rm -f "$containerID"
else
  echo "No container found using image vishwadeep91/simple-python-flask-app:latest"
fi



