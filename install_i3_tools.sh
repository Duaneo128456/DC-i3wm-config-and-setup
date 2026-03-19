#! /bin/bash

echo "  ######    #######     #####  #####  #####      ###      ###     "
echo "  #////#    #//////#    #///#  #///#  #///#     #///#    #///#    "
echo "   #//#     ####////#   #///#  #///#  #///#    #/////#  #/////#   "
echo "   #//#         #////#  #///#  #///#  #///#   #///#///##///#///#  "
echo "   #//#     ####////#   #///#  #///#  #///#  #///# #/////#  #///# "
echo "   #//#     #//////#    #///#  #///#  #///#  #///#  #///#   #///# "
echo "   #//#     ####////#   #///# #/////# #///#  #///#  #///#   #///# "
echo "   #//#         #////#  #///#///##///#///#   #///#  #///#   #///# "
echo "   #//#     ####////#    #/////#  #/////#    #///#  #///#   #///# "
echo "  #////#    #//////#      #///#    #///#     #///#  #///#   #///# "
echo "  ######    ######         ##       ##       #####  #####   ##### "


echo "Welcome to my setup script for I3-WM"
echo "This script will setup a basic Debian 13 (Trixie) install of I3 Window Manager"
echo "This is a personal project (Mainly for myself to be able to setup a basic I3-WM system)"
echo "but if anyone else decides to use this then I am greatful for your testing and support."
echo "I will not be adding any new features to this just essential updates"
echo "Please type "continue" to start this script"
echo "If you wish to cancel this script without running it then type "cancel""

read varcon

if [ $varcon = continue ]
then
# this installs base i3 system

sudo apt install i3 suckless-tools xorg lightdm -y

# This installs: network manager applet, screenshot capability, copy and paste capability,
# screen brightness controls and sound controls

sudo apt install network-manager-applet scrot diodon brightnessctl alsa-utils -y

# This installs basic apps such as: firefox-esr, l3afpad, pcmanfm, gdebi, 
# btop (terminal system monitor), fastfetch (display system configuration)               

sudo apt install gdebi l3afpad firefox-esr pcmanfm btop fastfetch picom xterm arandr lxappearance feh -y

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
fi

if [ $varcon = cancel ]
then
echo "#############################################################"
echo "# No changes have been made to your system, if you wish     #"
echo "# to run this script then please rerun this script          #"
echo "#############################################################"
fi
