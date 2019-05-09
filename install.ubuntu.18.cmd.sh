#!/bin/bash    


#sudo apt update
#sudo apt-get install vim
#sdk list java
#sdk install java 8.0.191-oracle
#sudo apt-get install curl
#curl -s https://get.sdkman.io | bash
#sdk install kotlin
#sudo apt-get  install git
#sudo apt-get  install gitk 
#sudo apt-get  install meld 
#
#sudo apt-get update
#sudo apt-get install python-pip
#sudo apt-get install python-setuptools m2crypto
#sudo pip install shadowsocks

#sudo pip install genpac
pushd .
cd shadowsocks
sudo genpac --proxy="SOCKS5 127.0.0.1:1080" --gfwlist-proxy="SOCKS5 127.0.0.1:1080" -o autoproxy.pac --gfwlist-url="https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt"

pop

#sudo apt install wine

#=====================================================
# vt-x bios : enable Intel Virtual tech In bios for Android emulator, 
#sudo apt install qemu-kvm
#sudo adduser kurt kvm
#sudo chown kurt /dev/kvm
#sudo chown kurt:kurt /dev/kvm
#=====================================================
