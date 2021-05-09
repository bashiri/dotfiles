#!/usr/bin/env bash

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
