#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
sudo yum -y update
sudo yum -y install epel-release
sudo yum -y install ansible git
sudo yum -y install vim
sudo setenforce 0

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  mgmt
EOL
