#! /bin/bash


# 更新nodejs源
sudo apt-get install -y curl &&
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - &&
sudo apt-get update &&

# nodejs 同时包含了node 和 npm
sudo apt-get install -y nodejs &&
sudo apt-get install -y clang-tools clangd &&

# 更新neovim源
sudo add-apt-repository ppa:neovim-ppa/stable &&
sudo apt-get update &&

# 安装neovim
sudo apt-get install -y neovim &&

# 安装vim-plug
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/plugged &&
curl -fLo ~/.config/nvim/autoload/plug.vim  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
cp init.vim ~/.config/nvim &&
cp coc-settings.json ~/.config/nvim &&

# PlugInstall
nvim -c "PlugInstall | q | q"
