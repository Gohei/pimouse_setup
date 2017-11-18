#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/gohei/RaspberryPiMouse/lib/Pi2B+/4.9.51-v7+/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
