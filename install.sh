#!/bin/sh
sudo apt update
yes | sudo apt install build-essential
wget http://dss.macosforge.org/downloads/DarwinStreamingSrvr6.0.3-Source.tar
tar xf DarwinStreamingSrvr6.0.3-Source.tar
cd DarwinStreamingSrvr6.0.3-Source
patch -p1 < ../dss-6.0.3.patch
patch -p1 < ../dss-hh-20081021-1.patch
patch -p1 < ../dss-gb-20170215.patch
./Buildit
./buildtarball
cd DarwinStreamingSrvr-Linux
sudo ./Install
