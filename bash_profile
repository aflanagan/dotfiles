# Add php to path (this will get pear, pecl etc)

PATH="/usr/local/bin:/usr/local/php5/bin:${HOME}/bin:${PATH}"
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
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Menu completion
bind '"\t":menu-complete'

# Case insensitive filenames for globbing.
# example: ls A* will show a* files as well.
shopt -s nocaseglob

# Case insensitive filenames for tab completion.
bind 'set completion-ignore-case on'

# Don't capture all history commands.
export HISTIGNORE="&:ls:ll:[bf]g:exit:rm *"

# XDebug, to be used with Netbeans.  This might mess up debugging if phpunit runs at the same time as the web browser.
# Also, don't forget to switch Netbeans debugging to create/not create the browser-debug-open as appropriate.
export XDEBUG_CONFIG="idekey=netbeans-xdebug";

# GO!
export GOROOT=/usr/local/Cellar/go/1.0.2
export PATH=$GOROOT/bin:$PATH
export GOPATH=/wb/go

# Git autocompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
