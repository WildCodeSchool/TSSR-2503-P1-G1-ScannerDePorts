# Guide Utilisateur : Nmap et Netcat

## 1. Pour Comprendre

Avant d'utiliser Nmap et Netcat, il est essentiel de comprendre certains concepts liés aux ports, aux protocoles et au scanning.

### 1.1 Ports et Protocoles

Un port est un point virtuel où les connexions réseau commencent et se terminent. Chaque port est associé à un processus ou à un service spécifique et permet de différencier les types de trafic. Voici quelques-uns des ports les plus courants et les protocoles associés :

- **Port 20 et 21** : **FTP (File Transfer Protocol)** – Permet de transférer des fichiers entre un client et un serveur.
- **Port 22** : **SSH (Secure Shell)** – Crée des connexions réseau sécurisées.
- **Port 25** : **SMTP (Simple Mail Transfer Protocol)** – Utilisé pour l'envoi de mails.
- **Port 53** : **DNS (Domain Name System)** – Permet de résoudre les noms de domaine en adresses IP.
- **Port 80** : **HTTP (Hypertext Transfer Protocol)** – Permet de transférer des pages web.
- **Port 123** : **NTP (Network Time Protocol)** – Permet de synchroniser les horloges des ordinateurs.
- **Port 179** : **BGP (Border Gateway Protocol)** – Utilisé pour le routage entre les réseaux Internet.
- **Port 443** : **HTTPS (HTTP Secure)** – Version sécurisée de HTTP, utilisée pour la navigation sécurisée.
- **Port 500** : **ISAKMP (Internet Security Association and Key Management Protocol)** – Gère les connexions sécurisées IPsec.
- **Port 587** : **SMTP sécurisé** – Utilisé pour l'envoi d'emails de manière sécurisée.
- **Port 3389** : **RDP (Remote Desktop Protocol)** – Permet d'accéder à un bureau distant.

### 1.2 Scanning

Le scanning est une technique utilisée pour détecter et analyser les hôtes actifs, les services en cours d'exécution et les ports ouverts sur un réseau.

### 1.3 Le débogage

Le débogage (ou debugging en anglais) est le processus d’identification, d’analyse et de correction des erreurs (ou bugs) dans un programme informatique, un script ou un système. Le débogage est essentiel pour corriger les erreurs en identifiant et réparant les dysfonctionnements, améliorer les performances en optimisant le code, assurer la sécurité en détectant les vulnérabilités et comprendre le fonctionnement du programme en analysant son comportement. 


## 2. Utilisation de Nmap

### 2.1 C'est quoi Nmap ?

