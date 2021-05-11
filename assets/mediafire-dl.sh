#!/bin/bash
cd /root/
if [ ! -d "/root/mediafire-dl" ]; then
    git clone https://github.com/Juvenal-Yescas/mediafire-dl
    cd mediafire-dl
    pip3 install -r requirements.txt
    cd ..
fi
cd mediafire-dl
python3 mediafire-dl.py $1
cd ..