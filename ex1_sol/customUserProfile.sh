echo Hello $USER

/usr/lib/update-notifier/apt-check --human-readable


cd /home
sudo touch .token

FILE=$HOME/.token

if test -f "$FILE" && [[stat -c "%a" !=600]]
 then
 echo "Warning: .token file has too open permissions";
fi


