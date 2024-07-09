#!/bin/env bash
distro=$(grep PRETTY_NAME /etc/os-release)
echo $distro | grep "Ubuntu"
if [[ $? -eq 0 ]]; then
    sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt-get update
    sudo apt-get install -y tmux make gcc ripgrep unzip git xclip neovim
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    mkdir -p ~/.config/tmux/
    git clone https://github.com/HabKaffee/kickstart.nvim.git ~/.config/nvim/
    cp ./tmux.conf ~/.config/tmux/tmux.conf
    # cp ./gitconfig ~/.gitconfig
fi
