#!/bin/bash

echo Hello $USER
/usr/lib/update-notifier/apt-check --human-readable


file="$HOME/.token"
# shellcheck disable=SC1035
if [[ -f $file && `stat -c %a $file` != 600 ]] ; then
    echo 'Warning: .token file has too open permissions'
fi




