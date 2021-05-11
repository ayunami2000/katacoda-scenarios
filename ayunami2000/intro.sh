#!/bin/bash
echo loading desktop...
apt update
wget -O virtualgl.deb https://sourceforge.net/projects/virtualgl/files/2.6.5/virtualgl_2.6.5_amd64.deb/download
echo "" | apt install -y ./virtualgl.deb xvfb x11vnc build-essential libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libgl1-mesa-dev libgl1-mesa-dri python2 fluxbox xterm
rm -rf ./virtualgl.deb
git clone https://github.com/ayunami2000/noVNC
./noVNC/utils/launch.sh --listen 6080 &> /dev/null &
Xvfb -screen 0 900x720x24+32 +extension GLX &> /dev/null &
export DISPLAY=:0
fluxbox &> /dev/null &
x11vnc -noshm -geometry 900x720 -shared -forever &> /dev/null &
clear;echo desktop loaded!