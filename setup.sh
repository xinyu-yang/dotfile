#!/bin/bash

# Import bashrc
import_bashrc='# Import .bashrc from dotfile
if [ -f "$HOME/dotfile/.bashrc" ]; then
    . "$HOME/dotfile/.bashrc"
fi'
echo "Processing .bashrc ..."
echo "------------------------"

if [ -f "$HOME/.bashrc" ]; then
    echo "Adding dotfile/.bashrc ..."
    echo "$import_bashrc" >> "$HOME/.bashrc"
else
    echo "Linking dotfile/.bashrc ..."
    ln -s $HOME/dotfile/.bashrc $HOME/.bashrc
fi
echo

# Import bash_profile

import_bash_profile='# Import .bash_profile from dotfile
if [ -f "$HOME/dotfile/.bash_profile" ]; then
    . "$HOME/dotfile/.bash_profile"
fi'

echo "Processing .bash_profile ..."
echo "------------------------"
if [ -f "$HOME/.bash_profile" ]; then
    echo "$import_bash_profile" >> "$HOME/.bash_profile"
    echo "Adding dotfile/.bash_profile ..."
else
    ln -s $HOME/dotfile/.bash_profile $HOME/.bash_profile
    echo "Linking dotfile/.bash_file ..."
fi
echo


echo "Processing lf ..."
echo "------------------------"
if [ ! -f "$HOME/.config/lf" ]; then
    ln -s $HOME/dotfile/.config/lf $HOME/.config/lf
fi
echo


echo "Processing tmux ..."
echo "------------------------"
if [ ! -f "$HOME/.tmux.conf" ]; then
    ln -s $HOME/dotfile/.config/tmux/tmux.conf $HOME/.tmux.conf
fi
