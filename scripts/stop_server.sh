#!/bin/bash
set -e

# Check if pm2 is installed
if ! command -v pm2 &>/dev/null; then
  echo "PM2 is not installed. Please install PM2 before running this script."
  exit 1
fi

# Stop the application using PM2
echo "Stopping the application 'node-app'..."
pm2 stop "node-app" || echo "'node-app' is not running or does not exist."

# Delete the application using PM2
echo "Deleting the application 'node-app'..."
pm2 delete "node-app" || echo "'node-app' is not registered with PM2."
