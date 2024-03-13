#!/bin/sh
# usage: To display current value: set-ra.sh </mount/point>
# To set a new value: set-ra.sh </mount/point> <new_value>

case $# in
   1) cat /sys/devices/virtual/bdi/0:`stat -c '%d' "$1"`/read_ahead_kb
   ;;
   2) echo $2 > /sys/devices/virtual/bdi/0:`stat -c '%d' "$1"`/read_ahead_kb
   ;;
esac
#----------end-------------
