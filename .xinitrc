#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi



xhost +SI:localuser:$USER
# xss-lock -- slock &
# lxpolkit &
# picom &

xrdb ~/.dotfiles/.Xresources 

xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

setxkbmap -layout 'us' -variant 'us-qwerty' -model 'pc105' -option 'ctrl:swapcaps' 

feh --bg-scale ~/.dotfiles/bg/bg1.jpg
#exec dbus-launch --exit-with-session emacs -mm --debug-init 
i3
