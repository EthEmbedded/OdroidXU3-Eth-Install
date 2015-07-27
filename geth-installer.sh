#!/bin/bash

#First we need to perform some housekeeping & install dependencies
echo -e "\e[32mFirst we need to perform some housekeeping & install dependencies\e[0m"
echo -e "\e[34mPerforming Housekeeping - Update...\e[0m"
sudo apt-get -y update
echo -e "\e[34mPerforming Housekeeping - Upgrade...\e[0m"
sudo apt-get -y upgrade
echo -e "\e[34mInstalling Dependencies...\e[0m"
sudo apt-get -y install openssh-server nano screen dphys-swapfile build-essential libgmp3-dev golang git

#Install go-ethereum OR `geth`
echo -e "\e[34mInstalling go-ethereum...\e[0m"

cd ~
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth
