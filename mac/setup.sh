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

brew install homebrew/cask-versions/firefox-developer-edition
brew install --cask google-chrome
brew install --cask iterm2
# install screen recorder
brew install --cask kap
# window manager
brew install --cask rectangle
# previews to window switcher
brew install --cask alt-tab
# show key presses
brew install --cask keycastr

# similar to alt-drag feature
brew install --cask easy-move-plus-resize
xattr -dr com.apple.quarantine /Applications/Easy\ Move+Resize.app

brew install --cask spotify slack thunderbird
brew install --cask obsidian
brew install --cask syncthing
brew install syncthing
brew install --cask toggl-track


sudo softwareupdate --install-rosetta
brew install --cask microsoft-teams
brew install --cask zotero
brew install --cask mactex
brew install --cask texstudio
brew install --cask ferdi
brew install --cask discord
brew install --cask obs

# programming things

brew install git
brew install docker docker-compose
brew install node
brew install gcc

## Python
brew update
brew install pyenv
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
brew install openssl readline sqlite3 xz zlib
# https://github.com/pyenv/pyenv/wiki#how-to-build-cpython-with---enable-shared
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.10:latest
# was getting --enabled-shared errors with reticulate
python -m venv ~/.venv
source .venv/bin/activate
python -m pip install --upgrade pip setuptools wheel pandas jupyterlab jupyter

# paid things
brew install --cask synergy
