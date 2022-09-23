#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon="󰛨"

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
    #temp=$(redshift -l 43.3:-0.366 -p 2>/dev/null | grep Temp | cut -d' ' -f4)
    #temp=$(redshift -p 2>/dev/null | grep Temp | cut -d' ' -f4) #FR
    temp=$(redshift -p 2>/dev/null | grep temp | cut -d' ' -f3) #EN
    temp=${temp//K/}
fi

# OPTIONAL: Append ' ${temp}K' after $icon
if [[ -z $temp ]]; then
    echo "%{F#65737E}$icon"       # Greyed out (not running)
elif [[ $temp -ge 5000 ]]; then
    echo "%{F#00CCFF}$icon"       # Blue
elif [[ $temp -ge 4000 ]]; then
    echo "%{F#EBCB8B}$icon"       # Yellow
else
    echo "%{F#D08770}$icon"       # Orange
fi
