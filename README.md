# Projet Cloud Computing 

Projet du semestre 8 
Référente sécurité : Installation et configuration du serveur pfsense avec Vagrant
Mise en place de règles de filtrage 

## Les pré-requis

### Les ressources informatiques

Pour faire fonctionner ce Labs il faut prévoir au moins 2 CPU /coeurs et 4Go de Ram (8Go est plus judicieux). L'espace disque est de l'ordre des 16 Go.
La virtualisation doit être activée sur le PC hôte (machine physique ) 
https://support.bluestacks.com/hc/fr-fr/articles/115003174386-Comment-puis-je-activer-la-virtualisation-VT-sur-mon-PC-

### Les applications obligatoires

* Oracle Virtualbox (version 6.1) (<https://www.virtualbox.org/wiki/Downloads>)
* Oracle VM VirtualBox Extension Pack (adapté à la version de virtualbox installée précédement)
* HashiCorp Vagrant (<https://www.vagrantup.com/>)

### Les fichiers obligatoires

* choisir le zip en haut à gauche
* cloner avec git : git clone https://github.com/chavinje/S7-projet-il.git

Vous trouverez les reperoires/fichiers :

* ./Vagrantfile : qui contient l'ensemble des déclarations pour la construction du Labs
* scripts/install_sys.sh : mise en place des configurations de base sur toutes les VMs

## Description du Labs

Le labs est constitué de 1 machine virtuelle Virtualbox basé sur la box fr-bull-64
Cette machine est reliée à votre machine réelle par un réseau privé hôte via l'adresse 192.168.56.80

* pfSense est accessible par l'adresse http://192.168.0.17

## Utilisation des commandes vagrant

Activer une VM uniquement (pfsense par exemple)
    ```vagrant up pfsense```

Se connecter à une VM (firewall par exemple)
    ```vagrant ssh firewall```

Arréter une VM (victime par exemple)
    ```vagrant halt victime```

Détruire toutes les VMs (sans demande de confirmation)
    ```vagrant destroy -f```
