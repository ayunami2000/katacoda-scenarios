install firefox `apt install firefox`{{execute}}
install chromium `apt install chromium`{{execute}}
install wine & run winetricks `wget -nc https://dl.winehq.org/wine-builds/winehq.key;apt-key add winehq.key;apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y;apt update;{ echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections };wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks;chmod +x winetricks;rm -rf ./winehq.key;{ echo "" | apt install -y --install-recommends winehq-stable cabextract p7zip-full };./winetricks`{{execute}}
install qemu `apt install qemu-utils qemu-system-x86`{{execute}}
switch to wine `pkill fluxbox;wine64 explorer /desktop=shell,900x720 &> /dev/null &`{{execute}}
return to fluxbox from wine `{ wineserver -k;fluxbox & } &> /dev/null`{{execute}}