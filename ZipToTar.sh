#!/bin/bash

# Lancer ce script au même niveau que les zip à convertir
# un dossies TAR sera créé contenant une version tar des zip
# pour changer l'extension souhaitée, modifier la valeur TARGET

EXT=zip
TARDIRECTORY=TAR
TARGET=tar

mkdir $TARDIRECTORY

for i in *.${EXT};
do
  FOLDERNAME=${i%.*}
  chmod 777 $i
  mkdir $FOLDERNAME
  unzip -q $i -d $FOLDERNAME
  cd $FOLDERNAME
  tar -cf $FOLDERNAME.$TARGET *
  chmod 777 $FOLDERNAME.$TARGET
  mv $FOLDERNAME.$TARGET ../$TARDIRECTORY
  cd ..
  rm -rf $FOLDERNAME
  echo $FOLDERNAME.$TARGET " created"

done
