# DC-i3wm-config-and-setup
My i3wm setup script and a configuration file for a basic Debian 13 install. 
The only options selected during installation for this setup to work is "Standard System Utilities" with all other options not selected during installation of Debian 13 (Trixie).


## *Please read "Install_instructions.txt" before installing this set of scripts.*


### What is being done via this project:
- installing a basic suite of applications, including a web browser, a text editor, a file manager, a photo viewer and a terminal.   
- I have added additional keybinds for web browser, text editor, calculator and file manager to the configuration file.
- I have included installing packages required to be able to control things such as screen brightness and created the keybinds to be able to do this (via the configuration file).
- I have also fixed the default keybinds for sound within i3wm to use the pre-installed package within Debian 13 (via the configuration file). [the microphone mute function is still within beta testing] 
- Network manager system tray item now displayed by default and installed (via the configuration file).
- add in copy and paste functionality. (via the configuration file)
- screenshot capability (via the configuration file)
- added a x11 compositor (via the configuration file)
- installed a display manager
- installed a x window manager
- basic apps to customise your system, including lxappearance, arandr and feh.


There is a configuration file that can be used to replace the default file created after installing i3wm. (this is required for the additional keybinds to be put into place, you will also have to press the windows key and shift and r to restart i3wm for the new keybinds to take effect.[assuming you chose the windows key as the modifier key within the wizard at first startup, at present it is recommended to chose the windows key as your modifier as my configuration script is currently only available with this modifier, if you chose the alt key within the setup wizard then my configuration will currently over write this.] if you chose the alt key during setup and have replaced the configuration script for i3wm you will either need to press alt and shift and r to restart i3wm but this will then automatically change all keybinds as listed below. 


### Packages that will be installed via this script:
- i3 window manager - tiling window manager
- lightdm - simple display manager
- xorg - xorg x window system
- picom - lightweight compositor for x11
- rofi - "start menu"
- scrot - screenshot tool
- gdebi - GUI tool for installing .deb files
- xterm - terminal application
- pcmanfm - file manager
- l3afpad - notepad application
- brightnessctl - to be able to adjust your screen brightness on a laptop
- fastfetch - display system configuration
- firefox-esr - extended support version of firefox
- network manager applet - to be able to select wifi networks from the system tray
- diodon - to add copy and paste functionality
- btop - command line system monitor
- lxappearance - to be able to customise look and feel
- arandr - GUI to be able to change screen resolution etc
- alsamixer - CLI sound mixer
- amixer - CLI command to be able to adjust volume and mute and unmute (required to make keybinds related to sound work)
- feh - to set backgrounds
- gpicview - to view pictures
- lxpolkit - policy kit helper 



#### keybinds currently in place:
- Windows key and b to open firefox-esr
- Windows key and enter key to open terminal
- Windows key and t to open l3afpad
- screenshot key to take a screenshot (defaults to saving within the user folder)
- brightness keys to increase and decrease brightness
- volume keys to increase and decrease volume and mute.
- microphone mute key to mute and unmute the microphone. (in beta testing at present)
- Windows key and n to open pcmanfm
- Windows key and c to open xcalc
- Windows key and d to open rofi (to open new apps) [escape key to close rofi if you decide not to open an app]

btop and neofetch will need to be opened via the terminal.

## **Change Log**
- 17-03-2026 - now i3status configuration file added
- 18/03/2026 - alsa-utils added to install script, this package contains alsamixer (CLI sound mixer), and amixer (which is used within the configuration file and is required for sound related keybinds), feh package added to install script and also added to configuration file to setup a background by default.
- 20/03/2026 - image viewer added to the package list within install shell script
- 21/03/2026 - rofi added to replace dmenu, script added to automate moving the config files, lxpolkit added to install script and into config file
