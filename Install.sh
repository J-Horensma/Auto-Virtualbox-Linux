#!/bin/bash
#Working
#March 25/2020
#Install Virtualbox And Extension Pack For Kali Rolling
#By: Joel Horensma
#
#
#IMPORT APT REPO
echo "Importing apt repository"
echo
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#
#ADD VIRTUALBOX REPO
echo "Adding virtualbox repository"
echo
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian buster contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
#
#INSTALL VIRTUALBOX AND EXTENSION PACK
echo "Installing virtualbox & virtualbox extension pack"
echo
sudo apt install -y dkms
sudo apt install -y virtualbox virtualbox-ext-pack
#
echo "Virtualbox installed"
echo
echo "Type "virtualbox" anywhere in the terminal to start"
