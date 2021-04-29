#!/bin/bash

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
rm -rf Peux-LXQt-Poly-v1
notify-send 'Fetched folder has been moved to ~/.config/polybar/LXQt/'

