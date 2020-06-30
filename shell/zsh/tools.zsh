### Separate Tools Run Commands for Zshrc
#
#
## Anaconda {{{
# add path
setup="$('$QTOOLS_PATH/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$QTOOLS_PATH/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$QTOOLS_PATH/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$QTOOLS_PATH/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

## }}}

## GHDL {{{
# add path
if [ -d "$TOOLS_PATH/ghdl/bin" ] ; then
        export PATH="$TOOLS_PATH/ghdl/bin:$PATH"
fi

## }}}

## XTerm ans UXTerm {{{
# Condfiguration
[ -f ~/.Xresources ] && xrdb ~/.Xresources
## }}}
