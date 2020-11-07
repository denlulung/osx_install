#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install Homebrew & wget
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install wget
brew install mas

# Apps that require a Passwd
brew cask install --appdir="/Applications" google-drive-file-stream
brew cask install --appdir="/Applications" adobe-acrobat-reader
brew cask install --appdir="/Applications" adobe-creative-cloud
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" zoomus

# Core Functionality
echo Install Core Apps
brew cask install --appdir="/Applications" rectangle
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" handbrake
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" appcleaner

# Google Slavery
echo Install Google Apps
# brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chat
brew cask install --appdir="/Applications" drawio

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" whatsapp
brew cask install --appdir="/Applications" microsoft-teams 

# cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "IT Arena #AvoWebSolutions"