#!/bin/bash
# (: MARKER :)
# ~/.bash_profile

# Set env variables
function setenv() { export $1=$2; }
. $HOME/dotfile/.config/shell/env

export LESSCHARSET=utf-8
export LESS="R"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"

#music player
#mpd > /dev/null 2>&1 &

# Update PATH
[ -d "$HOME/.local/bin" ] && export "PATH=$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/bin/statusbar" ] && export "PATH=$HOME/.local/bin/statusbar:$PATH"

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
	fi
fi
