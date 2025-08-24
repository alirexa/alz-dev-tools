#!/bin/bash
# VPS Docker Setup Script for Astro + WordPress Development
# Run this as a regular user with sudo privileges

set -e

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "Installing Docker..."
sudo apt install -y docker.io

echo "Starting and enabling Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Adding user to docker group..."
sudo usermod -aG docker $USER
echo "Please log out and back in after script finishes for group changes."

echo "Installing Docker Compose..."
sudo apt install -y docker-compose

echo "Preloading Docker images..."
docker pull node:20-alpine       # For Astro JS builds
docker pull wordpress:latest     # WordPress backend
docker pull mariadb:latest       # MySQL-compatible DB
docker pull nginx:stable-alpine  # Optional reverse proxy
docker pull alpine               # Utility image
docker pull busybox              # Small utility image

echo "Creating SSH tunnel instructions for your Mac..."
echo "---------------------------------------------"
echo "On your Mac, run:"
echo "ssh -NL 2375:/var/run/docker.sock USER@VPS_IP"
echo "Then in your Mac terminal:"
echo "export DOCKER_HOST=localhost:2375"
echo "docker ps  # Should show containers on VPS"
echo "---------------------------------------------"

echo "All done! Your VPS Docker host is ready for Astro + WP development."
