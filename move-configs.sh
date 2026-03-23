#! /bin/bash

echo "########################################################################################"
echo "# This shell script will move the config files from within this folder into            #"
echo "# their correct locations.                                                             #"
echo "########################################################################################"
echo ""
echo "Would you like to continue? (y/n)"
echo ""

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
echo "~  comment out the install media from your apt list?                                            ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
echo "Would you like to make this change? (y/n)."
echo ""

read varnoy

if [ $varnoy = y ]
then
sudo cp ./sources.list /etc/apt/sources.list
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~  Your 'sources.list' file has been altered to include 'contrib' and 'non-free' and  ~"
echo "~  removed the install media                                                          ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi

if [ $varnoy = n ]
then
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Your 'sources.list' had remained unaltered"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi

echo ""
echo "?//////////////////////////////////////////////////////////////////////////////////?"
echo "/   Would you like to move the default 'picom.conf' file to your ./config folder?  /"
echo "/   Without doing so will mean picom will not work correctly                       /"
echo "?//////////////////////////////////////////////////////////////////////////////////?"
echo ""
echo "Would you like to proceed? (y/n)"
echo ""
read varpic

if [ $varpic = y ]
then
mkdir "$HOME/.config/picom"
sudo cp ./picom.conf "$HOME/.config/picom/picom.conf"
fi

if [ $varpic = n ]
then
echo "!///////////////////////////////////////////////////////////////////////////!"
echo "/  The Picom config file has not been created within within the '.config'   /" 
echo "/  directory. This may cause errors or issues by not having a picom config  /" 
echo "/ file!                                                                     /"
echo "!///////////////////////////////////////////////////////////////////////////!"
fi

# Created by Duane Cambron
