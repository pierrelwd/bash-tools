#!/bin/bash

#Run this script as root
#Set here the mirror's url you want to use
MIRROR="https://download.robomongo.org/1.0.0/linux/robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz"
#Set here the downloaded archive's file
ARCHIVE="robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz"
SHORTCUT="/usr/share/applications/robomongo.desktop"

echo "##############################"
echo "# Debian RoboMongo Installer #"
echo "##############################"

#Download, extract and delete archive
cd /opt
echo "## Archive downloading #######"
wget $MIRROR
echo "## Archive extraction ########"
tar -xzf $ARCHIVE
rm -rf $ARCHIVE
mv robomongo-1.0.0-linux-x86_64-89f24ea robomongo

#Create Shortcut
echo "## Shortut creation ##########"
echo "#"
echo "#"
echo "#"
echo "#"
touch $SHORTCUT
echo [Desktop Entry] >> $SHORTCUT
echo Name=RoboMongo >> $SHORTCUT
echo Exec=/opt/robomongo/bin/robomongo >> $SHORTCUT
echo Type=Application >> $SHORTCUT
#echo Icon=/opt/ >> $SHORTCUT
echo Categories=Developpement >> $SHORTCUT

echo "## Installation complete #####"
