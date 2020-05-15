#!/bin/sh

echo "Installing your dotfiles..."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"

# Mackup: Keep your application settings in sync > https://github.com/lra/mackup
ln -s "$PWD/mackup.cfg" "$HOME/.mackup.cfg"
ln -s "$PWD/mackup" "$HOME/.mackup"

# read -p "Enter your github email address" email
# read -p "Enter your github name" name
# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

source ./macos