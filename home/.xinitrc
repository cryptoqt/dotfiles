#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xbindkeys

#pull fonts
xset +fp /usr/share/fonts/local
xset fp rehash

#set cursor
xsetroot -Vanilla-DMZ-AA left_ptr

#execute wm + wallpaper
exec awesome
exec nitrogen --restore
