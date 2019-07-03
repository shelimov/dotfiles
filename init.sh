#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm ~/.zshrc
ln -s $DIR/.zshrc ~/.zshrc

rm ~/.eslintrc
ln -s $DIR/.eslintrc ~/.eslintrc

rm ~/.gitconfig
ln -s $DIR/.gitconfig ~/.gitconfig

rm ~/.vimrc
ln -s $DIR/.vimrc ~/.vimrc

rm ~/.vim
ln -s $DIR/.vim ~/.vim

rm ~/.tern-config
ln -s $DIR/.tern-config ~/.tern-config

rm ~/.babelrc
ln -s $DIR/.babelrc ~/.babelrc

rm ~/.hushlogin
ln -s $DIR/.hushlogin ~/.hushlogin

rm ~/.gitignore_global
ln -s $DIR/.gitignore_global ~/.gitignore_global

. $DIR/.config/initConfig.sh
