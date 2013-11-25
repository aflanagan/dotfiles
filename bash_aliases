### August's Master Alias List (mainly stolen from vaughn koch) ###

### Program overrides
alias ll="ls -larht"
alias fgrep="fgrep -i $*"
alias diff="colordiff --exclude=".svn" --exclude="*.pyc" $*"
alias df='df -ah'

# Note Do NOT alias ack! causes bad stuff to happen.  Use .ackrc instead.
# Example:
# alias ack="ack --follow -i -u $1 $2 $3 $4 $5 $6 $7 $8 $9"

# I *do* want to alias ag though.
# -i: case insensitive.  -f: follow symlinks
alias ag="ag -i"

### Handy shortcuts

# Recursive diff, without svn
alias rdiff='diff -r --exclude=\*\.svn $*'

# List only directories
alias lsd="ls -d */"

# 'lsr' - Easy recursive search
# Thank you, http://www.unix.com/unix-advanced-expert-users/69618-shell-programming-aliasing-set-f.html !
# The problem was that making lsr a shell script was causing the parameter to expand globs like *.css, which futzed find.
alias lsr='set -f; mylsr'
mylsr () {
  find  -L . -iname $@ |fgrep -v .svn
  set +f
}



### Edit/reload shortcuts
alias realias="source ~/.bash_aliases"
alias edalias="subl ~/.bash_aliases"
alias edackrc="subl ~/.ackrc"

alias sb='subl $1'
alias edhosts="subl /etc/hosts"
alias edprofile="subl ~/.bash_profile"
alias reprofile="source ~/.bash_profile"


### Navigation
alias tru="cd /wb/tru"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

### Open OSX apps from the command line
alias ecl="open -a eclipse $1"
alias cog="open -a cog $1"
alias mate="open -a TextMate $1"
alias calc="open -a calculator"
alias chrome="open -a chrome"
alias firefox="open -a firefox"
alias versions="open -a versions"
alias nb="open /Applications/NetBeans/NetBeans\ 7.1.2.app/ && /Applications/NetBeans/NetBeans\ 7.1.2.app/Contents/MacOS/netbeans $1"
# alias nb="open /Applications/NetBeans/NetBeans\ 7.0.app/ && /Applications/NetBeans/NetBeans\ 7.0.app/Contents/MacOS/netbeans $1"


### Python
# Start a simple web server
alias pyserv="python -m SimpleHTTPServer 8000"

