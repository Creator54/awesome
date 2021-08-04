# Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
for f in /etc/X11/xinit/xinitrc.d/*; do
[ -x "$f" ] && . "$f"
done
unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources && ~/.xprofile
nm-applet &
numlockx on &
xset -b & 
#/usr/bin/start-pulseaudio-x11 &
betterlockscreen -l dim -b -tf "%I:%M %p" -t $quote &
pkill conky;conky -c ~/.config/conky/minimalismRC &
exec awesome
