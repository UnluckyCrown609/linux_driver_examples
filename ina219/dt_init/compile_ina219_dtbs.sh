#!/bin/bash

dtc -@ -I dts -O dtb -o ina219.dtbo ina219.dts
sudo cp ina219.dtbo /boot/overlays/

STR="dtoverlay=ina219"
FLE="/boot/config.txt"

if grep -Fxq $STR $FLE
then
    echo "Found ${STR} in ${FLE}"
else
    echo $STR | sudo tee -a $FLE
    sleep 1
    sudo reboot now
fi
