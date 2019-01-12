# set the cursor
xsetroot -cursor_name left_ptr
# set Czech keyboard layout
setxkbmap -layout cz -option ctrl:nocaps
xmodmap .xmodmap-xmonad
# start xterm
ck-launch-session xterm
exec ck-launch-session xmonad
