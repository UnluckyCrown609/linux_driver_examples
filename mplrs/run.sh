#! /bin/bash

sudo modprobe mpls_gso

sudo echo mpls_gso 0x18 > /sys/bus/i2c/devices/i2c-1/new_device
