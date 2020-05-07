#!/usr/bin/env bash

# fix Hyper first line precent sign
unsetopt PROMPT_SP

# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/scripts/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

unset file

# Extra paths
export PATH=~/bin:/usr/local/bin:~/.composer/vendor/bin:$PATH
