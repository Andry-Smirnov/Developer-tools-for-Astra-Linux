#!/bin/sh

# Update and upgrade
sudo apt-get update -y && sudo apt-get upgrade -y

# 1
sudo apt install wget gthumb pdfshuffler gtkhash xfburn -y

# Disk utility
sudo apt install gnome-disk-utility -y

# Neofetch
sudo apt install neofetch -y

# Snap
sudo apt install snapd -y
