#! /bin/bash

modprobe i2c-mux-pca954x
echo pca9548 0x70 > /sys/bus/i2c/devices/i2c-1/new_device
