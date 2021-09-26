#!/usr/bin/bash

function do_ghdl_install() {
    # download-buidl-and-install-ghdl.sh
    sudo apt update
    sudo apt install -y git make gnat zlib1g-dev
    git clone https://github.com/ghdl/ghdl
    cd ghdl
    ./configure --prefix=/usr/local
    make
    sudo make install
    echo "$0: All done!"
# See the quick start guide to learn basic usage
# https://ghdl.readthedocs.io/en/latest/using/QuickStartGuide.html
}

## Install Neovim (AppImage Download)
function do_nvim_install() {
    wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
    chmod +x nvim
    sudo chown root:root nvim
    sudo mv nvim /usr/bin
    mkdir -p ~/.config/nvim
    ## Install VimPlug plugin Manager
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}
function do_nodejs_install() {
# Find OS Disro {{{
if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    ...
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    ...
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi
# }}}

# Install NodeJS 12.X {{{

if [[ "$OS" == "Ubuntu" ]]; then
        sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
        echo "Required Packages Installation Complete"

        curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
        
        sudo apt -y install nodejs

elif [[" $OS" == "Debian" ]]; then
        
       sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
        echo "Required Packages Installation Complete"
        curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

        sudo apt -y install nodejs

elif [[ "$OS" == "Fedora" ]]; then
        sudo dnf install -y  gcc-c++ make
        curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
        sudo dnf install -y nodejs
fi
# }}}
}

