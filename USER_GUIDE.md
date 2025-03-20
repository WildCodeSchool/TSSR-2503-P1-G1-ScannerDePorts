## Sommaire
1. [Pour comprendre](#pour-comprendre)
2. [Nmap et Netcat](#nmap-et-netcat)
3. [Utilisation de base](#utilisation-de-base)
4. [Utilisation avancée](#utilisation-avancee)
5. [FAQ](#faq)

# 1. Pour comprendre
<span id="pour-comprendre"></span>
Avant d'utiliser Nmap et Netcet, il est essentiel de comprendre les concepts liés aux ports, aux protocoles et au scanning.
1.1 Ports et protocoles
Un port est un point d'entrée/sortie d'une machine, identifié par un numéro (ex :22 pour SSH, 80 pour HTTP)
Un protocole définit la manière dont les données sont échangées entre machines (TCP,UDP,ICMP,etc)
1.2 Scanning
Le scanning est une technique utilisée pour détecter et analyser les hôtes (machines) actifs, les services en cours d'execution et les ports ouverts sur un réseau.

# 2. Nmap et Netcat
<span id="nmap-et-netcat"></span>
Nmap (« Network Mapper ») est un outil open source d'exploration réseau et d'audit de sécurité. Il a été conçu en 1997 par Fyodor. Il est crée pour rapidement scanner de grands réseaux, mais il fonctionne aussi très bien sur une cible unique. Nmap innove en utilisant des paquets IP bruts (raw packets) pour déterminer quels sont les hôtes actifs sur le réseau, quels services (y compris le nom de l'application et la version) ces hôtes offrent, quels systèmes d'exploitation (et leurs versions) ils utilisent, quels types de dispositifs de filtrage/pare-feux sont utilisés, ainsi que des douzaines d'autres caractéristiques.

Netcat, également abrégé nc, est un utilitaire permettant d'ouvrir des connexions réseau, que ce soit UDP ou TCP. Il est conçu pour être incorporé aisément dans un large éventail d'applications. En raison de sa polyvalence, netcat est aussi appelé le « couteau suisse du TCP/IP ».


# 3. Utilisation de base
<span id="utilisation-de-base"></span>

Scan de base

Scan rapide d'une adresse IP
nmap <IP>

Scan des hôtes actifs sur un réseau
# 4. Utilisation avancée
<span id="utilisation-avancee"></span>

# 5. FAQ
<span id="faq"></span>

Est-ce que Nmap est légal ?

Est-ce que Netcat est légal ?

Est-ce qu'il existe des alternatives à Nmap et Netcat ?

Combien coûtent Nmap et Netcat ?

