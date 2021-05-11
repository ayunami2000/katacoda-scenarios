#!/bin/bash
cd /usr/local/bin
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key
apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
apt update
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
rm -rf ./winehq.key
apt install -y --install-recommends winehq-stable cabextract p7zip-full
rm -- "$0"