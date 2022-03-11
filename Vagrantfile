# -*- mode: ruby -*-
# vi: set ft=ruby :

class VagrantPlugins::ProviderVirtualBox::Action::Network
  def dhcp_server_matches_config?(dhcp_server, config)
    true
  end
end

Vagrant.configure("2") do |config|
    config.vm.define "pfsense" do |pfsense|
        pfsense.vm.guest = :freebsd #système exploitation UNIX libre
        pfsense.vm.box = "ksklareski/pfsense-ce"
        pfsense.vm.hostname = "pfsense"
        pfsense.ssh.shell = 'sh'
        pfsense.ssh.insert_key = false # having this set to true (which is the default) breaks provisioning
        pfsense.vm.network "private_network", ip: "192.168.0.17" # exsistance of interface must match the config.xml file. The ip is meaningless
        pfsense.vm.network "forwarded_port", guest: 80, host: 8080
        #pfsense.vm.network "public_network",
         #use_dhcp_assigned_default_route: true

        pfsense.vm.provider "virtualbox" do |v|
          v.customize ["modifyvm", :id, "--cpus", "1"]
          v.customize ["modifyvm", :id, "--memory", 1024]

        end
        pfsense.vm.provision "file", source: "files/pfsense-config.xml", destination: "/tmp/config.xml" # vagrant cannot transfer directly to location
        pfsense.vm.provision "shell",
            inline: "mv /tmp/config.xml /cf/conf/config.xml; rm /tmp/config.cache" # removing the temp config refreshes pfsense
        pfsense.vm.provision "shell", path: "scripts/install_sys.sh"
        pfsense.vm.provision "shell", path: "scripts/install_bdd.sh"    
        pfsense.vm.provision "shell", path: "scripts/install_pfsense.sh"
    end
end