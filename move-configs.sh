#! /bin/bash

echo "########################################################################################"
echo "# This shell script will move the config files from within this folder into            #"
echo "# their correct locations.                                                              #"
echo "########################################################################################"
echo ""
echo "Would you like to continue? (y/n)"

read varyon

if [ $varyon = y ]
then
# moving the config file for i3wm and keybinds

sudo mv ./config "$HOME/.config/i3/config"

# moving the i3status config file

sudo mv ./i3status.conf /etc/i3status.conf
echo ""
echo "#######################################################################################"
echo "#   Both config files have been moved to their respective places within your system   #"
echo "#######################################################################################"
fi

if [ $varyon = n ]
then
echo "##############################################################"
echo "#   No changes have been made to the default config files!   #"
echo "##############################################################"
fi
