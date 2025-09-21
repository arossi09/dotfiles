#/bin/bash
xmodmap ~/.Xmodmap

xrdb .Xresources

status () { 
    echo -n " $(acpi | awk '{print $4}' | sed s/,//) | $(date '+%Y-%m-%d  %H:%M:%S')"
}

while :; do
    xsetroot -name "$(status)"
    sleep 1
done &

exec dwm
