#!/bin/bash
set -e

# Navigate to the app directory
cd /home/ubuntu/app

# Start the application using PM2
sudo npm install pm2 -g
pm2 start index.js --name "node-app"
pm2 save
