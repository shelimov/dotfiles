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

rm ~/.tern-config
ln -s $DIR/.tern-config ~/.tern-config

rm ~/.babelrc
ln -s $DIR/.babelrc ~/.babelrc

. $DIR/.config/initConfig.sh
