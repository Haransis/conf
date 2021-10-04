#/usr/bin/env bash

sudo apt update

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install starship theme
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml

# Install clipman
sudo apt install xfce4-clipman