#Created by anan - DevSecOpsBIU11
#!/bin/bash
#get current local time
h=`date +%H`

#If midnight to afternoon greet "Good morning"
if [ $h -lt 12 ]; then
  echo Good morning, $USER!

#If afternoon to evening greet "Good afternoon"
elif [ $h -lt 18 ]; then
  echo Good afternoon, $USER!

#If evening to midnight greet "Good evening"
else
  echo Good evening, $USER!

fi

#OP
/usr/lib/update-notifier/apt-check --human-readable

#VAR
FILE=.token
FILE_PATH=~/$FILE
PERM=600

#RUN
if [ -e $FILE_PATH ]; then
        echo >> $FILE
        if stat -c %a $FILE_PATH | grep -q -v $PERM; then
                echo "Warning: $FILE has to open permissions"
        fi
fi

exit 0