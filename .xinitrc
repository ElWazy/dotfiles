# Keyboard
setxkbmap es.cl &

# Nitrogen
nitrogen --restore &

# Screen Display
xrandr --output HDMI-1 --mode 1920x1080 &

# Compositor
compton &

# Execute DWM
exec dwm
