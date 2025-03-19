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
   2. [Ubuntu](#ubuntu)  
          a. [Paramétrage des IP](#Paramétrage-des-IP)  
          b. [Paramétrage du réseau](#Paramétrage-du-réseau)
2. [Installation sur le client](#installation-sur-le-client)  
   1. [Nmap](#Nmap)  
   2. [Netcat](#Netcat)  
3. [FAQ](#faq)

# 1. Prérequis techniques
<span id="prerequis-techniques"></span>
   1. Update et upgrade

Bien evidemment, avant toute bonne chose, vérifiez que vous êtes sous la dernière version disponible, et qu'aucun merveilleux feature ne puisse vous passer sous le nez ! Pour cela, rien de plus simple, il suffit d'entrer ces deux commandes :
> sudo apt update

> sudo apt upgrade

Vous êtes désormais à jour ! Facile non ? 

  
   2. Ubuntu  
         a. Paramétrage des IP  
         b. Paramétrage du réseau
# 2. Installation sur le client
<span id="installation-sur-le-client"></span>
   1. Nmap
      
Nmap a été initialement créé pour fonctionner sur les systèmes d’exploitation GNU/Linux. Ainsi, vous le trouverez dans tous les dépôts de paquets officiels des distributions Unix.
Afin de vérifier que Nmap est bien présent dans vos dépôts de paquets, vous pouvez utiliser la commande suivante :  
> sudo apt search ^nmap$  

Le paquet étant disponible, il est donc possible de l'installer avec la commande :
> sudo apt install nmap

Enfin, pour vérifier que nmap ait bien été installé, il est possible de le vérifier en demandant sa version installée, que vous pouvez demander ainsi :
> nmap --version

Voici la sortie standart obtenue. Par la même occasion, la version 7.94SVN de Nmap sera celle utilisée tout au long des documents.

<img src="https://github.com/WildCodeSchool/TSSR-2503-P1-G1-ScannerDePorts/blob/main/Ressources/Nmap%20version.png" alt="nmap_version" width="700"/> 

   2. Netcat

L'installation de netcat se fait comme suit :
> sudo apt install netcat-openbsd

Voilà, tout est installé. Vous pouvez désormais commencer à effectuer vos premiers scans de ports. Amusez-vous bien !
