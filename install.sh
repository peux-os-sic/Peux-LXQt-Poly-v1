#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS LXQt Polybar configuration script
###########################################################

if zenity --question --text="Want to proceed?"
then 

    dir="$HOME/.config/polybar"

    # check if polybar directory exists or not!
    if [[ ! -d $dir ]]; then
        # using two step process instead of one liner
        mkdir $dir
        mkdir -p $dir/LXQt/v1
    else
        mkdir -p $dir/LXQt/v1 # one liner when parent folder is not available
    fi


    echo "changing directory"
    cd ../

    cp -r Peux-LXQt-Poly-v1/polybar/ $dir/LXQt/v1
    notify-send 'Fetched folder has been moved to ~/.config/polybar/LXQt/'

else
    notify-send "Operation skipped!"
fi

rm -rf /tmp/fetcher/Peux-LXQt-Poly-v1
notify-send "Done!"
