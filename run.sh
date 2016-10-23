#!/bin/bash

export PATH=$PATH:/node-v4.6.0-linux-armv6l/bin/

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

dbus-daemon --system
avahi-daemon -D

homebridge
