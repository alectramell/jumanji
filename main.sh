#!/bin/bash

clear

source $(pwd)/logging.sh

clear

echo "..Welcome to JUMANJI.." | pv -qL 10

sleep 1.5

echo -n "..Are you ready to begin? " | pv -qL 10

sleep 0.5

echo -n "(y/n): "

read -n2 BEGIN

clear

if [ $BEGIN == "y" ] || [ $BEGIN == "Y" ]
then
	echo "..ah.. yes wonderer, now tell me who you are.." | pv -qL 10
	sleep 0.5
	echo -n "NAME: "
	read NICKNAME
	clear
	echo "..why hello $NICKNAME.." | pv -qL 10
	sleep 1.0
	notify-send --icon="/home/$(whoami)/Desktop/jumanji/img/icon.svg" "$NICKNAME" "..Has Entered JUMANJI.."
	clear
	touch $(pwd)/$NICKNAME.log
	clear
	touch $(pwd)/$NICKNAME.profile
	clear
	echo "$NICKNAME" > $(pwd)/$NICKNAME.profile
	clear
	STARTLOG
	clear
	echo "..now $NICKNAME, JUMANJI is a fierce jungle, you will need a title.. which will you take to name?.." | pv -qL 10
	echo "[a] Hunter" | pv -qL 10
	echo "[b] Seeker" | pv -qL 10
	echo "[c] Gatherer" | pv -qL 10
	echo " "
	echo -n "(a/b/c): "
	read -n2 TITLE
	clear
	if [ $TITLE == "a" ] || [ $TITLE == "A" ]
	then
		echo "..so.. you are a Hunter.. I see.." | pv -qL 10
		sleep 1.5
		XTITLE="HUNTER"
		sleep 0.5
		echo "$XTITLE" >> $(pwd)/$NICKNAME.profile
		sleep 0.5
		TITLELOG
		sleep 0.5
		bash $(pwd)/part1.sh BATTLE

	elif [ $TITLE == "b" ] || [ $TITLE == "B" ]
	then
		echo "..so.. you are a Seeker.. I see.." | pv -qL 10
		sleep 1.5
		XTITLE="SEEKER"
		sleep 0.5
		echo "$XTITLE" >> $(pwd)/$NICKNAME.profile
		sleep 0.5
		TITLELOG
		sleep 0.5
		bash $(pwd)/part1.sh BATTLE

	elif [ $TITLE == "c" ] || [ $TITLE == "C" ]
	then
		echo "..so.. you are a Gatherer.. I see.." | pv -qL 10
		sleep 1.5
		XTITLE="GATHERER"
		sleep 0.5
		echo "$XTITLE" >> $(pwd)/$NICKNAME.profile
		sleep 0.5
		TITLELOG
		sleep 0.5
		bash $(pwd)/part1.sh BATTLE
	else
		echo "Hmm.. It seems you are not ready to begin afterall.. try again when have decided your path.." | pv -qL 10
		sleep 1.5
		rm $(pwd)/$NICKNAME.log
		sleep 0.5
		bash $(pwd)/main.sh
	fi

elif [ $BEGIN == "n" ] || [ $BEGIN == "N" ]
then
	echo "..well than, I see, when you are ready, please, tell me so.." | pv -qL 10
	sleep 3.0
	bash $(pwd)/main.sh

else
	bash $(pwd)/main.sh
fi


