#!/bin/bash

MARKER="(: MARKER :)"

# Import bashrc
import_bashrc='# Import .bashrc from dotfile (: MARKER :)
if [ -f "$HOME/dotfile/.bashrc" ]; then
    . "$HOME/dotfile/.bashrc"
fi'

proxy_setting="# Default setting
ALL_PROXY='socks5://127.0.0.1:60001'
HTTP_PROXY='socks5://127.0.0.1:60001'
HTTPS_PROXY='socks5://127.0.0.1:60001'
alias proxyshow='source ~/dotfile/.local/bin/setproxy'
alias proxyon='source ~/dotfile/.local/bin/setproxy on'
alias proxyoff='source ~/dotfile/.local/bin/setproxy off'"

echo "Processing .bashrc ..."
echo "------------------------"

if [ -f "$HOME/.bashrc" ]; then
    grep "$MARKER" $HOME/.bashrc > /dev/null
    if [ $? -ne 0 ]; then
        echo "Adding dotfile/.bashrc ..."
        echo "$import_bashrc" >> "$HOME/.bashrc"
        echo "Adding proxy shortcuts ..."
        echo "${proxy_setting}" >> "$HOME/.bashrc"
    fi
else
    echo "Linking dotfile/.bashrc ..."
    ln -s $HOME/dotfile/.bashrc $HOME/.bashrc
fi
echo

# Import bash_profile

import_bash_profile='# Import .bash_profile from dotfile (: MARKER :)
if [ -f "$HOME/dotfile/.bash_profile" ]; then
    . "$HOME/dotfile/.bash_profile"
fi'

echo "Processing .bash_profile ..."
if [ -f "$HOME/.bash_profile" ]; then
    grep "$MARKER" $HOME/.bashrc > /dev/null
    if [ $? -ne 0 ]; then
        echo "$import_bash_profile" >> "$HOME/.bash_profile"
        echo "Adding dotfile/.bash_profile ..."
    fi
else
    ln -s $HOME/dotfile/.bash_profile $HOME/.bash_profile
    echo "Linking dotfile/.bash_file ..."
fi
echo "finished"
echo


echo "Processing lf ..."
if [ ! -d "$HOME/.config/lf" ]; then
    ln -s $HOME/dotfile/.config/lf $HOME/.config/lf
fi
echo "finished"
echo


echo "Processing tmux ..."
if [ ! -f "$HOME/.tmux.conf" ]; then
    ln -s $HOME/dotfile/.config/tmux/tmux.conf $HOME/.tmux.conf
fi
echo "finished"
echo


echo "Processing screen ..."
if [ ! -f "$HOME/.screenrc" ]; then
    ln -s $HOME/dotfile/.screenrc $HOME/.screenrc
fi
echo "finished"
echo

echo "Processing proxy ..."
echo "finished"
