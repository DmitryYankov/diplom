#!/bin/sh

# config client
apt  -y update

# install ssh
apt install -y openssh-server
systemctl enable sshd

# install expect
apt install -y expect

# install rsync
apt install -y rsync