[Nmap](https://nmap.org) ("Network Mapper") est un logiciel de cartographie de réseaux qui s’est imposé comme l’un des outils de découverte gratuits les plus populaires du marché. C’est désormais l’un des principaux outils de cartographie utilisés par les administrateurs réseau. Ce programme peut être utilisé pour trouver des hôtes actifs sur un réseau, effectuer un balayage de ports, des balayages ping, ainsi que détecter le système d’exploitation d’une machine et la version d’un logiciel.

À la base, Nmap est un outil d’analyse de réseau qui exploite les paquets IP pour identifier tous les appareils connectés à un réseau et fournir des informations sur les services et les systèmes d’exploitation qu’ils exécutent. Ce programme est le plus souvent utilisé via une interface en ligne de commande (bien que des interfaces graphiques soient également disponibles) et est compatible avec de nombreux systèmes d’exploitation

Nmap est un logiciel intuitif et les administrateurs système d’autres programmes connaissent généralement les outils qu’il fournit. Son principal avantage réside dans l’intégration d’un large éventail de ces outils dans un seul et même programme. Vous n’êtes donc pas obligé de passer d’un outil de surveillance réseau à un autre.

Pour l’utiliser, vous devez connaître les interfaces en ligne de commande. La plupart des utilisateurs expérimentés savent écrire des scripts afin d’automatiser les tâches courantes, mais ce n’est pas nécessaire pour la surveillance de base du réseau. C'est ce que nous allons voir dans la partie suivante.

### 2.2 Utilisation de Nmap

Les commandes courantes de Nmap peuvent être exécutées via une ligne de commande simple, avec de nombreux raccourcis pour automatiser les tâches courantes.

### 2.3 Commandes de base Nmap

- **Scan par IP ou nom d'hôte** :
  ```bash
  nmap -sp <IP/nom_de_cible>
  
- **Scan de ping** :
  ```bash
  nmap -sp 172.16.10.05/24

- **Scan de système d'exploitation** :
  ```bash
  nmap -O
  
- **Scan de ports populaires** :
  ```bash
  nmap --top-ports 20
  
- **Scan de ports spécifiques ou de tous les ports** :
  ```bash
  nmap -p 1-65535 localhost

- **Sauvegarde des résultats dans un fichier texte** :
  ```bash
  nmap -oN output.txt
  
- **Sauvegarde des résultats dans un fichier texte** :
  ```bash
  nmap -oX output.txt
  
### 2.4 Scan de ports

- **Scan TCP SYN (sS) : Scan rapide, sans établir de connexion complète** :
  ```bash
  nmap -sS <IP>
  
- **Scan TCP Connect (sT) : Plus lent, mais plus fiable, car il établit une connexion complète** :
  ```bash
  nmap -sT <IP>
  
- **Scan UDP (sU) : Utilisé pour scanner des ports UDP comme DNS, SNMP, etc** :
  ```bash
  nmap -sU <IP>

- **Scan SCTP INIT (sY) : Utilisé pour les services SS7 et SIGTRAN** :
  ```bash
  nmap -sY <IP>
  
- **Scan NULL (sN) : Exploite une faille dans le système TCP pour tester les ports sans les interroger directement** :
  ```bash
  nmap -sN <IP>
  
## 3 Utilisation de Netcat

### 3.1 C'est quoi Netcat ?

[Netcat](https://www.it-connect.fr/a-la-decouverte-de-lutilitaire-netcat-sur-linux/) (ou `nc`) est un utilitaire permettant d'ouvrir des connexions réseau TCP/UDP. Souvent appelé le "couteau suisse du TCP/IP", il est très polyvalent et utilisé pour l'écoute et l'envoi de données.

L'utilitaire Netcat propose un large éventail de commandes pour gérer les réseaux et surveiller le flux des données de trafic entre les systèmes. Les réseaux informatiques, dont Internet, sont basés sur l'épine dorsale des protocoles TCP (Transmission Control Protocol) et UDP (User Datagram Protocol). Il s'agit d'un outil gratuit et simple à utiliser avec Wireshark, spécifiquement pour l'analyse de paquets réseau. La première version de Netcat a été lancée en 1995 et l'utilitaire a été maintes fois mis à jour depuis.

Même s'il peut être utile à toute équipe informatique, Netcat est un outil particulièrement bien adapté à la croissance des services réseau gérés en interne et du cloud computing. Les administrateurs réseau et système doivent pouvoir rapidement déterminer comment fonctionne leur réseau et quels types d'activités s'y déroulent.

Netcat fonctionne comme un outil de back-end qui permet d'effectuer un balayage et une écoute des ports. Vous pouvez d'autre part l'utiliser pour un transfert direct de fichiers ou comme un backdoor dans d'autres systèmes en réseau. Netcat est enfin un outil souple car il peut être intégré à des scripts destinés à réaliser des tâches plus lourdes.

### 3.2 Utilisation de Netcat

Les commandes courantes de Netcat peuvent être exécutées via une ligne de commande simple, avec de nombreux raccourcis pour automatiser les tâches courantes.

### 3.3 Commandes de base Netcat

Dans les commandes qui vont suivrent, nous retrouverons plusieurs fois deux options importantes qui sont détaillées ci-dessous.

**Mode d'écoute ( -l )** : cette option indique à Netcat d'écouter les connexions entrantes. Par exemple, _nc -l 1234_ obligera Netcat à écouter les connexions sur le _port 1234_.

**Mode verbeux ( -v )** : cette option permet à Netcat de fournir plus d'informations sur la connexion. C'est utile pour le débogage.

Plage de ports : vous pouvez spécifier une plage de ports auxquels Netcat se connectera ou écoutera. Par exemple, _nc -l 1234-1240_ fera écouter Netcat sur les _ports 1234 à 1240_.

**a) Mise en communication**  

- **La façon la plus simple d’utiliser Netcat est d’ouvrir une communication en mode serveur grâce à la commande suivante** :
    ```bash
    nc -l -p <n° de port TCP>

- **Du côté du client, on peut alors ouvrir une autre session et exécuter la commande suivante** :
    ```bash
    nc @IPServeur <n° de port>

- **REMARQUE : si l’on doit communiquer via un port UDP, il suffit d’ajouter l’option -u aux commandes côté serveur** :
    ```bash
    nc -l -u -p <n° de port TCP>

- **Et côté client** :
    ```bash
    nc -u @IPServeur <n° de port>

- **Ainsi, par exemple, pour ouvrir une communication via le port TCP/8000, sur un serveur dont l’adresse principale est 192.168.1.3, on devra exécuter la commande en mode serveur suivante** :
    ```bash
    nc -l -p 8000

- **Ensuite, il faudra ouvrir une autre session qui servira de client afin d’exécuter l’instruction suivante** :
    ```bash
    nc 192.168.1.3 8000

Du coup, cela ouvre de nombreuses perspectives d’applications. En effet, grâce à ce mécanisme, on peut facilement transférer de l’information quelle qu’elle soit, au travers du réseau d’entreprise.

**b) Transfert d'informations**  

- **Envoyer un fichier** :
    ```bash
    nc <IP_du_destinataire> 1234 < fichier.txt

- **Recevoir un fichier** :
    ```bash
    nc -l -p 1234 > fichier.txt

**c) Balayage de ports avec Netcat**

- **Balayage d'un port unique** :
    ```bash
    nc -zv site.com 80 –


- **Balayage d'un ensemble de ports séparés** :
    ```bash
    nc -zv hostname.com 80 84

- **Balayage d'une plage de ports** :
    ```bash
    nc -zv site.com 80-84

**d) Shells backdoor Netcat** _(Risque de sécurité ! À utiliser avec prudence.)_

Une porte dérobée (de l'anglais backdoor) est une fonctionnalité inconnue de l'utilisateur légitime, qui donne un accès secret au logiciel.

- **Exécute un shell sous Linux** :
    ```bash
    nc -l -p [port] -e /bin/bash

- **Exécute un shell sous Linux** :
    ```bash    
    nc -l -p [port] -e cmd.exe

- **Liste de toutes les commandes disponibles dans Netcat** : 
    ```bash
    nc-help

## 4. FAQ

**Est-ce que Nmap est légal ?** 

Oui, Nmap est un outil légitime pour l'audit de sécurité et l'exploration réseau. Cependant, son utilisation sans autorisation peut être illégale, selon la législation locale.

**Est-ce que Netcat est légal ?**  

Netcat est un outil polyvalent utilisé pour les connexions réseau. Comme Nmap, son utilisation peut être légale ou illégale, selon le contexte et la permission donnée.

**Est-ce qu'il existe des alternatives à Nmap et Netcat ?**  

Oui, des alternatives comme Angry IP Scanner ou Zenmap pour Nmap et Socat pour Netcat existent.

**Combien coûtent Nmap et Netcat ?**  

Nmap et Netcat sont tous deux des outils open source gratuits.
