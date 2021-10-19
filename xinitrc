alsactl restore
systemctl --user start udiskie.service #for automounting usb drives
nm-applet &
#blueman-applet &
numlockx on &
~/.fehbg &
xset -b & 
flameshot &
betterlockscreen -l -tf "%I:%M %p" -t "Don't touch my Machine!" &
#pkill conky;conky -c ~/.config/conky/minimalismRC &
#pkill glava;glava --dekstop &
picom -CG --experimental-backends &
pkill clipit; clipit -n &

if which xfce4-session; then
	exec startxfce4
elif which awesome; then
	exec awesome
elif which dwm; then
	~/.config/dwm/bar.sh &
	exec ~/.config/dwm/dwm
elif which bspwm; then
	exec bspwm
elif which sway;then
	sway --my-next-gpu-wont-be-nvidia
fi
