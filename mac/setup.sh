# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/danielchen/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew cleanup
brew upgrade

# install xcode
xcode-select --install

# text editors
brew install --cask emacs vscodium

## brew install other stuff

brew install --cask firefox-developer-edition
brew install --cask iterm2
# install screen recorder
brew install --cask kap
# window manager
brew install --cask rectangle
# previews to window switcher
brew install --cask alt-tab
# show key presses
brew install --cask keycastr

brew install --cask spotify slack thunderbird
brew install --cask obsidian
brew install syncthing


sudo softwareupdate --install-rosetta
brew install --cask microsoft-teams

# programming things

brew install git
brew install docker docker-compose
brew install node

