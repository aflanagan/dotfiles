PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/mysql/bin:${HOME}/bin:${PATH}"
export PATH

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
. ~/.bash_prompt;
fi

# Programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Menu completion
bind '"\t":menu-complete'

# Case insensitive filenames for globbing.
# example: ls A* will show a* files as well.
shopt -s nocaseglob

# Case insensitive filenames for tab completion.
bind 'set completion-ignore-case on'

# Git autocompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# add ssh keys
ssh-add ~/.ssh/keys/cronitor_key
ssh-add ~/.ssh/keys/babylist
ssh-add ~/.ssh/cronitor.pem

# Work around bug in browserify
ulimit -n 2560

