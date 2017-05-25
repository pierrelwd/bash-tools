#!/bin/bash

#Set here the mirror's url you want to use
MIRROR="http://mirror.ibcp.fr/pub/eclipse//technology/epp/downloads/release/neon/3/eclipse-jee-neon-3-linux-gtk-x86_64.tar.gz"
#Set here the downloaded archive's file
ARCHIVE="eclipse-jee-neon-3-linux-gtk-x86_64.tar.gz"
SHORTCUT="/usr/share/applications/eclipse.desktop"

echo "###########################"
echo "# Debian Ecipse Installer #"
echo "###########################"

#Download and extract archive
cd /opt
echo "## Archive downloading ####"
wget $MIRROR
echo "## Archive extraction ######"
tar -xzf $ARCHIVE

#Create Shortcut
echo "## Shortut creation #######"
echo "#"
echo "#"
echo "#"
echo "#"
touch $SHORTCUT
echo [Desktop Entry] >> $SHORTCUT
echo Name=Eclipse >> $SHORTCUT
echo Exec=/opt/eclipse/eclipse >> $SHORTCUT
echo Type=Application >> $SHORTCUT
echo Icon=/opt/eclipse/icon.xpm >> $SHORTCUT
echo Categories=Developpement >> $SHORTCUT

echo "## Installation complete ##"
