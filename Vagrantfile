# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/centos-6.5"

  config.vm.network "forwarded_port", guest: 3000, host: 4000

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["chef-repo/cookbooks", "chef-repo/site-cookbooks"]

    chef.add_recipe "nodejs"
    chef.add_recipe "rbenv::default"
    chef.add_recipe "rbenv::ruby_build"
    chef.add_recipe "sqlite"
    chef.add_recipe "vim"

    chef.add_recipe "base"
  end

end
