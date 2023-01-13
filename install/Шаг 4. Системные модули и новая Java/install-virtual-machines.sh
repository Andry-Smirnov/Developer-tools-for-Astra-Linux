#!/bin/sh

# package setup
sudo apt install astra-kvm qemu-kvm bridge-utils ebtables dnsmasq dnsmasq-base -y

# set user name
sudo usermod -a -G kvm,libvirt,libvirt-qemu user-name
