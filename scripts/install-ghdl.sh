#!/bin/sh
#
# download-buidl-and-install-ghdl.sh
#
# It took about 5 minutes on my laptop (2018-09-28).

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
# 
