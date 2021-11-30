#!/bin/bash

var=0
x=18.5
y=23

var=`echo "scale=2;$2/100"|bc`
var=`echo "scale=4;$var*$var"|bc`
var=`echo "scale=2;$1 / $var"|bc`

if (($(echo "$var>=$x"|bc) -l)) && (($(echo "$y>$var" |bc) -l)); then
	echo "정상체중입니다"
elif (($(echo "$var < $x" |bc) -l)); then
	echo "저체중입니다"
else
	echo "과체중입니다"
fi
