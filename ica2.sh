#!/bin/bash

echo initiating procedures...

echo updating server...
apt-get update
apt-get upgrade -y

echo downloading aplication requirements...
apt-get install apache2 -y
apt-get install unzip -y

echo configuring environment...
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www.html/