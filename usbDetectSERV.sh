#!/bin/bash


exec > /tmp/insert_log 2>&1

# creation de variables

chemin_periph=/dev/sdb1

music= mplayer /Music/fally.mp3

nb = 1


if [[ $point_montage || -e $chemin_periph ]]
then
        echo "$(date): cle inseree!"

        # creer du chemin du peripherique

        sudo mkdir/media/usb_drive
        
        # mount le peripheriques

        point_montage=$(mount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        # jouer un sons

        echo "$music"

        # ecrire dans le fichier

        sudo touch/media/usb_drive/armand.txt

        #umount le peripherique

        point_demontage=$(umount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        echo "$music"
fi

[[ $point_montage ]] || {echo"cle non montee" ; exit1}


echo "cle monte sur $point_montage"

                                                              1,1           Top

