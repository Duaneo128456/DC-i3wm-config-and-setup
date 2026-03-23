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

sudo cp ./config "$HOME/.config/i3/config"

# moving the i3status config file

sudo cp ./i3status.conf /etc/i3status.conf
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

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~  Would you like to change the 'sources.list' for apt to include 'contrib' and 'non-free' and  ~"
echo "~  remove the install media from your apt list?                                                 ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
echo " 'Y' to make this change or 'N' to keep the sources list as the out of the box configuration."

read varnoy

if [ $varnoy = Y ]
then
sudo cp ./sources.list /etc/apt/sources.list
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~  Your 'sources.list' file has been altered to include 'contrib' and 'non-free' and  ~"
echo "~  removed the install media                                                          ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi

if [ $varnoy = N ]
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Your 'sources.list' had remained unaltered"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi

# Created by Duane Cambron
