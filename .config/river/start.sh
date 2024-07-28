killall waybar
waybar &

riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint pointer-accel 0
riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint scroll-factor 0.4
riverctl input pointer-2-10-TPPS/2_IBM_TrackPoint accel-profile adaptive

riverctl input pointer-1739-0-Synaptics_TM3075-002 natural-scroll enabled
riverctl input pointer-1739-0-Synaptics_TM3075-002 scroll-factor 0.3
riverctl input pointer-1739-0-Synaptics_TM3075-002 tap enabled

swww-daemon &

swww img $HOME/wallpapers/active.jpg

dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/busi &

mako &

nm-applet --indicator &
