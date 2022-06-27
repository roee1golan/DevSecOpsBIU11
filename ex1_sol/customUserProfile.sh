

#!/bin/bash

echo Hello $USER

/usr/lib/update-notifier/apt-check --human-readable

FILE=/etc/skel/.token
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi
TOKEN=600
xx=$(sudo stat -c '%a' $FILE)
if [ "$TOKEN" -ne "$xx" ]; then
    echo "Warning: .token file has too open permissions."
fi
