#!/bin/bash
apt install -y openjdk-8-jre
cd /root/
if [ ! -f "/root/portablemc.py" ]; then
    wget -O portablemc.zip https://github.com/mindstorm38/portablemc/releases/download/v2.0.0/portablemc-single-2.0.0.zip
    unzip portablemc.zip
    rm -rf portablemc.zip
fi
yes y | python3 /root/portablemc.py start -u katacoda