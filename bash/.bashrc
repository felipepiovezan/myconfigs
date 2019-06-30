if [ -f $HOME/.bashrc_pc_specific ]; then
  . $HOME/.bashrc_pc_specific
fi

HISTSIZE=15000
HISTFILESIZE=20000

alias ls="ls --color"
alias grep="grep --color -E"
# these turn on terminal coloring for ls and grep

# Have the prompt default to be the pwd
export PS1="\w$ "

#Case insenstive completion
bind -f  ~/.inputrc
