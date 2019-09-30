[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

rxvt-unicode &
exec sxhkd &
exec bspwm
