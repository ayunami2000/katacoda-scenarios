#!/bin/bash
apt install -y openjdk-8-jre
cd /root/
if [ ! -f "/root/Mineshafter-launcher.jar" ]; then
    wget https://mineshafter.info/files/jars/Mineshafter-launcher.jar
fi
java -jar Mineshafter-launcher.jar