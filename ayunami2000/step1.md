## WAIT FOR DESKTOP TO LOAD BEFORE USING!!

install firefox `apt install -y firefox`{{execute}}

install chromium `apt install -y chromium-browser`{{execute}}

install wine and winetricks `/usr/local/bin/wineinst.sh`{{execute}}

run winetricks `/usr/local/bin/winetricks`{{execute}}

run wine `wine64 explorer /desktop=shell,900x720 &> /dev/null &`{{execute}}

exit wine `wineserver -k`{{execute}}

dl/run slax `/usr/local/bin/slax.sh`{{execute}}

dl/run 7pe `/usr/local/bin/7pe.sh`{{execute}}

install/run minecraft `/usr/local/bin/portablemc.sh`{{execute}}

install/run CollabVM Server `/usr/local/bin/cvm.sh`{{execute}}

download/run mineshafter `/usr/local/bin/mineshafter.sh`{{execute}}

reset display if not working `/usr/local/bin/resetdisplay.sh;export DISPLAY=:0`{{execute}}