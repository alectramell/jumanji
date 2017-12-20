#!/bin/bash

clear

echo "You have activated JUMANJI!"

sleep 0.5

notify-send --icon="/home/$(whoami)/Desktop/jumanji/img/icon.svg" --urgency="critical" "JUMANJI" "GAME ACTIVATED!"
