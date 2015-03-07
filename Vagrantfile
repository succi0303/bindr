# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/centos-6.5"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["chef-repo/cookbooks", "chef-repo/site-cookbooks"]

    chef.add_recipe "nodejs"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "rbenv::default"
    chef.add_recipe "rbenv::ruby_build"
    chef.add_recipe "sqlite"
    chef.add_recipe "vim"

    chef.add_recipe "base"

    chef.json = {
      postgresql: {
        enable_pgdg_yum: true,
        version: "9.3",
        password: {
          postgres: 'postgres'
        },
        client: {
          packages: [
            'postgresql-devel'
          ]
        },
        pg_hba: [
          {
            type: 'local',
            db: 'all',
            user: 'vagrant',
            addr: nil,
            method: 'md5'
          }
        ]
      }
    }
  end

end
