nm-applet &
numlockx on &
xset -b & 
flameshot &
betterlockscreen -l dim -tf "%I:%M %p" -t "Don't touch my Machine!" -b 3 &
pkill conky;conky -c ~/.config/conky/minimalismRC &

if which awesome; then
	exec awesome
elif which bspwm; then
	exec bspwm
elif which sway;then
	sway --my-next-gpu-wont-be-nvidia
fi
