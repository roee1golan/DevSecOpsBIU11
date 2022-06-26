echo Hello $USERNAME
/usr/lib/update-notifier/apt-check --human-readable
touch ~/.token
TOKEN=/home/$USER/.token
if [ -f $TOKEN ] && [ "stat -c '%a' $TOKENFILE" != 600 ]
then
	echo "file exist"
fi