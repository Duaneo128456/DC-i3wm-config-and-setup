#! /bin/bash

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~                                                                  ~"
echo "~  Installing accountsservice to be able to display your username  ~"
echo "~                                                                  ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""

sudo apt install accountsservice

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~                                                                                   ~"
echo "~  Please open a new a new terminal and type 'sudo nano /etc/lightdm/lightdm.conf'  ~"
echo "~  Please uncomment '[Seats:*]' and uncomment 'greeter-hide-users' make sure to     ~"
echo "~  change 'True' to 'False' for 'greeter-hide-users'                                ~"
echo "~                                                                                   ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""

echo " Have you made the changes mentioned above?"

read varyon

if [ $varyon = y ]
then
sudo systemctl restart lightdm
fi

if [ $varyon = n ]
then
echo ""
echo "#########################################################################"
echo "#                                                                       #"
echo "#  You Really need to change this configuration file for this to work!  #"
echo "#  Please make this change in the file as listed above and rerun this   #"
echo "#  script!                                                              #"
echo "#                                                                       #"
echo "#########################################################################"
fi

Script Created by Duane Cambron
