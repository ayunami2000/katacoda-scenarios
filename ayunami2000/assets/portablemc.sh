#!/bin/bash
cd /root/
if [ ! -d "/root/portablemc" ]; then
    apt install -y openjdk-8-jre
    git clone https://github.com/mindstorm38/portablemc
fi
yes y | python3.7 /root/portablemc/portablemc.py start -u katacoda