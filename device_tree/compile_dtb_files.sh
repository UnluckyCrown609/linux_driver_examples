#!/bin/bash

dtc -@ -I dts -O dtb -o bme680.dtbo bme680.dts
sudo cp bme680.dtbo /boot/overlays/

#sleep 2

#sudo reboot now
