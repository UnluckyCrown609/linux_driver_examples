#!/bin/bash

dtc -@ -I dts -O dtb -o bme680.dtbo bme680.dts
sudo cp bme680.dtbo /boot/overlays/

STR="dtoverlay=bme680"
FLE="/boot/config.txt"

if grep -Fxq $STR $FLE
then
    echo "Found ${STR} in ${FLE}"
else
    echo $STR | sudo tee -a $FLE
    sleep 1
    sudo reboot now
fi
