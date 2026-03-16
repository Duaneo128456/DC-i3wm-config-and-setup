# DC-i3wm-config-and-setup
My i3wm setup script and a configuration file for a basic Debian 13 install. 
The only options selected during installation for this setup to work is "Standard System Utilities" with all other options not selected during installation of Debian 13 (Trixie).

What is being done via this project:
- I have added additional keybinds for web browser, text editor, and file manager.
- I have included installing packages required to be able to control things such as screen brightness and created the keybinds to be able to do this.
- I have also fixed the default keybinds for sound within i3wm to use the pre-installed package within Debian 13. 
- Network manager system tray item now displayed by default and installed.

There is a script to install the necessary packages such as brightness controls, a web browser, a text editor and a file manager.

There is a configuration file that can be used to replace the default file created after installing i3wm. 


Packages that will be installed via this script:
- i3 window manager - tiling window manager
- lightdm
- xorg
- picom - lightweight compositor for x11
- dmenu - "start menu"
- scrot - screenshot tool
- gdebi - GUI tool for installing .deb files
- btop - system monitor tool
- xterm - terminal application
- pcmanfm - file manager
- l3afpad - notepad application
- brightnessctl - to be able to adjust your screen brightness on a laptop
- fastfetch - display system configuration
- firefox-esr - extended support version of firefox
- network manager applet - to be able to select wifi networks from the system tray
- diodon - to add copy and paste functionality
- btop - command line system monitor
