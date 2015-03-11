# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  boxes = {
    wheezy: {
      box: 'lazyfrosch/debian-7.8-wheezy-amd64-puppet',
    },
    #wheezy_nocm: {
    #  box: 'lazyfrosch/debian-7.8-wheezy-amd64',
    #  puppet: false,
    #},
    jessie: {
      box: 'lazyfrosch/debian-8-jessie-amd64-puppet',
    },
    #jessie_nocm: {
    #  box: 'lazyfrosch/debian-8-jessie-amd64',
    #  puppet: false,
    #},
  }

  boxes.each do |name, hash|
    config.vm.define name do |vm_config|
      vm_config.vm.box = hash[:box]
      vm_config.vm.hostname = "#{name}.vagrant.local"

      vm_config.vm.synced_folder '/home/markus/devel', '/home/vagrant/devel'

      if hash[:puppet] != false
        vm_config.vm.provision :puppet do |puppet|
          puppet.manifests_path = 'manifests'
          puppet.options = '--show_diff'
          puppet.options += ' --modulepath /vagrant/modules'
        end
      end
    end
  end
end
