#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
apt update -y
apt install -y httpd
systemctl start httpd
systemctl enable httpd

apt install certbot python3-certbot-nginx -y
