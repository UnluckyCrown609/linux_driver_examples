#! /bin/bash

modprobe bme680_i2c
echo bme680 0x77 > /sys/bus/i2c/devices/i2c-1/new_device
