#!/bin/bash
set -e

# Update packages and install Node.js and npm
echo "Updating system packages..."
sudo yum update -y

# Install Node.js and npm
echo "Installing Node.js and npm..."
sudo yum install -y nodejs npm

# Navigate to the app directory
cd /home/ec2-user/app

# Install project dependencies
echo "Installing project dependencies..."
npm install
