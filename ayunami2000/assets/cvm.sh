#!/bin/bash
cd /root/
apt install -y qemu-utils qemu-system-x86 libossp-uuid-dev libvncserver-dev libcairo-dev libodb-sqlite-dev
if [ ! -d "/root/cvm" ]; then
    mkdir cvm
    cd cvm
    wget https://github.com/computernewb/collab-vm-server/releases/download/1.2.10/collab-vm-server-linux-jpeg-amd64.zip
    unzip collab-vm-server-linux-jpeg-amd64.zip
    rm -rf collab-vm-server-linux-jpeg-amd64.zip
    wget https://github.com/ayunami2000/play-with-docker-novnc/raw/main/cvmpublic.zip
    unzip cvmpublic.zip
    rm -rf cvmpublic.zip
    chmod +x ./collab-vm-server
fi
cd /root/cvm
echo DO CTRL+C TO CHANGE TO PUBLIC MODE
./collab-vm-server 80
./collab-vm-server 80 public