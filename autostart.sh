#!/run/current-system/sw/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

while true
do
	if ! grep -q open /proc/acpi/button/lid/LID0/state; then
        betterlockscreen -l dim --off 3
	fi
done
# && echo $? returns 0 if open if found
#searches for open in the above file if found return 1 thus executing betterlockscreen

#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run "nm-applet"
#run "caffeine"
#run "xfce4-power-manager"
#run "blueberry-tray"
#run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
#run "numlockx on"
#run "volumeicon"
#run "nitrogen --restore"
#run "conky -c $HOME/.config/awesome/system-overview"

#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"
