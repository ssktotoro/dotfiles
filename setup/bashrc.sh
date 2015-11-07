# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and funcitons
 #. /home/hep/share/.hep_bash_profile

# -------------------------- Aliases ---------------------------------------- #
if [ -f $SETUPDIR/aliases.sh ]; then
    source $SETUPDIR/aliases.sh
fi

# -------------------------- Command Prompt ---------------------------------- #
if [ -f $SETUPDIR/prompt.sh ]; then
    source $SETUPDIR/prompt.sh
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
