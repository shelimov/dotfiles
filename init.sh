#!/bin/bash
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

rm ~/.eslintrc
ln -s ~/dotfiles/.eslintrc ~/.eslintrc

rm ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

rm ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc

rm ~/.tern-config
ln -s ~/dotfiles/.tern-config ~/.tern-config

rm -rf ~/.config/fish
ln -s ~/dotfiles/fish ~/.config/fish
