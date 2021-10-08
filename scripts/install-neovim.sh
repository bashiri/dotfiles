#!/usr/bin/bash

## Install Neovim (AppImage Download) {{{
wget https://github.com/neovim/neovim/releases/download/v0.5.1/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim
## }}}

## Install VimPlug plugin Manager {{{
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
## }}}

## Vim Configuration {{{
mkdir -p ~/.config/nvim
ln -s ../nvim/vimrc ~/.vimrc
ln -s ~/.vimrc ~/.config/nvim/init.vim
##}}}

