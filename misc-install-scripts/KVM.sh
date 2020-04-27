#!/bin/bash

echo -e "\e[32m ############################################################ \e[0m"
echo -e "\e[32m #######         Install mraa   (see https://wiki.up-community.org/MRAA/UPM)     ####### \e[0m"
echo -e "\e[32m ############################################################ \e[0m"

sudo apt-get update -y
sudo apt install qemu-kvm
sudo apt-get install qemu-kvm libvirt-bin bridge-utils virt-manager

echo -e "\e[32m #######      adding  user [rov ]    ####### \e[0m"
sudo adduser rov libvirtd

echo -e "\e[32m #######        For uefi support     ####### \e[0m"

sudo apt-get install -y ovmf       # For uefi support
sudo apt install spice-vdagent   # copy and paste host <--> guest