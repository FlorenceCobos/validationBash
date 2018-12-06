# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/xenial64"
config.vm.network "private_network", ip: "192.168.33.10"
config.vm.synced_folder "./data", "/var/www/html"
config.vm.provision "shell", inline: <<-SHELL
sudo apt-get update 
sudo apt install apache2 php7.0 -y 
SHELL
end
