alsactl restore
systemctl --user start udiskie.service #for automounting usb drives
nm-applet &
numlockx on &
xset -b & 
flameshot &
betterlockscreen -l -tf "%I:%M %p" -t "Don't touch my Machine!" &
#pkill conky;conky -c ~/.config/conky/minimalismRC &
#pkill glava;glava --dekstop &
#picom -CG --experimental-backends &

if which xfce4-session; then
	exec startxfce4
elif which awesome; then
	exec awesome
elif which bspwm; then
	exec bspwm
elif which sway;then
	sway --my-next-gpu-wont-be-nvidia
fi
