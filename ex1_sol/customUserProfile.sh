echo Hello $USER
/usr/lib/update-notifier/apt-check --human-readable
touch /home/$USER/.token
TOKEN=/home/$USER/.token
if [ -f $TOKEN ] && [ "stat -c '%a' $TOKENFILE" != 600 ]
then
	echo "Warning: .token file has too open permissions"
fi