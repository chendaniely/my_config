# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew cleanup
brew upgrade

# text editors
brew cask install emacs sublime-text

# r stuff
brew cask install java
brew cask install r --with-java --with-openblas
brew install homebrew/cask-versions/rstudio-preview

# get devtools package in r
brew install libgit2
brew install jq

#==> openblas
#openblas is keg-only, which means it was not symlinked into /usr/local,
#because macOS provides BLAS and LAPACK in the Accelerate framework.
#
#For compilers to find openblas you may need to set:
#  export LDFLAGS="-L/usr/local/opt/openblas/lib"
#  export CPPFLAGS="-I/usr/local/opt/openblas/include"
#
#For pkg-config to find openblas you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"

# docker
brew cask install docker

# utils
brew install git
