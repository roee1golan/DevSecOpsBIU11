!#/bin/bash

echo "****Hello $USER****"
echo `/usr/lib/update-notifier/apt-check --human-readable`
FILE=$HOME/.token
PER='"stat -c "%a"'
if [ -f $FILE ]; then
  echo "**File Exist**"
else
  echo "**File Not Exist**"

if [ $PER $FILE" -ne 600 ] ; then
  echo "**Warning: .token file has too open permissions**"
fi