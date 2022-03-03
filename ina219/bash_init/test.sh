#! /bin/bash

sudo modprobe ina2xx

sudo echo ina219 0x40 > /sys/bus/i2c/devices/i2c-1/new_device
