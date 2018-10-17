#!/bin/bash


echo "Bienvenue dans l'outils ICCMP developpé par Adriano SIMAO"
#Install clean configure my package
echo "-------------------------------------------------------------------"
echo "Tapez sur les touches suivantes pour effectuer les action voulues"
echo "1) Mise a jour du systéme et des paquets"
echo "2) Nettoyage des paquets"
echo "3) Installation des paquets de base"
echo "4) Rapport de la machine"
echo "Q ou q :Quitter le script"
echo "-------------------------------------------------------------------"
read choix


case $choix in
	1)
	clear
	echo "mise a jour des paquets "
	sudo apt update && sudo apt upgrade
	echo "Si vous rencontrez des soucis a cette étape faite le nettoyage de vos paquets "
	;;
	2)
	clear
	echo "Nettoyage des paquets"
	sudo apt autoremove && sudo apt clean && sudo apt autoclean
	;;

	3)
	clear
	echo "installation des paquets de base"
	sudo apt install locate vim  && sudo updatedb
	;;
	4)
	clear	
	etatDisque=$(df -h /dev/sda1 |awk '{print $4}')" De libre"
	uname=$(uname -a)
	
	echo $etatDisque 
	echo $uname

	;;
	q)
	clear
	echo "Merci d'avoir utilisié le script"
	exit
	;;

	Q)
	clear
	echo "Merci d'avoir utilisié le script"
	exit
	;;
	*) 
	

esac
