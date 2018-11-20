#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install tree
brew install trash
brew install gpg
brew install terraform
brew install mysql@5.7
brew install docker-compose
brew install ffmpeg

brew install cask
brew cask install karabiner-elements
brew tap caskroom/fonts
brew cask install font-fira-code
brew cask install google-chrome
brew cask install google-drive-file-stream
brew cask install firefox
brew cask install 1password
brew cask install hyper
brew cask install toggl
brew cask install kindle
brew cask install cheatsheet
brew cask install slack
brew cask install spectacle
brew cask install nozbe
brew cask install sequel-pro
brew cask install figma
brew cask install whatsapp
brew cask install alfred
brew cask install 1clipboard
brew cask install visual-studio-code
brew cask install postman
brew cask install discord
brew cask install appcleaner
brew cask install postgres
brew cask install vlc
brew cask install docker
brew cask install obs
brew cask install notion


# Install dev-related binaries
brew install nvm && mkdir ~/.nvm
brew install watchman
brew install thefuck
brew install zsh zsh-completions
brew install yarn --without-node
brew install z

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash

# Install eset
curl https://gist.githubusercontent.com/lubieniebieski/46c32262bf82245960fff1dc5cad2988/raw/42753e7e3ecefd8a619f7072a2677a1ff0f08e34/erascript.sh | sudo bash

# Install extension that sync setting in vscode
code --install-extension shan.code-settings-sync

# install aws cli
pip install awscli --upgrade --user

# Remove outdated versions from the cellar.
brew cleanup
