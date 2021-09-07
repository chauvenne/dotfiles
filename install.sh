#!/bin/sh

# Copy the config files in the home directory
cp dotfiles/.* $HOME 2> /dev/null

# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting

# Install powerline fonts
git clone https://github.com/powerline/fonts.git $HOME/fonts
cd $HOME/fonts
./install.sh
