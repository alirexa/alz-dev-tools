#!/bin/bash
# Basic VPS setup script for Ubuntu

# Update & upgrade
sudo apt update && sudo apt upgrade -y

# Install common tools
sudo apt install -y git curl wget htop ufw nano

# Setup UFW
sudo ufw allow OpenSSH
sudo ufw enable

echo "✅ VPS setup complete."
