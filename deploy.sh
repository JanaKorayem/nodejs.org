#!/bin/bash

# Navigate to the directory where your Dockerized app is located
cd "C:\Users\janak\OneDrive\Desktop\DevOps_Internship\Project_Clone\nodejs.org"

# Pull the latest changes from your Git repository
git pull

# Build and run your Docker container
docker build -t my-node-app .
docker stop my-node-app-container || true   # Stop if already running
docker rm my-node-app-container || true     # Remove if already exists
docker run -d -p 80:3000 --name my-node-app-container my-node-app

echo "Deployment completed."
