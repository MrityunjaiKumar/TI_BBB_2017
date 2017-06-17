#!/bin/bash

echo "Compiling the overlay from .dts to .dtbo"

dtc -O dtb -o cape-cedt-one-00A0.dtbo -b 0 -@ cape-cedt-one-00A0.dts

cp cape-cedt-one-00A0.dtbo /lib/firmware/

echo cape-cedt-one-00A0 > /sys/devices/platform/bone_capemgr/slots
