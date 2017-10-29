#!/bin/bash

NICKNAME=$(sed '1!d' $(pwd)/*.profile)

STARTLOG() {

	echo "[$(date +%m-%d-%Y@%I:%M%p)] $NICKNAME entered JUMANJI.." > $(pwd)/$NICKNAME.log
}

CAMPLOG() {

	echo "[$(date +%m-%d-%Y@%I:%M%p)] $NICKNAME set up camp.." >> $(pwd)/$NICKNAME.log
}

DEATHLOG() {

	echo "[$(date +%m-%d-%Y@%I:%M%p)] $NICKNAME died in JUMANJI.." >> $(pwd)/$NICKNAME.log
}

KILLLOG() {

	echo "[$(date +%m-%d-%Y@%I:%M%p)] $NICKNAME received kill-points in JUMANJI.." >> $(pwd)/$NICKNAME.log
}

TITLELOG() {

	echo "[$(date +%m-%d-%Y@%I:%M%p)] $NICKNAME become a $XTITLE in JUMANJI.." >> $(pwd)/$NICKNAME.log
}
