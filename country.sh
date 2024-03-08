#!/bin/bash
mkdir -p Africa/Egypt/Mumbia 
mkdir -p Africa/Ghana/Accra
mkdir -p America/USA/Massachusetts
mkdir -p America/Canada/Toronto
mkdir -p America/Mexico/Tijuana
mkdir -p Asia/India/Cario
mkdir -p Europe/UK/London
mkdir -p Europe/Morocco/Casablanca
mkdir -p Europe/Nigeria/Abuja
touch Africa/Ghana/Accra/City.txt
touch America/USA/Massachusetts/unitedcore.txt
touch Europe/UK/London/Chealse.txt
touch Europe/Nigeria/Abuja/Tenebu.txt
mv Europe/Nigeria Africa/
mv Asia/India/Cario Africa/Egypt/
mv Africa/Egypt/Mumbia Asia/India/
mv Europe/Morocco Africa/