echo Hello $USER

/usr/lib/update-notifier/apt-check --human-readable


cd /home
sudo touch .token

FILE=$HOME/.token



# shellcheck disable=SC1073
# shellcheck disable=SC1072
if test -f "$FILE" && [[ stat -c '%a' != 600 ]]
 then
 echo "Warning: .token file has too open permissions";
fi


