# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create mgmt node
  config.vm.define :mgmt do |mgmt_config|
      mgmt_config.vm.box = "centos/7"
      mgmt_config.vm.hostname = "mgmt"
      mgmt_config.vm.network :private_network, ip: "10.0.15.10"
      mgmt_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
      mgmt_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
      mgmt_config.vm.provision "file", source: ".keys/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
       public_key = File.read(".keys/id_rsa.pub")
       config.vm.provision :shell, :inline =>"
           echo 'Copying ansible-vm public SSH Keys to the VM'
           mkdir -p /home/vagrant/.ssh
           chmod 700 /home/vagrant/.ssh
           echo '#{public_key}' >> /home/vagrant/.ssh/authorized_keys
           chmod -R 600 /home/vagrant/.ssh/authorized_keys
           echo 'Host 192.168.*.*' >> /home/vagrant/.ssh/config
           echo 'StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
           echo 'UserKnownHostsFile /dev/null' >> /home/vagrant/.ssh/config
           chmod -R 600 /home/vagrant/.ssh/config
           ", privileged: false
  end


end
