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
PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH

# Text Editors
export SVN_EDITOR="vi"

# Python
#export PYTHONPATH=

# virtualenvs
export WORKON_HOME=$HOME/.virtualenv
source /usr/local/bin/virtualenvwrapper.sh
export PIP_REQUIRE_VIRTUALENV=true
function gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# docker environemnt
eval $(docker-machine env default)
export DOCKON_HOME=$HOME/.dockerenv
export PYTHONPATH=$HOME/myworkspace/dockerenv:$PYTHONPATH
export PATH=$HOME/myworkspace/dockerenv/scripts:$PATH
source $HOME/myworkspace/dockerenv/scripts/dockerenvwrapper

# NLTK
export NLTK_DATA=$HOME/nltk_data

# BLUE
export PYTHONPATH=$HOME/myworkspace/Blue:$PYTHONPATH
