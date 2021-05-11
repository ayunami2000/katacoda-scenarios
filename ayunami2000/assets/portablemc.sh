#!/bin/bash
apt install -y openjdk-8-jre
cd /root/
if [ ! -d "/root/portablemc" ]; then
    git clone https://github.com/mindstorm38/portablemc
fi
yes y | python3 /root/portablemc/portablemc.py start -u katacoda