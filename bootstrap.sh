#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude ".macos" \
		--exclude "README.md" \
		--exclude "brew.sh" \
		-avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

# Set colemak keyboard layout for login screen
# https://apple.stackexchange.com/questions/108144/mavericks-input-source-is-set-to-us-keyboard-in-login-screen
sudo cp ~/Library/Preferences/com.apple.HIToolbox.plist /Library/Preferences/
sudo chmod 644 /Library/Preferences/com.apple.HIToolbox.plist
