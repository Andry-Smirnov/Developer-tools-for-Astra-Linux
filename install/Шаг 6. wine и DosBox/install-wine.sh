#!/bin/sh
sudo apt update
sudo apt install wine ia32-libs zenity -y

cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks

winetricks

# add to .bashrc PATH to wine folder init
cd ~
nano .bashrc
# then add to end
# export PATH=[/opt/wine-7.13/bin]:$PATH
