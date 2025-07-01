#!/bin/bash


quel_scan() {
read -p "Insérez l'adresse IP de la cible : " IP
    echo "Quel type de script voulez-vous faire ? : "
    echo "1. Discret"
    echo "2. Aggressif"
    echo "3. UDP"
    echo "x. Cancel"

    read -p "Vous avez choisi un scan " choix
   
#Création du dossier pour y mettre le fichier de résultats
   read -p "Dans quel dossier voulez vous retrouver les résultats du scan ? " dossier
 
    [ -d $dossier ] && cd $dossier || mkdir $dossier ; cd $dossier
  #cache l'erreur de si $dossier est déjà créé (marche quand même)  
    mkdir $dossier 2> /dev/null
 
 #Création du fichier de résultats
    read -p "Dans quel fichier voulez vous retrouver les résultats du scan ? " result
    echo "Création du fichier $result"

    case "$choix" in
      1)
        echo "Scan discret en cours ..."
        nmap $IP -oN $result
        ;;
      2)
        echo "Scan agressif en cours ..."
        nmap -A $IP -oN $result
        ;;
      3)
        echo "Scan agressif en cours ..."
        nmap -U $IP -oN $result
        ;;
      x)
        echo "Scan annulé"
        ;;
      *)
        echo "Choix invalide. Veuillez réessayer."
        ;;
    esac
}


quel_scan
