#!/bin/sh

# install packages
sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev -y
sudo apt-get install asciidoc xmlto docbook2x -y
sudo apt-get install install-info -y
sudo apt-get install git -y
sudo ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi

# git clone and build
# tar -zxf git-2.36.0.tar.gz

# make source dir
mkdir sources
cd sources
# clone git sources
git clone https://github.com/git/git.git
cd git

# build git
make configure
./configure --prefix=/usr
make all doc info

# install git
sudo make install install-doc install-html install-info

# test git
git --version
