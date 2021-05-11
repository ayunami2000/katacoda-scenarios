## WAIT FOR DESKTOP TO LOAD BEFORE USING!!

install firefox `apt install -y firefox`{{execute}}

install chromium `apt install -y chromium-browser`{{execute}}

install wine and winetricks `wget -nc https://dl.winehq.org/wine-builds/winehq.key;apt-key add winehq.key;apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y;apt update;echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections;wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks;chmod +x winetricks;rm -rf ./winehq.key;apt install -y --install-recommends winehq-stable cabextract p7zip-full`{{execute}}

run winetricks `/root/winetricks`{{execute}}

install qemu `apt install -y qemu-utils qemu-system-x86`{{execute}}

run wine `wine64 explorer /desktop=shell,900x720 &> /dev/null &`{{execute}}

exit wine `wineserver -k`{{execute}}