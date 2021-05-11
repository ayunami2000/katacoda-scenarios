#!/bin/bash
if [ ! -f "/root/slax.iso" ]; then
    wget -O /root/slax.iso http://ftp.sh.cvut.cz/slax/Slax-9.x/slax-64bit-9.11.0.iso
fi
apt install -y qemu-system-x86
qemu-system-x86_64 -m 2G -device VGA,vgamem_mb=128 -net nic,model=virtio -net user -cdrom /root/slax.iso -rtc base=localtime,clock=host -smp cores=4,threads=4 -usbdevice tablet