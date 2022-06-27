#!/bin/bash

printf "Hello $USER\n\n"
/usr/lib/update-notifier/apt-check --human-readable

if [ -f "/home/$USER/.token" ]; then
        FILE_PERM=$(stat -c "%a" /home/$USER/.token)
        if [ $FILE_PERM == 600 ]
        then
                echo "Warning, /home/$USER/.token file has too open permmissions"
        fi
fi
