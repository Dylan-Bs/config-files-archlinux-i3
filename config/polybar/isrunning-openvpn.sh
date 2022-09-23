#!/bin/sh
font="%{T7}"
if [ "$(pgrep openvpn -a | grep eisti)" ]; then
    echo "$font󰴗
else
    echo "%{F#DDDDDD}$font󰴗"
fi
