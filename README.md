# Projet Cloud Computing - semestre 8 

L'archive intitulée livrable_1.tgz contient l'ensemble des éléments techniques qui doivent être présent ainsi que cette notice d'explication. 

- Dans chaque dossier de l'archive, on retrouve un vagrantfile et des fichiers de configuration. 
- On retrouve un readme pour chaque dossier 
- Avant d'effectuer les configurations suivantes, mettre les PC en mode projet. 


## Les ressources informatiques

Pour faire fonctionner ce Labs il faut prévoir au moins 2 CPU /coeurs et 4Go de Ram (8Go est plus judicieux). L'espace disque est de l'ordre des 16 Go.
La virtualisation doit être activée sur le PC hôte (machine physique ) 

## Les applications obligatoires

* Oracle Virtualbox (version 6.1) (<https://www.virtualbox.org/wiki/Downloads>)
* Oracle VM VirtualBox Extension Pack (adapté à la version de virtualbox installée précédement)
* HashiCorp Vagrant (<https://www.vagrantup.com/>)

## Schéma de notre datacenter 

![image](https://user-images.githubusercontent.com/97165634/161623570-4dd1c8b1-bcb0-4a27-93d1-83b24757f348.png)

## Description du Labs

Le labs est constitué de 5 machine virtuelle Virtualbox. 
- Gitea est accessible 
    - à l'intérieur sur l'adresse : 192.168.0.41:3000 
    - à l'extérieur sur l'adresse : 192.168.4.23:3000

- Zabbix est accessible 
    - à l'intérieur sur l'adresse : 192.168.0.41/zabbix 
    - à l'extérieur sur l'adresse : 192.168.4.23:3001/zabbix
 
- Moodle est accessible 
    - à l'intérieur sur l'adresse 192.168.0.25/moodle
    - à l'extérieur sur l'adresse 192.168.4.23:3002/moodle

- phpMyAdmin est accessible 
    - à l'intérieur sur l'adresse 192.168.0.25/phpmyadmin
 
- pfSense est accessible 
    - à l'intérieur sur l'adresse 10.10.10.1 et n'est pas accessible depuis l'extérieur 

![image](https://user-images.githubusercontent.com/97165634/161625860-8d9bb342-9488-48bd-a252-ce6c1407e00e.png)
![image](https://user-images.githubusercontent.com/97165634/161625905-fcec8087-1fcb-44d5-aca1-5859fbd40f35.png)


## Vagrantfile 

Chaque dossier comprend un vagrantfile. 
Pour éxécuter le vagrantfile, faire les différentes commandes ci-dessous.

## Utilisation des commandes vagrant

Activer une VM uniquement (pfsense par exemple)
    ```vagrant up pfsense```

Se connecter à une VM (firewall par exemple)
    ```vagrant ssh firewall```

Arréter une VM (victime par exemple)
    ```vagrant halt victime```

Détruire toutes les VMs (sans demande de confirmation)
    ```vagrant destroy -f```
