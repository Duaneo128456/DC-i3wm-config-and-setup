#! /bin/bash

echo "#########################################################"
echo "#        Installing the basics for an i3-wm setup       #"
echo "#########################################################"
echo ""
echo "" 

echo "#########################################################"
echo "#           Installing base install of i3-wm            #"
echo "#########################################################"

sudo apt install i3 suckless-tools xorg lightdm -y

echo ""

echo "###########################################################"
echo "#   Installing network manager applet, screenshot tool,   #" 
echo "#   copy and paste functionality, brightness controls.    #"
echo "###########################################################"

sudo apt install network-manager-applet scrot diodon brightnessctl alsa-utils -y

echo ""

echo "############################################################"
echo "#   Installing basic apps such as: firefox-esr, l3afpad,   #" 
echo "#   pcmanfm, gdebi, btop (terminal system monitor), and    #"
echo "#   fastfetch (display system configuration)               #"
echo "############################################################"

sudo apt install gdebi l3afpad firefox-esr pcmanfm btop fastfetch picom xterm arandr lxappearance -y

echo "#############################################################"
echo "#   Please now reboot your system and chose "win" as your   #"
echo "#   modifier key (this will help if you wish to use my      #"
echo "#   version of the configuration file.)                     #"
echo "#############################################################"
echo "" 
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~   WARNING!!!:                                             ~"
echo "~   Without using my configuration file then parts of this  ~"
echo "~   install will not function as intended.                  ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
