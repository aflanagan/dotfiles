Dotfiles
===============

This is a collection of useful dotfiles for developers.
Inspired by [dotfiles.github.com](http://dotfiles.github.com/)

Keeping your dotfiles on github is a great way to speed up your setup time if anything ever goes terribly wrong with your build. If you've ever lost a painstakingly crafted .vimrc or .bash_aliases file, then you know what I'm talking about.

### How to use

1. Clone this repo
2. Symlink your new source-tracked dotfiles into your home directory (see below)


### Some goodies for you

- .gitconfig: A ton of useful git aliases, like git lg, git last, git unpushed, etc.
- .gitignore: Global gitignore.
- .ackrc: See http://betterthangrep.com.


### How to symlink

Warning: this will overwrite your home directory files. Only do this step if you've already migrated your customizations into the dotfiles repo.
First, diff the files against your existing home directory dotfiles, and only take changes you like. You might need to delete any existing dotfiles
that you are about to sym link.


<pre>
# Run this from the root of this repo, e.g. ~/src/dotfiles or wherever it is.
YOUR_DOTFILES_DIR=`pwd`
echo Installing files from $YOUR_DOTFILES_DIR into your home directory.

ln -s ${YOUR_DOTFILES_DIR}/ackrc ~/.ackrc
ln -s ${YOUR_DOTFILES_DIR}/bash_profile ~/.bash_profile
ln -s ${YOUR_DOTFILES_DIR}/bash_aliases ~/.bash_aliases
ln -s ${YOUR_DOTFILES_DIR}/gitconfig ~/.gitconfig
ln -s ${YOUR_DOTFILES_DIR}/gitignore ~/.gitignore
</pre>
