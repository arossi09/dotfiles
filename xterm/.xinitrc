xmodmap ~/.Xmodmap

xrdb .Xresources

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
do
    sleep 1
done &
exec dwm
