#!/bin/bash
set -e

# Stop the application using PM2
pm2 stop "node-app" || true
pm2 delete "node-app" || true
