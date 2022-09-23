#!/bin/sh
font="%{T7}"
if [ "$(pgrep openvpn -a | grep cg_fr)" ]; then
    echo "%{F#FBFF3E}$font󰊠%{F#FFFFFF}"
else
    echo "%{F#DDDDDD}$font󰧵%{F#FFFFFF}"
fi
