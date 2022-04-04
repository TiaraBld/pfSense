# Projet Cloud Computing 

Projet du semestre 8 
Dans chaque dossier, on retrouve un vagrantfile et des fichiers de configuration. 
On retrouve un readme pour chaque dossier 
Avant d'effectuer les configurations suivantes, mettre les PC en mode projet. 


## Les ressources informatiques

Pour faire fonctionner ce Labs il faut prévoir au moins 2 CPU /coeurs et 4Go de Ram (8Go est plus judicieux). L'espace disque est de l'ordre des 16 Go.
La virtualisation doit être activée sur le PC hôte (machine physique ) 

## Les applications obligatoires

* Oracle Virtualbox (version 6.1) (<https://www.virtualbox.org/wiki/Downloads>)
* Oracle VM VirtualBox Extension Pack (adapté à la version de virtualbox installée précédement)
* HashiCorp Vagrant (<https://www.vagrantup.com/>)


## Description du Labs

Le labs est constitué de 4 machine virtuelle Virtualbox. 
- gitea
- zabbix 
- pfSense
- serveur web 
![image](https://user-images.githubusercontent.com/97165634/161623570-4dd1c8b1-bcb0-4a27-93d1-83b24757f348.png)


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
