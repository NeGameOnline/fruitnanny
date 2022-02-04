#!/bin/bash
light_pin=14
echo "out" > /sys/class/gpio/gpio$light_pin/direction
case $1 in
  on ) echo "1" > /sys/class/gpio/gpio$light_pin/value ;;
  off )  echo "0" > /sys/class/gpio/gpio$light_pin/value ;;
  status )  cat /sys/class/gpio/gpio$light_pin/value ;;
esac
