#!/usr/bin/env bash

iminfo=$(defaults read ~/Library/Preferences/com.apple.HIToolbox AppleSelectedInputSources)
inputsourcekind=$(echo -e "$iminfo" | grep 'InputSourceKind' | grep -v 'Non Keyboard Input Method' |  sed -e 's/[^"]*"\([^"]*\)".*/\1/')

if [ "${inputsourcekind}" = "Input Mode" ]; then
    inputmode=$(echo -e "$iminfo" | grep -v 'InputSourceKind' | grep 'Input Mode' | sed -e 's/^.*com/com/' | sed -e 's/.\{2\}$//' | sed -e 's/^.*\.//')
    echo $inputmode
elif [ "${inputsourcekind}" = "Keyboard Layout" ]; then
    keyboardlayoutname=$(echo -e "$iminfo$" | grep -v 'InputSourceKind' | grep 'KeyboardLayout Name' | sed -e 's/^.*= //' | sed -e 's/.\{1\}$//')
    echo $keyboardlayoutname
else
    echo "Loading..."  # sometimes error occurs
fi
