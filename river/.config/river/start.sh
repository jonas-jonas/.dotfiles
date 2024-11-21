killall waybar
waybar &

touchpad=$(riverctl list-inputs | grep Synaptics)

riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint pointer-accel 0
riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint scroll-factor 0.4
riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint accel-profile adaptive

riverctl input $touchpad natural-scroll enabled
riverctl input $touchpad scroll-factor 1
riverctl input $touchpad tap enabled
riverctl input $touchpad pointer-accel 0.8
riverctl input $touchpad accel-profile flat

swww-daemon &

swww img $HOME/wallpapers/active.jpg

dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/busi &

mako &

way-displays > /tmp/way-displays.${XDG_VTNR}.${USER}.log 2>&1 &

dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river &

thunar --daemon &

pactl load-module module-switch-on-connect &
