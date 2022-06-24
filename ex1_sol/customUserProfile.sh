#!/bin/bash
#print welcome msg
echo Hello Dear $USER

#check packages outdated
/usr/lib/update-notifier/apt-check --human-readable

#set file as .token
file=".token"

#check if exist + permission
if [[ -f $file && `stat -c %a $file` != 600 ]] ; then

#if true print
echo 'Warning: .token file has too open permissions'

else
#permission verified
echo 'you are good to go'

fi

