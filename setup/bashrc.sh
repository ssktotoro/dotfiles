# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# aliases
if [ -f $SETUPDIR/aliases.sh ]; then
    source $SETUPDIR/aliases.sh
fi

# command prompt
if [ -f $SETUPDIR/prompt.sh ]; then
    source $SETUPDIR/prompt.sh
fi

# git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# set the appropriate ls color coding on unix
# $eval "$(dircolors $HOME/.dir_colors)"

# -------------------------- Environmental Variables ------------------------- #

# PATH
PATH=$PATH:$HOME/bin:./
export PATH

# Text Editors
export SVN_EDITOR="vi"

# Python
#export PYTHONPATH=
