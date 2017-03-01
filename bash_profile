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

# Git autocompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

# Menu completion
bind '"\t":menu-complete'

# Case insensitive filenames for globbing.
# example: ls A* will show a* files as well.
shopt -s nocaseglob

# Case insensitive filenames for tab completion.
bind 'set completion-ignore-case on'

#MYSQL
export PATH=${PATH}:/usr/local/mysql/bin

#RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Work around bug in browserify
ulimit -n 2560


export NVM_DIR="/Users/augustflanagan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
