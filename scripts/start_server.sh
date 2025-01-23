#!/bin/bash
set -e

# Navigate to the app directory
cd /home/ec2-user/app

# Install pm2 globally using npm
echo "Installing PM2..."
sudo npm install pm2 -g

# Start the application using PM2
echo "Starting the application 'node-app'..."
pm2 start index.js --name "node-app"

# Save the PM2 process list to be restored on reboot
echo "Saving the PM2 process list..."
pm2 save
