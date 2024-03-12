#!/bin/bash

# Create a folder called Continents 
echo "Creating a folder called continents"
mkdir continents 
sleep 2 # Pause for 2 seconds

# Change directories to continents 
echo " Changing directories to continents "
cd rm continents
sleep 2 # Pause for 2 seconds

# Create directories according to the specified structure

echo " Directories creation begins" 

# Create directory for Mumbia under Egypt in Africa
echo "Creating directory for Mumbia in Egypt, Africa..."
mkdir -p Africa/Egypt/Mumbia
sleep 2  # Pause for 2 seconds

# Create directory for Accra under Ghana in Africa
echo "Creating directory for Accra in Ghana, Africa..."
mkdir -p Africa/Ghana/Accra
sleep 2  # Pause for 2 seconds

# Create directory for Massachusetts under USA in America
echo "Creating directory for Massachusetts in USA, America..."
mkdir -p America/USA/Massachusetts
sleep 2  # Pause for 2 seconds

# Create directory for Toronto under Canada in America
echo "Creating directory for Toronto in Canada, America..."
mkdir -p America/Canada/Toronto
sleep 2  # Pause for 2 seconds

# Create directory for Tijuana under Mexico in America
echo "Creating directory for Tijuana in Mexico, America..."
mkdir -p America/Mexico/Tijuana
sleep 2  # Pause for 2 seconds

# Create directory for Cario under India in Asia
echo "Creating directory for Cario in India, Asia..."
mkdir -p Asia/India/Cario
sleep 2  # Pause for 2 seconds

# Create directory for London under UK in Europe
echo "Creating directory for London in UK, Europe..."
mkdir -p Europe/UK/London
sleep 2  # Pause for 2 seconds

# Create directory for Casablanca under Morocco in Europe
echo "Creating directory for Casablanca in Morocco, Europe..."
mkdir -p Europe/Morocco/Casablanca
sleep 2  # Pause for 2 seconds

# Create directory for Abuja under Nigeria in Europe
echo "Creating directory for Abuja in Nigeria, Europe..."
mkdir -p Europe/Nigeria/Abuja
sleep 2  # Pause for 2 seconds

# Create files within the respective directories
echo " File creation begins" 

# Create City.txt in Accra, Ghana, Africa
echo "Creating City.txt in Accra, Ghana, Africa..."
touch Africa/Ghana/Accra/City.txt
sleep 2  # Pause for 2 seconds

# Create unitedcore.txt in Massachusetts, USA, America
echo "Creating unitedcore.txt in Massachusetts, USA, America..."
touch America/USA/Massachusetts/unitedcore.txt
sleep 2  # Pause for 2 seconds

# Create Chealse.txt in London, UK, Europe
echo "Creating Chealse.txt in London, UK, Europe..."
touch Europe/UK/London/Chealse.txt
sleep 2  # Pause for 2 seconds

# Create Tenebu.txt in Abuja, Nigeria, Europe
echo "Creating Tenebu.txt in Abuja, Nigeria, Europe..."
touch Europe/Nigeria/Abuja/Tenebu.txt
sleep 2  # Pause for 2 seconds

echo "Directory and file creation complete."

sleep 2

echo "Starting the moving of directories to the correct location"

# Move Nigeria directory to Africa
echo "Moving Nigeria directory to Africa..."
mv Europe/Nigeria Africa/
sleep 2  # Pause for 2 seconds

# Move Cario directory to Egypt
echo "Moving Cario directory to Egypt..."
mv Asia/India/Cario Africa/Egypt/
sleep 2  # Pause for 2 seconds

# Move Mumbia directory to India
echo "Moving Mumbia directory to India..."
mv Africa/Egypt/Mumbia Asia/India/
sleep 2  # Pause for 2 seconds

# Move Morocco directory to Africa
echo "Moving Morocco directory to Africa..."
mv Europe/Morocco Africa/
sleep 2  # Pause for 2 seconds

echo "Directory and file moving ended" 