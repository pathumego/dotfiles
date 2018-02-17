# Setup new macOS

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew tap homebrew/dupes
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

PACKAGES=(
    ffmpeg
    imagemagick
    npm
    python3
    terminal-notifier
    youtube-dl
    pandoc
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew install caskroom/cask/brew-cask

CASKS=(
    flux
    virtualbox
    keycastr
    kap
    vienna
)
#
# echo "Installing cask apps..."
# brew cask install ${CASKS[@]}


echo "Installing Python packages..."
PYTHON_PACKAGES=(
  fontmake
)
sudo pip install ${PYTHON_PACKAGES[@]}
