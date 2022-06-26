echo Hello $USER
echo
/usr/lib/update-notifier/apt-check --human-readable
TOKEN=/home/$USER/.token
echo
if [ -f $TOKEN ] && [ "stat -c '%a' $TOKENFILE" != 600 ]
then
	echo "Warning: .token file has too open permissions"
fi