#!/bin/bash
# Update package list
apt update -y

# Install Nginx
apt install -y nginx

# Start and enable Nginx service
systemctl start nginx
systemctl enable nginx

# Set up a basic index.html page
echo "<h1>Remnant Tribe STG Server $(hostname -f)</h1>" > /var/www/html/index.html

# Ensure proper permissions (optional)
chown www-data:www-data /var/www/html/index.html
chmod 644 /var/www/html/index.html

# Example WR mongodb://44.204.90.128:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+2.3.8