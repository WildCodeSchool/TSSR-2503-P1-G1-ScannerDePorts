![logo de la Wild Code SChool en exemple](Ressources/logo_WCS.jpg)

## Sommaire 

- [🎯 Présentation du projet](#presentation-du-projet)
- [📜 Introduction](#introduction)
- [👥 Membres du groupe par sprint](#membres-du-groupe-par-sprint)
- [⚙️ Choix Techniques](#choix-techniques)
- [🧗 Difficultés rencontrées](#difficultes-rencontrees)
- [💡 Solutions trouvées](#solutions-trouvees)
- [🚀 Améliorations possibles](#ameliorations-possibles)

# 🎯 **Présentation du projet**
<span id="presentation-du-projet"></span>
**Sujet choisi**

Scanner de ports

## **Présentation**

L'objet est l'utilisation de Nmap et Netcat pour la detection des ports de deux serveurs à partir d'un client, récupérer le plus d'informations et en déduire les failles de sécurité et les attaques possibles.

## **Objectifs finaux**

_Tâche principale :_

 - Scanner les ports d’un serveur à partir d’un client

 - En déduire les failles de sécurité et les attaques possibles

 - Récupérer le plus d’informations

 - Utilisation des logiciels Nmap et Netcat

_Objectif secondaire :_

 - Création de profils de scan personnalisés


# 📜 **Introduction**
<span id="introduction"></span>

Netcat et Nmap sont deux outils incontournables pour l’analyse et le diagnostic des réseaux. Netcat, grâce à sa capacité à lire et écrire des données sur les connexions réseau, permet de tester la disponibilité des services, d’effectuer des transferts de fichiers et même de mettre en place des backdoors. De son côté, Nmap se spécialise dans l’analyse des réseaux, l’identification des hôtes et la détection des vulnérabilités potentielles. Ensemble, ces outils offrent une vision approfondie de l’état d’un réseau et de ses failles de sécurité, facilitant ainsi le dépannage et la protection des infrastructures informatiques.

Dans ce projet, nous allons explorer le fonctionnement de ces logiciels et comprendre comment les utiliser efficacement pour analyser et sécuriser un réseau.

Vous retrouvez plus d'information les documents USER_GUIDE.md et INSTALL.md

# 👥 **Membres du groupe par sprint**
<span id="membres-du-groupe-par-sprint"></span>
**Sprint 1**

| Membre   | Rôle       | Missions |
| -------- | ---------- | -------- |
| Killian **Castillo** | PO         | -  Faire le lien avec le client et vérifier la conformité du produit avec les exigences clients, installer les VMs et logiciels en local et première rédaction du INSTALL.md|
| Alan **Coeurjoly** | SM         | - Vérifier que chaque membre de l'équipe à tous le matériel, installer les VMs et logiciels et première rédaction du USER_GUIDE.md        |
| Eric **Martienne** | Technicien | - Installer les VMs et logiciels et première redaction du README.md       |

**Sprint 2**

| Membre   | Rôle       | Missions |
| -------- | ---------- | -------- |
| Killian **Castillo** | Technicien | - Finir rédaction de INSTALL.md, rédaction du script; tests et présentation|
| Alan **Coeurjoly** | PO | - Faire le lien avec le client et vérifier la conformité du produit avec les exigences clients, finalisation le USER_GUIDE.md;redaction de la présentation PowerPoint tests et présentation |
| Eric **Martienne** | SM         | - Vérifier que chaque membre de l'équipe à tous le matériel, finaliser  le README.md; un script avorté ; test et présentation |       |

# ⚙️ **Choix techniques**
<span id="choix-techniques"></span>
_**Matériel**_

- 1 virtual machine sous VirtualBox **Windows serveur 2022** avec 2CPU et 4096 MO

- 1 virtual machine sous VirtualBox **Debian12** serveur avec 1CPU et 2048 MO

- 1 virtual machine sous VirtualBox **Ubuntu** client avec 1CPU et 2048 MO

_**Logiciel**_

- **NMAP** version 7.94SVN

- **NETCAT** version 1.10-47

# 🧗 **Difficultés rencontrées**
<span id="difficultes-rencontrees"></span>

- Connection réseau interne

- Définition des types de scan, et des ports pour définir les vulnérabilités potentiels

# 💡 **Solutions trouvées**
<span id="solutions-trouvees"></span>

- Partage des virtuals machines
  
- Documents et ressources en lignes

- Comprendre ce que c'est une vulnérabilité

- Partage des virtuals machines

# 🚀 **Améliorations possibles**
<span id="ameliorations-possibles"></span>

- Vigilance technique sur les vulnérabilités des services.

- Automatisations pour plusieurs scans sur plusieurs serveurs dans un script
