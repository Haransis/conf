#/usr/bin/env bash

sudo apt update

# Install clipman
sudo apt install xfce4-terminal
sudo apt install xfce4-clipman

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mkdir -p ~/Apps
git clone https://github.com/rupa/z.git ~/Apps/z

echo "Installing starship theme..."
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mkdir -p ~/.config
curl https://raw.githubusercontent.com/Haransis/conf/main/starship.toml -L -o ~/.config/starship.toml
echo "Done."

echo "Installing xfce4-terminal theme..."
curl https://raw.githubusercontent.com/arcticicestudio/nord-xfce-terminal/develop/src/nord.theme -L -o ~/.local/share/xfce4/terminal/colorschemes/nord.theme
echo "Done."

echo "Installing nerd font..."
mkdir -p /tmp/FiraCode
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip -L -o /tmp/FiraCode/FiraCode.zip
unzip /tmp/FiraCode/FiraCode.zip -d /tmp/FiraCode
sudo mkdir -p /usr/share/fonts/opentype/firacodenf
sudo cp /tmp/FiraCode/Fira\ Code\ *Nerd\ Font\ Complete.otf /usr/share/fonts/opentype/firacodenf
sudo fc-cache -f -v
echo "Done."
echo "Please set font and palette inside xfce4-terminal"

# add starship&cie to .zshrc
echo "$(curl -fsSL https://raw.githubusercontent.com/Haransis/conf/main/.zshrc)" >> ~/.zshrc
source ~/.zshrc
