echo -e "Hello $(whoami)\n"

/usr/lib/update-notifier/apt-check --human-readable

if [[ "$(stat -c "%a" ~/.token 2>/dev/null)" -ne 600 ]]
then
        echo -e  "\nWarning: .token file has too open permissions\n"
        exit 1
fi