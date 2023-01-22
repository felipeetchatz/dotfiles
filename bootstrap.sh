#!/usr/bin/env bash

cd "$HOME";

sudo apt-get install git-core ctags zsh xclip

echo "Cloning nandosousafr/dotfiles..."
git clone https://github.com/nandosousafr/dotfiles.git;

echo "Setting up...";
ln -s dotfiles/.gitignore_global .gitignore_global;
rm ~/.zshrc && ln -s dotfiles/.zshrc .zshrc

git config --global core.excludesfile ~/.gitignore_global;

echo "Fetching neobundle...";

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh;