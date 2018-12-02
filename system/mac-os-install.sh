#!/usr/bin/env bash
echo "Configuring mac..."

set -e


if [[ $(xcode-select --version) ]]; then
  echo "Xcode command tools already installed"
else
  echo "Installing Xcode commandline tools"
  $(xcode-select --install)
fi

#######################################################
# Additional Shells                                   #
#######################################################

# install fish shell
brew install fish

# Adds fish to shells, which allows usage
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells

echo "fish shell installed - run `chsh -s /usr/local/bin/fish` to activate as default"

echo "Installing Visual Studio Code"
brew cask install visual-studio-code 


#######################################################
# Fonts                                               #
#######################################################
echo "Installing font files"
brew tap caskroom/fonts
brew cask install font-source-code-pro-for-powerline \
    font-inconsolata-g-for-powerline \
    font-firacode-nerd-font \
    font-roboto-mono-for-powerline