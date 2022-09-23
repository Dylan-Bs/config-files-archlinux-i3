#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(yay -Qu --aur| wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    if [[ "$pac" > "100" ]]
    then
        PAC='%{F#AFF9F5}'
    else
        PAC='%{F#FFFFFF}'
    fi
    if [[ "$aur" > "10" ]]
    then
        AUR='%{F#AFF9F5}'
    else
        AUR='%{F#FFFFFF}'
    fi
    echo "${PAC} $pac %{F#FFFFFF}󰣇 ${AUR} $aur"
fi