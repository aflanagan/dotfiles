### August's Master Alias List (mainly stolen from vaughn koch) ###

### Program overrides
alias ll="ls -larht"
alias fgrep="fgrep -i $*"
#alias diff="colordiff --exclude=".svn" --exclude="*.pyc" $*"
alias df='df -ah'

# Note Do NOT alias ack! causes bad stuff to happen.  Use .ackrc instead.
# Example:
# alias ack="ack --follow -i -u $1 $2 $3 $4 $5 $6 $7 $8 $9"

# I *do* want to alias ag though.
# -i: case insensitive.  -f: follow symlinks
alias ag="ag -i"

### Handy shortcuts

# List only directories
alias lsd="ls -d */"


### Edit/reload shortcuts
alias realias="source ~/.bash_aliases"
alias edalias="code ~/.bash_aliases"
alias edackrc="code ~/.ackrc"

alias c='code $1'

### Navigation
alias work="cd ~/work"
alias bl="cd ~/work/babylist"
alias crn="cd ~/work/cronitor_project && source venv/bin/activate"
alias crnsrv="cd ~/work/cronitor_project && source venv/bin/activate && python manage.py runserver"
alias crn3="cd ~/work/cronitor_project && source venv3/bin/activate"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

### Open OSX apps from the command line
alias chrome="open -a Google Chrome"
alias firefox="open -a firefox"

### Git
alias g='git $1'
alias gst='git status'
alias gbr='git branch'
alias gco='git checkout'


### Python
# Start a simple web server
alias pyserv="python -m SimpleHTTPServer 8000"

### Ruby
alias be="bundle exec $1"
alias ber="bundle exec rake $1"

### BabyList
alias pdeploy="be cap production ci:deploy"
alias sdeploy="be cap staging ci:deploy"
alias prollback="be cap production deploy:rollback"
