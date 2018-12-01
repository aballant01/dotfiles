#!/bin/bash


# Add common git config
if [ -a ~/.gitconfig ] ; then 
    echo "File .gitconfig already exists, skipping linking. Please manually configure";
else 
    ln -s ./gitconfig ~/.gitconfig;
fi

# Add global common gitignore
if [ -a ~/.gitignore_global ] ; then 
    echo ".gitignore global file already exists, skipping...";
else 
    ln -s ./gitignore ~/.gitignore_global
fi

# Link tmux configuration
if [ -a ~/.tmux.conf ] ; then
    echo ".tmux/conf already exists, skipping...";
else 
    ln -s ./tmux ~/.tmux.conf
fi
