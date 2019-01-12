export GTK_MODULES=gail:atk-bridge
/usr/lib/at-spi2-core/at-spi2-registryd &
# set the cursor
xsetroot -cursor_name left_ptr
# set Czech keyboard layout
#setxkbmap -layout "cz,brai" -option grp:switch,grp:shifts_toggle,ctrl:nocaps
xrdb ~/.Xresources
#export GTK_IM_MODULE='xim'
#export QT_IM_MODULE='xim'
xset -b
cz-key lenovo
gnome-terminal &
xmonad | dzen2 -y 750 -x 0 -w 500 &
i3status | dzen2 -y 750 -x 500 
