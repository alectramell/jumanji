#!/bin/bash

clear

source $(pwd)/logging.sh

clear

BATTLE() {

	clear
	echo "..you begin walking into the fierce jungle of JUMANJI.." | pv -qL 10
	sleep 1.5
	echo "..your surroundings are vast, dark, and you see that you will need supplies.." | pv -qL 10
	sleep 1.5
	echo "..you look around for items to survive.." | pv -qL 10
	sleep 1.5
	echo "..alast, you notice something close to you.." | pv -qL 10
	sleep 3.5
	clear
	MIX=$(echo $((1 + RANDOM % $(wc -w < $(pwd)/enemy.list))))
	clear
	ENEMY=($(cat $(pwd)/enemy.list))
	clear
	echo "..you have come across a ${ENEMY[$MIX]}.. what will you do?.." | pv -qL 10
	echo "[a] Fight" | pv -qL 10
	echo "[b] Run" | pv -qL 10
	echo "[c] Capture" | pv -qL 10
	echo " "
	echo -n "(a/b/c): "
	read -n2 CHP1
	clear
	if [ $CHP1 == "a" ] || [ $CHP1 == "A" ]
	then
		echo "..you fight.." | pv -qL 10
		sleep 1.5
		clear
		if [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "HUNTER" ]
		then
			echo "..after attacking, you find you have the Hunters skill.." | pv -qL 10
			echo "..you take what you can from the kill, and move forward.." | pv -qL 10
			sleep 0.5
			echo "KILL" > $(pwd)/$NICKNAME.score
			sleep 0.5
			KILLLOG
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "SEEKER" ]
		then
			echo "..after attacking, you find you have the Seekers skill.." | pv -qL 10
			echo "..you take what you can from the kill, and move forward.." | pv -qL 10
			sleep 0.5
			echo "KILL" > $(pwd)/$NICKNAME.score
			sleep 0.5
			KILLLOG
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "GATHERER" ]
		then
			echo "..after attacking, you soon find you do not have what it takes to kill.." | pv -qL 10
			echo "..you are a Gatherer, not a hunter, you lay to the ground, and die.." | pv -qL 10
			sleep 1.5
			DEATHLOG
			clear
		else
			echo "..in your absense of mind you become nervous.." | pv -qL 10
			echo "..you lay to the ground, and die.." | pv -qL 10
			sleep 1.5
			DEATHLOG
			clear

		fi

	elif [ $CHP1 == "b" ] || [ $CHP1 == "B" ]
	then
		echo "..you run.." | pv -qL 10
		sleep 1.5
		clear
		if [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "HUNTER" ]
		then
			echo "..after running, you find you are a fast Hunter.." | pv -qL 10
			echo "..you escape.." | pv -qL 10
			sleep 1.5
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "SEEKER" ]
		then
			echo "..after running, you find you have the Seekers speed.." | pv -qL 10
			echo "..you move forward.." | pv -qL 10
			sleep 1.5
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "GATHERER" ]
		then
			echo "..after running, you soon find you do not have what it takes to get out.." | pv -qL 10
			echo "..you are a Gatherer, not a hunter, nor a Seeker, you lay to the ground, and die.." | pv -qL 10
			sleep 1.5
			DEATHLOG
			clear
		else
			echo "..in your absense of mind you become nervous.." | pv -qL 10
			echo "..you lay to the ground, and die.." | pv -qL 10
			sleep 1.5
			DEATHLOG
			clear

		fi

	elif [ $CHP1 == "c" ] || [ $CHP1 == "C" ]
	then
		echo "..you cast a trap.." | pv -qL 10
		sleep 1.5
		clear
		if [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "HUNTER" ]
		then
			echo "..after waiting for your trap, you find you are not a Seeker.." | pv -qL 10
			echo "..you fail the catch, yet get away.." | pv -qL 10
			sleep 1.5
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "SEEKER" ]
		then
			echo "..after waiting for your trap, you find you have the Seekers skill.." | pv -qL 10
			echo "..you have caught this creature! you gather your catch, and move forward.." | pv -qL 10
			sleep 1.5
			KILLLOG
			clear

		elif [ $(sed '2!d' $(pwd)/$NICKNAME.profile) == "GATHERER" ]
		then
			echo "..after waiting for your trap, you soon find you do not have what it takes to make the catch.." | pv -qL 10
			echo "..you are a Gatherer, not a hunter, nor a Seeker, yet you will have your chance to succeed.." | pv -qL 10
			sleep 1.5
			clear
		else
			echo "..in your absense of mind you become nervous.." | pv -qL 10
			echo "..you lay to the ground, and die.." | pv -qL 10
			sleep 1.5
			DEATHLOG
			clear

		fi
	else
		DEATHLOG
	fi
}

clear

$1
