#!/bin/sh

#  Sync files on the client from the server

sudo -i
rsync -avzhe ssh vagrant@192.168.100.95:/home/vagrant/rsync/ /home/vagrant/rsync/