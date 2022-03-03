#!/bin/bash

dtc -@ -I dts -O dtb -o lis3dh.dtbo lis3dh.dts
sudo cp lis3dh.dtbo /boot/overlays/

STR="dtoverlay=lis3dh"
FLE="/boot/config.txt"

if grep -Fxq $STR $FLE
then
    echo "Found ${STR} in ${FLE}"
else
    echo $STR | sudo tee -a $FLE
    sleep 1
    sudo reboot now
fi
