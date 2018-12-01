#!/usr/bin/env bash
echo "Configuring mac"

set -e

if [[ $(xcode-select --version) ]]; then
  echo "Xcode command tools already installed"
else
  echo "Installing Xcode commandline tools"
  $(xcode-select --install)
fi

# install fish shell
brew install fish

brew cask install visual-studio-code 