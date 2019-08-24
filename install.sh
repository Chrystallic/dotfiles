#!/bin/bash

# Installs make and git before all other packages
pacman -S make git

# Install fonts and programs
sudo pacman -S  bspwm \
                compton \
                dash \ 
                diff-so-fancy \
                dunst \
                exa \
                feh \
                libnotify \
                maim \
                mpd \
                mpv \ 
                neofetch \ 
                neovim \
                nnn \
                noto-fonts \
                noto-fonts-cjk \
                ncmpcpp \
                pulseaudio-alsa \
                rofi \ 
                rxvt-unicode \
                sxhkd \
                ttf-croscore \
                ttf-fantasque-sans-mono \
                ttf-linux-libertine \ 
                vifm \
                xclip \
                xorg-server \
                xorg-xinit \
                xorg-xprop \
                zathura-pdf-mupdf \
                zsh \
                zsh-completions \
                zsh-autosuggestions \
                zsh-syntax-highlighting \
                ttf-joypixels \
                
# Generate symlinks
