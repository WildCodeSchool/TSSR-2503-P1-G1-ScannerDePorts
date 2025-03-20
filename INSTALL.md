## Sommaire

1. [Prérequis technique](#prerequis-technique)
2. [Installation sur le serveur](#installation-sur-le-serveur)
3. [Installation sur le client](#installation-sur-le-client)
4. [FAQ](#faq)

# 1. Prérequis techniques
<span id="prerequis-techniques"></span>

# 2. Installation sur le serveur
<span id="installation-sur-le-serveur"></span>

# 3. Installation sur le client
<span id="installation-sur-le-client"></span>

# 4. FAQ
<span id="faq"></span>

# Distinction

## Sommaire

1. [Prérequis technique](#prerequis-technique)  
   1. [Update et upgrade](#Update-et-upgrade)  
   2. [Paramétrage des IP](#Paramétrage-des-IP)  
          a. [Client Ubuntu](#ubuntu)  
          b. [Serveur Debian](#Serveur-Debian)  
          c. [Windows Serveur 2022](#Windows-Serveur-2022)
   3. [Paramétrage du réseau](#Paramétrage-du-réseau)  
          a. [Client Ubuntu](#ubuntu)  
          b. [Serveur Debian](#Serveur-Debian)  
          c. [Windows Serveur 2022](#Windows-Serveur-2022)
2. [Installation sur le client](#installation-sur-le-client)  
   1. [Nmap](#Nmap)  
   2. [Netcat](#Netcat)  
3. [FAQ](#faq)

# 1. Prérequis techniques
<span id="prerequis-techniques"></span>
   1. Update et upgrade  

Bien evidemment, avant toute bonne chose, vérifiez que vous êtes sous la dernière version disponible, et qu'aucun merveilleux feature ne puisse vous passer sous le nez ! Pour cela, rien de plus simple, il suffit d'entrer ces deux commandes :
``` sudo apt update ```
``` sudo apt upgrade ```

Vous êtes désormais à jour ! Facile non ? 

  
   2. Paramétrage des IP  
          a. Client Ubuntu  

D'abord, paramétrons le client. Ici, nous utilisons la version Ubuntu 24.04.2 LTS. Tu peux le vérifier avec la commande
``` lsb_release -a ```

Nous allons aller dans les Paramètres; puis dans la rubrique Réseau; puis dans les options du réseau qui nous intéresse : Ethernet enp0s8. Tu peux d'ailleurs voir tes cartes réseau avec la commande 
``` ip -a ```

Dans la rubrique IPv4, nous allons insérer une adresse IP et un masque. Dans notre cas, nous choisirons 172.16.10.10 et 255.255.255.0. Ce qui devrait te donner ça :  

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/Screen%20adresse%20IP%20Ubuntu.png" alt="Adressage_IPv4_Ubuntu" width="500"/> 
   
          b. Serveur Debian  
         
Ici, le plus simple est de se connecter directement avec le compte root.  
Ensuite, modifions le fichier /etc/network/interfaces. Tu l'as deviné, avec la commande ```nano /etc/network/interfaces```  
Configure ta seconde carte réseau de la façon suivante :

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/screen%20network%20interfaces%20debian.png" alt="network_interface_debian" width="600"/>  

Comme tu l'as peut être observé, nous avons changé le "allow hotplug" en "auto" par mesure de précaution. Cela signalera d'activer la carte au branchement de celle-ci. enp0s8 étant le nom de la carte réseau, et également "dhcp" en "static" pour signaler une configuration manuelle. Une fois fait, tu peux enregistrer et quitter le fichier.

          c. Windows Serveur 2022  

Enchaînons avec le Windows serveur. Dans ton Server Manager, allons dans la rubrique Local Server, puis cliquons sur le extralien de Ethernet 2. Allons dans les propriétés d'Ethernet 2 (click droit, Properties). Puis dans Internet Protocol Version 4 (TCP/IPv4). C'est ici que nous insérons l'addresse IP et le masque. Tu obtiendras le résultat suivant :

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/windows%20serveur%20IP.png" alt="windows_server_IP" width="330"/> 

   3. Paramétrage du réseau  
          a. Client Ubuntu  

Maintenant, établissons la connexion entre les machines. Pour cela, nous allons modifier le fichier /etc/hosts et y ajouter les adresses IP et les noms de machines correspondant. Pour cela, tape la commande ```sudo nano /etc/hosts```. Dans notre cas, voici le résultat :

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/Screen%20r%C3%A9seau%20ubuntu.png" alt="réseau_ubuntu" width="600"/> 
          b. Serveur Debian  
Nous allons procéder à la même chose sur le serveur Debian. Pour cela, même commande (le sudo n'est pas nécessaire si tu es sur le compte root) ```nano /etc/hosts```  
Tu peux maintenant ajouter les adresses IP des machines de ton futur réseau. 

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/Screen%20r%C3%A9seau%20debian.png" alt="screen_réseau_debian" width="700"/> 
          c. Windows Serveur 2022  
Tu l'auras compris, nous allons maintenant le faire sur le serveur Windows. Dans l'explorateur de fichiers, nous allons suivre le chemin suivant : C:\Windows\System32\drivers\etc pour ouvrir le fichier hosts. Ajoutons-y les adresses IP des autres machines :

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/windows%20serveur%20r%C3%A9seau.png" alt="windows_server_réseau" width="330"/> 
# 2. Installation sur le client  
<span id="installation-sur-le-client"></span>

   1. Nmap  
      
Nmap a été initialement créé pour fonctionner sur les systèmes d’exploitation GNU/Linux. Ainsi, vous le trouverez dans tous les dépôts de paquets officiels des distributions Unix.
Afin de vérifier que Nmap est bien présent dans vos dépôts de paquets, vous pouvez utiliser la commande suivante :  
``` sudo apt search ^nmap$  ```

Le paquet étant disponible, il est donc possible de l'installer avec la commande :
```sudo apt install nmap ```

Enfin, pour vérifier que nmap ait bien été installé, il est possible de le vérifier en demandant sa version installée, que vous pouvez demander ainsi :
```nmap --version ```

Voici la sortie standart obtenue. Par la même occasion, la version 7.94SVN de Nmap sera celle utilisée tout au long des documents.
<img src="nmap_version" alt="nmap_version" width="700"/> 

   2. Netcat

L'installation de netcat se fait comme suit :
``` sudo apt install netcat-openbsd ```

Voilà, tout est installé. Vous pouvez désormais commencer à effectuer vos premiers scans de ports. Amusez-vous bien !
