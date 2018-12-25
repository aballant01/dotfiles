#!/bin/bash

#######################################################
# GPG                                                 #
#######################################################

if [[ $(brew --version) ]] ; then
    echo "Attempting to update Homebrew"
    brew update
else
    echo "Homebrew not installed - install homebrew before running";
    exit 0;
fi

echo "Installing GPG tools..."

brew install gnupg