#!/usr/bin/env bash

defaults write com.apple.finder AppleShowAllFiles YES; # show hidden files
defaults write NSGlobalDomain AppleShowAllExtensions -bool true; # show all file extensions
defaults write com.apple.finder CreateDesktop -bool false && killall Finder; # take hidden files off of desktop

echo "Setting up ~/.bash_profile...";
touch ~/.bash_profile;
echo "export PS1=\"\w $ \";" >> ~/.bash_profile;

# install Xcode Command Line Tools
# https://github.com/timsutton/osx-vm-templates/blob/ce8df8a7468faa7c5312444ece1b977c1b2f77a4/scripts/xcode-cli-tools.sh
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
PROD=$(softwareupdate -l |
  grep "\*.*Command Line" |
  head -n 1 | awk -F"*" '{print $2}' |
  sed -e 's/^ *//' |
  tr -d '\n')
softwareupdate -i "$PROD" -v;

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

brew install \
  caskroom/cask/brew-cask \
  git \
  mongodb \
  nmap \
  node \
  openssl \
  pssh \
  python \
;
brew tap caskroom/versions;
brew cask install \
  firefox \
  google-chrome \
  silverlight \
  sublime-text \
  vlc \
;
