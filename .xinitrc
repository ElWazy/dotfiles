# Keyboard
setxkbmap latam & 

# Display
# xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --mode 1366x768 --below HDMI-1 --output DP-1 --mode 1280x800 --right-of HDMI-1 &
# xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --mode 1366x768 --below HDMI-1 &
xrandr --output eDP-1 --mode 1366x768 &

# Nitrogen
nitrogen --restore &

# Compositor
compton --vsync opengl-swc --backend glx &

# Welcome Message
# xsetroot -name "Hi $USER!" &

# Suckless Status
slstatus & 

# Execute DWM
exec dwm
