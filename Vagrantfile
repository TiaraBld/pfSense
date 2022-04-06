# Weird hack to bypass some dhcp interface issues.
# Will be resolved by Vagrant someday.
class VagrantPlugins::ProviderVirtualBox::Action::Network
  def dhcp_server_matches_config?(dhcp_server, config)
    true
  end
end

Vagrant.configure("2") do |config|
    config.vm.define "pfsense" do |pfsense|
        pfsense.vm.guest = :freebsd
        pfsense.vm.box = "ksklareski/pfsense-ce"
        pfsense.vm.hostname = "pfsense"
        pfsense.ssh.shell = 'sh'
        pfsense.ssh.insert_key = false # having this set to true (which is the default) breaks provisioning
        pfsense.vm.network "private_network", ip: "192.168.56.60" # exsistance of interface must match the config.xml file. The ip is meaningless
        pfsense.vm.network "forwarded_port", guest: 80, host: 8080
        pfsense.vm.network "public_network", bridge: "eno1", ip: "192.168.4.23"
        pfsense.vm.network "public_network", bridge: "enp1s0", ip: "10.10.10.1", netmask:"255.255.255.248"
                pfsense.vm.provider "virtualbox" do |vb|
            vb.memory = "1024"
            vb.cpus = "1"
        end
        pfsense.vm.provision "file", source: "./pfsense-config.xml", destination: "/tmp/config.xml" # vagrant cannot transfer directly to location
        pfsense.vm.provision "shell",
            inline: "mv /tmp/config.xml /cf/conf/config.xml; rm /tmp/config.cache" # removing the temp config refreshes pfsense
    end
end
