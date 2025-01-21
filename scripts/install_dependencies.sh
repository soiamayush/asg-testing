#!/bin/bash
set -e

# Update packages and install Node.js and npm
sudo apt-get update -y
sudo apt-get install -y nodejs npm

# Navigate to the app directory
cd /home/ubuntu/app

# Install project dependencies
npm install
