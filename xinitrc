nm-applet &
numlockx on &
xset -b & 
flameshot &
betterlockscreen -l dim -b -tf "%I:%M %p" -t $quote &
pkill conky;conky -c ~/.config/conky/minimalismRC &

if which awesome; then
	exec awesome
elif which bspwm; then
	exec bspwm
elif which sway;then
	sway --my-next-gpu-wont-be-nvidia
fi
