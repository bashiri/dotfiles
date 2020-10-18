#!/usr/bin/bash

## Install Neovim (AppImage Download) {{{
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim
## }}}

## Install VimPlug plugin Manager {{{
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
## }}}

## Vim Configuration {{{
cp $PWD/../../nvim/vimrc ~/.vimrc
cp ~/.vimrc ~/.config/nvim/init.vim
##}}}

