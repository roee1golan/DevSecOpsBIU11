echo Hello $USER
Hello sveta

/usr/lib/update-notifier/apt-check --human-readable
17 updates can be applied immediately.
5 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

cd /home
sudo touch .token

FILE=$HOME/.token

if test -f "$FILE" && [[stat -c "%a" !=600]]
 then
 echo "Warning: .token file has too open permissions";
fi

avrekh@ubuntu:~$ su -l sveta
Password:
Hello sveta

