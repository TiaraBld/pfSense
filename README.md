# pfSense

## Vagrantfile

Vagrant box configuration

1.ksklareski/pfsense.ce

2.Three network interfaces are configured : 
  - One bridge interface (WAN), on the host eno1 network interface, with a predermined IP (here 192.168.4.23)
  - One bridge interface (LAN), on the host enps1s0 network interface, with a predermined IP (here 10.10.10.1)
  - One private network interface, with a predermined IP (here 192.168.56.60)

3.Calls an xml file for its configuration 

## files .xml 

Vagrant file copies config.xml to the pfsense box for provisioning. 

To connect to pfSense : 
 - login : vagrant
 - password : vagrant

### LAN rules 
For the moment everything is open 

### WAN rules 
- NAT access to gitea
- NAT access to zabbix
- NAT access to moodle 
- NAT access to Router via ssh 


### Gateways 
- WAN : 192.168.4.50 : Routeur Cauchy 
- LAN : 10.10.10.2 : Routeur Local 

### Static Routes
- 192.168.0.24/29 with gateway 10.10.10.2 : Route to VLAN Web 
- 192.168.0.32/29 with gateway 10.10.10.2 : Route to VLAN Bdd 
- 192.168.0.40/29 with gateway 10.10.10.2 : Route to VLAN Admin 

### NAT rule configuration 
- Port fowarding gitea : 192.168.4.23:3000 
- Port fowarding zabbix : 192.168.4.23:3001
- Port fowarding moodle : 192.168.4.23:3002 

### Outbound 
- WAN address 192.168.0.0/26 


## Utilisation des commandes vagrant

Activer une VM uniquement (pfsense par exemple)
    ```vagrant up pfsense```

Se connecter à une VM (firewall par exemple)
    ```vagrant ssh firewall```

Arréter une VM (victime par exemple)
    ```vagrant halt victime```

Détruire toutes les VMs (sans demande de confirmation)
    ```vagrant destroy -f```
