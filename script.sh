echo "Bonjour, voici un script qui permet le lancement d'une vagrant"
sleep 1
echo "C'est parti ! "
touch Vagrantfile
echo "Choisissons à présent le nom du dossier local"
read -p "./" dossier
mkdir $dossier
cat > vagrantfile << eof
# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/xenial64"
config.vm.network "private_network", ip: "192.168.33.10"
config.vm.synced_folder "./$dossier", "/var/www/html"
config.vm.provision "shell", inline: <<-SHELL
sudo apt-get update 
sudo apt install apache2 php7.0 -y 
SHELL
end
eof

vagrant up
vagrant ssh

#Afin de lancer notre second script, entre "exit" puis une fois sorti bash secondScript.sh

