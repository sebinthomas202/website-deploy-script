#!/bin/bash

# Install necessary packages: wget, unzip, and httpd (Apache Web Server)
echo "Installing wget, unzip, and httpd..."
sudo yum install wget unzip httpd -y

# Create a temporary directory to store web files
echo "Creating a temporary directory at /tmp/webfiles..."
mkdir -p /tmp/webfiles
cd /tmp/webfiles

# Start and enable the Apache Web Server to run on boot
echo "Starting Apache Web Server..."
sudo systemctl start httpd

echo "Enabling Apache Web Server to start on boot..."
sudo systemctl enable httpd

# Download the website template from the specified URL
echo "Downloading the website template..."
wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip

# Unzip the downloaded template file
echo "Unzipping the downloaded template..."
unzip 2136_kool_form_pack.zip

# Copy the extracted template files to the Apache web server's root directory
echo "Copying the template files to /var/www/html/..."
sudo cp -r 2136_kool_form_pack/* /var/www/html/

# Restart the Apache Web Server to apply the changes
echo "Restarting Apache Web Server to apply the changes..."
sudo systemctl restart httpd

echo "Deployment completed successfully!"
