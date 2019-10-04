#!/bin/bash

# Installs make and git before all other packages
pacman -S make git curl

# Install audio-drivers
sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils

# Install WM(bspwm), keyboardshortcuts, system monitor, terminal
sudo pacman -S bspwm sxhkd conky htop xorg xorg-server xorg-xprops xorg-xinit rxvt-unicode

# Download and create bspwm and sxhkd configfiles
mkdir ~/.config 
mkdir ~/.config/bspwm
curl https://raw.githubusercontent.com/baskerville/bspwm/master/examples/bspwmrc --output bspwm/bspwmrc
mkdir ~/.config/sxhkd
curl https://raw.githubusercontent.com/baskerville/bspwm/master/examples/sxhkdrc --output sxhkd/sxhkdrc

# Download program such as file managers unpackagers etc,
sudo pacman -S  tumbler 
                xbindkeys 
                binutils 
                dunst 
                xclip 
                zathura-pdf-mupdf 
                neovim 
                flashplugin 
                thunar 
                ranger 
                raw-thumbnailer 
                unzip 
                unrar 
                compton 
                file-roller 
                clang 
                scrot 
                xf86-input-synaptics
                pacman-contrib

# Install yay to get access to the AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. && rm -r yay/

# Install AUR packages
yay -S  lightdm-gtk-greeter-settings 
        feh 
        neofetch 
        polybar 
        rofi 
        lxappearance 
        numix-icon-theme-git 
        siji-git 
        ttf-unifont 
        ttf-font-awesome 
        ttf-anonymous-pro 
        noto-fonts 
        compton-tryone-git
        conky



# Change default shell to Z-shell
sudo pacman -S zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
chsh -s /usr/bin/zsh




# Install fonts and programs
                dash \ 
                diff-so-fancy \
                libnotify \
                maim \
                mpd \
                mpv \ 
                ncmpcpp \
                ttf-croscore \
                ttf-fantasque-sans-mono \
                ttf-linux-libertine \ 
                ttf-joypixels \
                
# Generate symlinks
