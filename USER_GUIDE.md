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

## 2. Utilisation de Nmap

### 2.1 C'est quoi Nmap ?

[Nmap](https://nmap.org) ("Network Mapper") est un logiciel de cartographie de réseaux qui s’est imposé comme l’un des outils de découverte gratuits les plus populaires du marché. C’est désormais l’un des principaux outils de cartographie utilisés par les administrateurs réseau. Ce programme peut être utilisé pour trouver des hôtes actifs sur un réseau, effectuer un balayage de ports, des balayages ping, ainsi que détecter le système d’exploitation d’une machine et la version d’un logiciel.

À la base, Nmap est un outil d’analyse de réseau qui exploite les paquets IP pour identifier tous les appareils connectés à un réseau et fournir des informations sur les services et les systèmes d’exploitation qu’ils exécutent. Ce programme est le plus souvent utilisé via une interface en ligne de commande (bien que des interfaces graphiques soient également disponibles) et est compatible avec de nombreux systèmes d’exploitation

Nmap est un logiciel intuitif et les administrateurs système d’autres programmes connaissent généralement les outils qu’il fournit. Son principal avantage réside dans l’intégration d’un large éventail de ces outils dans un seul et même programme. Vous n’êtes donc pas obligé de passer d’un outil de surveillance réseau à un autre.

Pour l’utiliser, vous devez connaître les interfaces en ligne de commande. La plupart des utilisateurs expérimentés savent écrire des scripts afin d’automatiser les tâches courantes, mais ce n’est pas nécessaire pour la surveillance de base du réseau. C'est ce que nous allons voir dans la partie suivante.

### 2.2 Utilisation de Nmap

Les commandes courantes de Nmap peuvent être exécutées via une ligne de commande simple, avec de nombreux raccourcis pour automatiser les tâches courantes.

### 2.3 Commandes de Base

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

[Netcat](https://nc110.sourceforge.net) (ou `nc`) est un utilitaire permettant d'ouvrir des connexions réseau TCP/UDP. Souvent appelé le "couteau suisse du TCP/IP", il est très polyvalent et utilisé pour l'écoute et l'envoi de données.

L'utilitaire Netcat propose un large éventail de commandes pour gérer les réseaux et surveiller le flux des données de trafic entre les systèmes. Les réseaux informatiques, dont Internet, sont basés sur l'épine dorsale des protocoles TCP (Transmission Control Protocol) et UDP (User Datagram Protocol). Il s'agit d'un outil gratuit et simple à utiliser avec Wireshark, spécifiquement pour l'analyse de paquets réseau. La première version de Netcat a été lancée en 1995 et l'utilitaire a été maintes fois mis à jour depuis.

Même s'il peut être utile à toute équipe informatique, Netcat est un outil particulièrement bien adapté à la croissance des services réseau gérés en interne et du cloud computing. Les administrateurs réseau et système doivent pouvoir rapidement déterminer comment fonctionne leur réseau et quels types d'activités s'y déroulent.

Netcat fonctionne comme un outil de back-end qui permet d'effectuer un balayage et une écoute des ports. Vous pouvez d'autre part l'utiliser pour un transfert direct de fichiers ou comme un backdoor dans d'autres systèmes en réseau. Netcat est enfin un outil souple car il peut être intégré à des scripts destinés à réaliser des tâches plus lourdes.
