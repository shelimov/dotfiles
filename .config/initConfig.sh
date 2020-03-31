#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.config/fish
ln -s $DIR/fish ~/.config/fish

rm -rf ~/.config/fontconfig
ln -s $DIR/fontconfig ~/.config/fontconfig
