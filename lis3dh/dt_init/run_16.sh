#!/bin/bash

echo 1600 > /sys/bus/i2c/devices/i2c-1/1-0018/iio:device0/sampling_frequency
echo 0.117679 > /sys/bus/i2c/devices/i2c-1/1-0018/iio:device0/in_accel_z_scale