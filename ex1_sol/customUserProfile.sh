echo -e "Hello $(whoami)\n" # Mission 1

/usr/lib/update-notifier/apt-check --human-readable # Mission2

if [[ -f ~/.token && "$(stat -c "%a" ~/.token 2>/dev/null)" -ne 600 ]] # Mission3 - If file exists and permission is not 600
then
        echo -e  "\nWarning: .token file has too open permissions\n"
        exit 1
fi