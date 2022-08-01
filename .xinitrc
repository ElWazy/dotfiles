# Exports
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolKit
export NODE_OPTIONS=--openssl-legacy-provider

# Keyboard
setxkbmap latam & 

# Display
# xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --mode 1366x768 --below HDMI-1 --output DP-1 --mode 1280x800 --right-of HDMI-1 &
# xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --mode 1366x768 --below HDMI-1 &
xrandr --output DP-1 --mode 1280x800 --output eDP-1 --mode 1366x768 --right-of DP-1 &
# xrandr --output eDP-1 --mode 1366x768 &

# Wallpaper Engine
nitrogen --restore &

# Compositor
picom --config ~/.config/picom/picom.conf &

# Status Bar
slstatus &

# Screenshot App
flameshot &

# Execute DWM
exec dwm
