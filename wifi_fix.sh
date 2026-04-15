# /bin/bash

echo "!////////////////////////////////////////////////////////////////////////////////////////////////////!"
echo "/                                                                                                    /"
echo "/  This script is only required if you installed your system via wifi.                               /"
echo "/  There is an issue where you will potentially end up with two services issueing you an IP address  /"
echo "/  This script will replace the config file that is causing the conflict                             /"
echo "/                                                                                                    /"
echo "!////////////////////////////////////////////////////////////////////////////////////////////////////!"
echo ""
echo "Do you wish to continue? (y/n)"
read varyon

if [ $varyon = y ]
then
sudo cp ./interfaces /etc/network/interfaces
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~                                                     ~"
echo "~  The effected config file has been replaced!        ~"
echo "~  With a file containing the correct configuration!  ~"
echo "~                                                     ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi

if $varyon = n ]
then
echo "##################################################"
echo "#                                                #"
echo "#  No changes have been made to your system!!    #"
echo "#                                                #"
echo "##################################################"
fi

# Created by Duane Cambron
