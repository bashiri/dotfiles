# This file contains aliases for shortcot

## GoToDirectory quick {{{
# Global Directories
alias xxgit="cd $QGITS_PATH"
alias xxwork="cd $QWORKS_PATH"
alias xxpro="cd $QG_PROJS_PATH"
alias xxtools="cd $QTOOLS_PATH"
alias xxtemp="cd /tmp/"
## }}}

## Emacs {{{
# aliases
alias emacs='emacs -nw'
alias xemacs='emacs-gtk'
## }}}
## Xilinx Tools {{{
# begin sources 
XILTOOLS_VERSION='2019.2'
alias envvivado='source $XIL_TOOLS_PATH/Vivado/$XILTOOLS_VERSION/.settings64-Vivado.sh'
alias envvitis='source $XIL_TOOLS_PATH/Vitis/$XILTOOLS_VERSION/.settings64-Vitis.sh'
alias envdocnav='source $XIL_TOOLS_PATH/DocNav/.settings64-DocNav.sh'
alias envmcomposer='source $XIL_TOOLS_PATH/Model_Composer/$XILTOOLS_VERSION/.settings64-Model_Composer.sh'
alias envxiltools='source $XIL_TOOLS_PATH/Vivado/$XILTOOLS_VERSION/settings64.sh'
alias envptlnx='source $XIL_TOOLS_PATH/petalinux/$XILTOOLS_VERSION/settings.sh'
alias envxise='source $XIL_TOOLS_PATH/XISE/14.7/ISE_DS/settings64.sh'

# tools run commands
alias vitis="GTK_THEME=Adwaita vitis"
#alias vivado_hls="GTK_THEME=Adwaita vivado_hls"
## }}}#

## Intel Tools {{{
# begin sources
alias envmdlsim='export PATH=${PATH}:$QG_TOOLS_PATH/Intel/intelFPGA_pro/19.4/modelsim_ase/bin'

## }}}

## RISCV Tools {{{
# PATH
alias rvenv='export PATH=${PATH}:/tools/toolchains/riscv/bin'
## }}}

## Eclipse :( {{{
# alias eclipse="GTK_THEME=Adwaita eclipse"
## }}}

## Open Connnect
function vpnconnent(){
        echo $PROXY_PASSWORD | sudo openconnect $PROXY_SERVER --user=$PROXY_USERNAME --passwd-on-stdin --servercert $PROXY_SECRET
}
function xproxy() {
        
        if [ $1 = "s" ]; then 
                echo "nameserver 178.22.122.100" > ~/.shecan.resolv.conf
                echo "nameserver 185.51.200.2" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy Shecan DNS Applied"
        elif [ $1 = "g" ]; then
                echo "nameserver 8.8.8.8" > ~/.shecan.resolv.conf
                echo "nameserver 8.8.4.4" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy Google DNS Applied"
        elif [ $1 = "o" ]; then
                echo "nameserver 208.67.220.220" > ~/.shecan.resolv.conf
                echo "nameserver 208.67.222.222" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy OpenDNS Applied"
        fi

}
## Commands Short Name Aliases {{{
#
alias xo="xdg-open"
alias xls="logo-ls"
alias ls="xls"
## }}}
