#!bin/bash

greet="Hello $USER"

echo $greet

/usr/lib/update-notifier/apt-check --human-readable

if [ -f /home/.token ];then
        echo "token exists"
else
        exit 1
fi

if [ "stat -c "%a" -ne "600"" ];then
        echo "Warning: .token file has too open permissions"
else
        exit 1
fi
