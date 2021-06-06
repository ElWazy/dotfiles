# Keyboard
setxkbmap latam &

# DWM Bar
~/dwm-bar/dwm_bar.sh &

# Display
xrandr --output HDMI-1 --mode 1920x1080 &

# Nitrogen
nitrogen --restore &

# Compositor
compton --vsync opengl-swc --backend glx &

# Execute DWM
exec dwm
