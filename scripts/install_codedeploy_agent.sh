#!/bin/bash
set -e

# Update and install dependencies
sudo apt-get update -y
sudo apt-get install ruby -y
sudo apt-get install wget -y

# Navigate to home directory
cd /home/ubuntu

# Download and install CodeDeploy agent
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

# Start CodeDeploy agent service
sudo service codedeploy-agent start
