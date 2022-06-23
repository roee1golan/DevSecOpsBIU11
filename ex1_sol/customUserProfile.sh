echo "****Hello $USER****"
echo `/usr/lib/update-notifier/apt-check --human-readable`
FILE=$HOME/.token

if [ -f $FILE && "stat -c "%a" $FILE" -ne 600  ] ; then
  echo "**Warning: .token file has too open permissions**"
fi
