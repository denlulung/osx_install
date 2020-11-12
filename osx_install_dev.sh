#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Google Slavery
echo Install Google Apps
brew cask install --appdir="/Applications" google-drive-file-stream
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chat
brew cask install --appdir="/Applications" drawio

# Dev Env
echo Install nodejs, watchman, & composer
brew install node@14
brew install watchman
brew install composer

# Core Dev Tools
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" android-studio
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" sourcetree

# Nice to have
echo Nice to have
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" rectangle
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" whatsapp
brew cask install --appdir="/Applications" microsoft-teams
brew cask install --appdir="/Applications" zoomus

# cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "IT Arena #AvoWebSolutions"