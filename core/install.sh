#!/usr/bin/env bash

if [[ $(brew --version) ]] ; then
    echo "Attempting to update Homebrew"
    brew update
else
    echo "Attempting to install Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update && brew cleanup && brew cask cleanup

if [[ $(zsh --version) ]] ; then 
    echo "Zsh allegedly already installed, do manual update if desired"
else 
    echo "Attempting to install zsh"
    brew install zsh
fi 


brew install git \
    vim

echo "Installing oh-my-zsh"
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
