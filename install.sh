#!/usr/bin/env bash

export ZSH_CUSTOM=~/.oh-my-zsh/custom

sudo apt install -y zsh curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g" ~/.zshrc
sed -i "s/#ENABLE_CORRECTION.*/ENABLE_CORRECTION=\"true\"/g" ~/.zshrc
sed -i "s/plugins=.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g" ~/.zshrc
mkdir -p ~/.local/share/fonts
wget -O "~/.local/share/fonts/Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
echo "POWERLEVEL9K_MODE=\"nerdfont-complete\"" >> ~/.zshrc
