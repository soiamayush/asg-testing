#!/bin/bash
set -e

# Update and install dependencies
echo "Updating system packages..."
sudo yum update -y
sudo yum install ruby wget -y

# Navigate to the home directory
cd /home/ec2-user

# Download and install CodeDeploy agent
echo "Downloading and installing CodeDeploy agent..."
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

# Start CodeDeploy agent service
echo "Starting CodeDeploy agent service..."
sudo service codedeploy-agent start
