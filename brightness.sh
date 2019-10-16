#!/bin/zsh
current_br=`cat /sys/class/backlight/intel_backlight/brightness`
operand=20

if  [ "$1" = "up" ];then
	val=`echo "$current_br + $operand" | bc`
	echo $val | sudo tee /sys/class/backlight/intel_backlight/brightness
elif  [ "$1" = "down" ];then
	val=`echo "$current_br - $operand" | bc`
	echo $val | sudo tee /sys/class/backlight/intel_backlight/brightness
else
	echo "error"
fi
