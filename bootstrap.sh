#!/usr/bin/env bash

cd "$HOME";

sudo apt-get install git-core zsh

echo "Cloning felipeetchatz/dotfiles..."
git clone https://github.com/felipeetchatz/dotfiles.git;

echo "Setting up...";
ln -s dotfiles/.gitignore_global .gitignore_global;
rm ~/.zshrc && ln -s dotfiles/.zshrc .zshrc

git config --global core.excludesfile ~/.gitignore_global;
