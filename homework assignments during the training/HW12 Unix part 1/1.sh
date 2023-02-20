#!/bin/sh

# config rsync server

apt  -y update
# install ssh
apt install -y openssh-server
systemctl enable sshd
# install expect
apt install -y expect
# install rsync
apt install -y rsync

# config rsync
touch /etc/rsyncd.conf
echo " Configuring RSYNC conf "
{
echo "hosts allow = 192.168.100.96" 
echo "hosts deny = *" 
echo "list = true" 
echo "uid = root" 
echo "gid = root" 
echo "read only = false" 
} > /etc/rsyncd.conf
cp /lib/systemd/system/rsync.service /etc/systemd/system/rsync.service
systemctl restart rsync


# Fill it with some files and folders (small and big)
mkdir /home/vagrant/rsync
      cd rsync || exit
      fallocate -l 1M file.out
      fallocate -l 10M mile.out
      fallocate -l 10M rile.out
      fallocate -l 100M try.out
      touch file1.txt
      touch file2.txt
      touch file3.txt
      touch file4.txt
      touch file5.txt
      touch file6.txt
      mkdir dir1
      mkdir photo
      mkdir pwd


