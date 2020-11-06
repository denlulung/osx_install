#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install and Set San Francisco as System Font
ruby -e "$(curl -fsSL https://raw.github.com/wellsriley/YosemiteSanFranciscoFont/master/install)"
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew tap homebrew/science
brew install wget

brew tap phinze/cask
brew install brew-cask
#brew cask search
#brew cask uninstall app

# Core Functionality
echo Install Core Apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" rectangle
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" adobe-creative-cloud
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="~/Applications" vlc

# Google Slavery
echo Install Google Apps
# brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive-file-stream 
brew cask install --appdir="/Applications" google-chat
brew cask install --appdir="/Applications" drawio

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications
brew cask install --appdir="/Applications" whatsapp
brew cask install --appdir="/Applications" zoomus
brew cask install --appdir="/Applications" microsoft-teams 

# Link Cask Apps to Alfred
brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Security: https://objective-see.com/products.html"