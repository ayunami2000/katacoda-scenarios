#!/bin/bash
cd /root/
pkill fluxbox
pkill x11vnc
pkill Xvfb
apt update
wget -O virtualgl.deb https://sourceforge.net/projects/virtualgl/files/2.6.5/virtualgl_2.6.5_amd64.deb/download
apt install -y ./virtualgl.deb xvfb x11vnc build-essential libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libgl1-mesa-dev libgl1-mesa-dri python2 fluxbox xterm
rm -rf ./virtualgl.deb
if [[ -z "$(lsof -Pi :6080 -sTCP:LISTEN -t)" ]]; then
    rm -rf ./noVNC
    git clone https://github.com/ayunami2000/noVNC
    ./noVNC/utils/launch.sh --listen 6080 &> /dev/null &
fi
Xvfb -screen 0 900x720x24+32 +extension GLX &> /dev/null &
export DISPLAY=:0
fluxbox &> /dev/null &
x11vnc -noshm -geometry 900x720 -shared -forever &> /dev/null &