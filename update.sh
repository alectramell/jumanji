#!/bin/bash

clear

git add *.md
git add *.sh
git add *.py
git add img
git add fonts
git commit -m "jumanji"
git push origin master

clear

echo "JUMANJI UPDATED!" | pv -qL 10

sleep 0.5
