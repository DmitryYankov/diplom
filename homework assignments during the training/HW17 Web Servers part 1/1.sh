#!/bin/bash


#install nginx and apache
apt update;
apt install nginx apache2 -y
echo "Install complete"

#Create /opt/nginx and /opt/apache 
mkdir /opt/nginx
mkdir /opt/apache

#Create files and config web servers

cp /lesson17/test.html /opt/nginx/test.html
cp /lesson17/test.txt /opt/nginx/test.txt
cp /lesson17/nginx.conf /opt/nginx/nginx.conf

cat /opt/nginx/nginx.conf > /etc/nginx/nginx.conf;
systemctl restart nginx

cp /lesson17/test.html /opt/apache/test.html
cp /lesson17/test.txt /opt/apache/test.txt
cp /lesson17/apache2.conf /opt/apache/apache2.conf

cat /opt/apache/apache2.conf > /etc/apache2/apache2.conf
systemctl restart apache2