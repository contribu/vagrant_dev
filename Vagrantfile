# -*- mode: ruby -*-
# vi: set ft=ruby :

# 以下を参考に作っている
# https://github.com/contribu/buildenv_docker/blob/master/Dockerfile

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.50.2"
  config.vm.synced_folder "../", "/vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", run: "always", path: "./vars.sh"
  config.vm.provision "shell", path: "./install.sh"
end
