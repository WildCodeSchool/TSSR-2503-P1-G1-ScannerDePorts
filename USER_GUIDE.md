## Sommaire
1. [Pour comprendre](#pour-comprendre)
2. [Nmap et Netcat](#nmap-et-netcat)
3. [Utilisation de Nmap](#utilisation-de-nmap)
4. [Utilisation de Netcat](#utilisation-de-netcat)
5. [FAQ](#faq)

# 1. Pour comprendre
<span id="pour-comprendre"></span>
Avant d'utiliser Nmap et Netcet, il est essentiel de comprendre les concepts liés aux ports, aux protocoles et au scanning.
1.1 Ports et protocoles
Un port est un point virtuel où les connexions réseau commencent et se terminent. Basés sur logiciel, ils sont gérés par le système d'exploitation d'un ordinateur. Chaque port est associé à un processus ou à un service spécifique. Les ports permettent aux ordinateurs de différencier facilement les différents types de trafic. Les e-mails, par exemple, sont acheminés vers un port différent de celui des pages web, même si les deux atteignent l'ordinateur via la même connexion Internet. Ces ports sont eux mêmes identifiés par des protocoles. Ils définissent la manière dont les données sont échangées entre machines (TCP,UDP,ICMP,etc)

Quels sont les différents numéros de port ?
Il existe 65 535 numéros de port possibles, mais tous ne sont pas utilisés couramment. Voici quelques-uns des ports les plus couramment utilisés, ainsi que le protocole réseau qui leur est associé :

Ports 20 et 21 : File Transfer Protocol (FTP). Le protocole FTP permet de transférer des fichiers entre un client et un serveur.

Port 22 : Secure Shell (SSH). SSH est l'un des nombreux protocoles de tunneling qui créent des connexions réseau sécurisées.

Port 25 : historiquement, SMTP (Simple Mail Transfer Protocol, protocole simple de transfert de courrier). Le SMTP est utilisé pour le courrier électronique.

Port 53 : DNS (Domain Name System). Le DNS est un processus essentiel du réseau Internet moderne. Il fait correspondre les noms de domaines lisibles par l'homme aux adresses IP lisibles par la machine afin de permettre aux utilisateurs de charger des sites web et des applications sans avoir à mémoriser une longue liste d'adresses IP.
Port 80 : HTTP (Hypertext Transfer Protocol, protocole de transfert hypertexte). Le protocole HTTP rend Internet possible.

Port 123 : NTP (Network Time Protocol, protocole de temps réseau). Le NTP permet aux horloges des ordinateurs de se synchroniser entre elles. Il s'agit là d'un processus essentiel pour le chiffrement.

Port 179 : BGP (Border Gateway Protocol, protocole de passerelle en bordure). Le BGP est essentiel pour établir des itinéraires efficaces entre les grands réseaux qui composent Internet (ces grands réseaux sont appelés systèmes autonomes). Les systèmes autonomes utilisent le BGP pour diffuser les adresses IP qu'ils contrôlent.

Port 443 : HTTPS (HTTP Secure, HTTP sécurisé). Le HTTPS est la version sécurisée et chiffrée du HTTP. Tout le trafic web HTTPS passe par le port 443. Les services réseau qui utilisent le HTTPS pour le chiffrement, comme le DNS over HTTPS, se connectent également à ce port.

Port 500 : ISAKMP (Internet Security Association and Key Management Protocol, protocole de gestion des clés et des associations de sécurité pour Internet). Il fait partie du processus de mise en place des connexions sécurisées IPsec.

Port 587 : SMTP moderne et sécurisé qui utilise le chiffrement.

Port 3389 : RDP (Remote Desktop Protocol, protocole de bureau à distance). Le protocole RDP permet aux utilisateurs de se connecter à distance à leur ordinateur de bureau depuis un autre appareil.

1.2 Scanning
Le scanning est une technique utilisée pour détecter et analyser les hôtes (machines) actifs, les services en cours d'execution et les ports ouverts sur un réseau.

# 2. Nmap et Netcat
<span id="nmap-et-netcat"></span>
Nmap (« Network Mapper ») est un outil open source d'exploration réseau et d'audit de sécurité. Il a été conçu en 1997 par Fyodor. Il est crée pour rapidement scanner de grands réseaux, mais il fonctionne aussi très bien sur une cible unique. Nmap innove en utilisant des paquets IP bruts (raw packets) pour déterminer quels sont les hôtes actifs sur le réseau, quels services (y compris le nom de l'application et la version) ces hôtes offrent, quels systèmes d'exploitation (et leurs versions) ils utilisent, quels types de dispositifs de filtrage/pare-feux sont utilisés, ainsi que des douzaines d'autres caractéristiques.

Netcat, également abrégé nc, est un utilitaire permettant d'ouvrir des connexions réseau, que ce soit UDP ou TCP. Il est conçu pour être incorporé aisément dans un large éventail d'applications. En raison de sa polyvalence, netcat est aussi appelé le « couteau suisse du TCP/IP ».


# 3. Utilisation de Nmap
<span id="utilisation-de-base"></span>

La plupart des fonctions courantes de Nmap peuvent être exécutées à l'aide d'une seule commande, et le programme utilise également un certain nombre de commandes de « raccourci » qui peuvent être utilisées pour automatiser les tâches courantes.

Scan par IP ou par nom d'hôte
nmap -sp <IP/nom de la cible>

Scan de ping
# nmap -sp 172.16.10.05/24

Scan de systeme d'exploitation
# nmap -0 <IP de la cible>

Scan des ports les plus populaires
# nmap --top-ports 20 <IP de la cible>

Scan de ports spectifiques ou la totalité sur le serveur local ou à distance.
# nmap -p 1-65535 localhost/remote

Sortie vers un fichier
Si vous souhaitez enregistrer les résultats de vos analyses Nmap dans un fichier.

# -oN output.txt
Pour enregistrer les résultats dans un fichier texte

# -oX output.xml
Pour enregistrer les résultats au format XML.

Si vous souhaitez faire une analysé avancée, vous pouvez par exemple faire :

Il existe plusieurs façons d'effectuer un scan de port avec Nmap. Les plus courantes sont :

Le plus basique de ces scans est le scan sS TCP SYN, qui fournit à la plupart des utilisateurs toutes les informations nécessaires. Il analyse des milliers de ports par seconde et, comme il n'établit pas de connexion TCP, il n'éveille pas les soupçons.
# sS TCP SYN scan

La principale alternative à ce type d'analyse est l'analyse TCP Connect, qui interroge activement chaque hôte et demande une réponse. Ce type d'analyse est plus long qu'une analyse SYN, mais peut fournir des informations plus fiables.
# sT TCP connexion scan

L'analyse UDP fonctionne de manière similaire à l'analyse de connexion TCP, mais utilise des paquets UDP pour analyser les ports DNS, SNMP et DHCP. Ces ports sont les plus fréquemment ciblés par les pirates ; ce type d'analyse est donc un outil utile pour détecter les vulnérabilités.
# analyses sU UDP

L'analyse SCTP INIT couvre un ensemble différent de services : SS7 et SIGTRAN. Ce type d'analyse peut également être utilisé pour éviter toute suspicion lors de l'analyse d'un réseau externe, car il ne complète pas le processus SCTP.
# sY SCTP INIT scan

L'analyse TOP NULL est également une technique d'analyse très astucieuse. Elle exploite une faille du système TCP permettant de révéler l'état des ports sans les interroger directement, ce qui permet de consulter leur état même lorsqu'ils sont protégés par un pare-feu.
# sN TCP NULL



# 4. Utilisation de Netcat
<span id="utilisation de netcat"></span>

# 5. FAQ
<span id="faq"></span>

Est-ce que Nmap est légal ?

Est-ce que Netcat est légal ?

Est-ce qu'il existe des alternatives à Nmap et Netcat ?

Combien coûtent Nmap et Netcat ?

