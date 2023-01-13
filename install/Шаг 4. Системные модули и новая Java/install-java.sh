#!/bin/sh

# set login and e-mail for Git
sudo apt-get install git -y
git config --global user.name "login"
git config --global user.email "e-mail"

sudo apt install build-essential gdb openjdk-8-jdk default-jdk meson nasm -y

#sudo apt install curl -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# java 11.0.12
sdk install java 11.0.12-open
sdk default java 11.0.12-open

# java 17.0.2
#sdk install java 17.0.2-open
#sdk default java 17.0.2-open

sudo apt install qemu-kvm android-tools-adb -y

# set user name
sudo adduser user-name kvm
sudo chown user-name /dev/kvm
sudo chmod o+x /dev/kvm
sudo chmod 777 -R /dev/kvm
sudo usermod -aG plugdev $LOGNAME

