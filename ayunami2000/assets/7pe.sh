#!/bin/bash
apt install -y qemu-utils qemu-system-x86
if [ ! -f "/root/7pe.iso" ]; then
    /usr/local/bin/mediafire-dl.sh https://www.mediafire.com/file/05en23pzwr4cmpo/7pe_amd64_E.iso/file
    mv /root/mediafire-dl/7pe_amd64_E.iso /root/7pe.iso
fi
if [ ! -f "/root/7pe.img" ]; then
    qemu-img create -f raw /root/7pe.img 16G
fi
qemu-system-x86_64 --enable-kvm -m 2G -device VGA,vgamem_mb=128 -net nic,model=e1000 -net user -hda /root/7pe.img -cdrom /root/7pe.iso -rtc base=localtime,clock=host -smp cores=4,threads=4 -usbdevice tablet