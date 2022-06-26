#!/bin/bash

### variables ###
FILE=/home/$USER/.token
FILE_PERMISSIONS=stat -c "%a" $FILE


printf "Hello $USER\n\n"
/usr/lib/update-notifier/apt-check --human-readable

if [ -f "$FILE" ]; then
        if [ $FILE_PERMISSIONS -eq 600 ]
        then
                echo "Warning, $FILE file has too open permmissions"
        fi
fi
