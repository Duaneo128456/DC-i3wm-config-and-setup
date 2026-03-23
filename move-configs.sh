#! /bin/bash

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                                                      !"
echo "! This shell script will move the config files from within this folder into            !"
echo "! their correct locations.                                                             !"
echo "!                                                                                      !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
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
echo "!=====================================================================================!"
echo "=                                                                                     ="
echo "=   Both config files have been moved to their respective places within your system   ="
echo "=                                                                                     ="
echo "!=====================================================================================!"
fi

if [ $varyon = n ]
then
echo "!============================================================!"
echo "=                                                            ="
echo "=   No changes have been made to the default config files!   ="
echo "=                                                            ="
echo "!============================================================!"
fi

echo ""
echo "?????????????????????????????????????????????????????????????????????????????????????????????????"
echo "?                                                                                               ?"
echo "?  Would you like to change the 'sources.list' for apt to include 'contrib' and 'non-free' and  ?"
echo "?  comment out the install media from your apt list?                                            ?"
echo "?                                                                                               ?"
echo "?????????????????????????????????????????????????????????????????????????????????????????????????"
echo ""
echo "Would you like to make this change? (y/n)."
echo ""

read varnoy

if [ $varnoy = y ]
then
sudo cp ./sources.list /etc/apt/sources.list
echo ""
echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
echo "~                                                                                     ~"
echo "~  Your 'sources.list' file has been altered to include 'contrib' and 'non-free' and  ~"
echo "~  removed the install media                                                          ~"
echo "~                                                                                     ~"
echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
fi

if [ $varnoy = n ]
then
echo ""
echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
echo "~                                              ~"
echo "~  Your 'sources.list' had remained unaltered  ~"
echo "~                                              ~"
echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
fi

echo ""
echo "?????????????????????????????????????????????????????"
echo "?                                                   ?"
echo "?  Would you like to add a pre-built picom config   ?"
echo "?  file to your system?                             ?"
echo "?                                                   ?"
echo "?????????????????????????????????????????????????????"
echo ""
echo "Would you like to make this change? (y/n)"
echo ""
read varpic

if [ $varpic = y ] 
then
# making a picom directory within the '.config' folder
sudo mkdir "$HOME/.config/picom"

# copying the picom config file to the new made directory
sudo cp ./picom.conf "$HOME/.config/picom/picom.conf"

echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
echo "~                                                      ~"
echo "~  You have successfully copied the picom config file  ~"
echo "~  to '~/.config/picom/picom.conf'                     ~"
echo "~                                                      ~"
echo "!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!"
fi

if [ $varpic = n ]
then
echo "!//////////////////////////////////////////////////////!"
echo "/                                                      /"
echo "/   There is currently no picom config file in place   /"
echo "/   You will need to copy the sample file from         /"
echo "/   '/usr/share/doc/picom/examples/picom.sample.conf'  /"
echo "/   and place this within                              /"
echo "/   '/home/*your-username*/.config/picom/' and remain  /"
echo "/   the file to 'picom.conf'                           /"
echo "/                                                      /"
echo "!//////////////////////////////////////////////////////!"
fi

echo ""
echo "????????????????????????????????????????????????????????"
echo "?                                                      ?"
echo "?   If you wish picom to startup with your system      ?"
echo "?   then you may need a picom.desktop file.            ?"
echo "?   This script can add one if one is not present in   ?"
echo "?   '/etc/xdg/autostart'.                              ?"
echo "?                                                      ?"
echo "????????????????????????????????????????????????????????"
echo ""
echo "Would you like to copy this .desktop file to the xdg autostart directory? (y/n)"
echo ""
read vardesk

if [ $vardesk = y ]
then
sudo cp ./picom.desktop /etc/xdg/autostart
fi

if [ $vardesk = n ]
then
echo "-------------------------------------------------"
echo "-                                               -"
echo "-   The picom.desktop file has NOT been moved   -"
echo "-   or altered if present. If not present       -"
echo "-   you may be without a picom.desktop file     -"
echo "-                                               -"
echo "-------------------------------------------------"
fi

# Created by Duane Cambron
