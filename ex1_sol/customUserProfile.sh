#!/bin/bash

echo Hello $USER
/usr/lib/update-notifier/apt-check --human-readable

FILE="$HOME/.token"

if [ -f $FILE ]; then
        FILE_PERM=$(stat -c "%a" $FILE)
        if [ "$FILE_PERM" == 600 ]
        then
                echo Warning, $FILE file has too open permissions
        fi
fi
