# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

brew install webkit2png
brew install rename
brew install python
brew install tree
brew install ack
brew install git

brew cleanup

brew tap phinze/homebrew-cask
brew tap caskroom/versions
brew install brew-cask

# Apps
apps=(
  alfred
  dropbox
  google-chrome
  qlcolorcode
  screenflick
  appcleaner
  firefox
  qlmarkdown
  spotify
  iterm2
  qlprettypatch
  sublime-text3
  virtualbox
  atom
  flux
  mailbox
  qlstephen
  vlc
  quicklook-json
  skype
  transmission
  hipchat
  pycharm-ce
  sourcetree
  bettertouchtool
  mysqlworkbench
  pgadmin3
  sequel-pro
  sonos
  steam
  telegram
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cask alfred link
