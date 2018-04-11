#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.config/fish
ln -s $DIR/fish ~/.config/fish

rm -rf ~/.config/plank
ln -s $DIR/plank ~/.config/plank

rm -rf ~/.config/gtk-3.0
ln -s $DIR/gtk-3.0 ~/.config/gtk-3.0

#rm -rf ~/.config/fisherman ~/.config/fisherman
#ln -s $DIR/fisherman ~/.config/fisherman

$DIR/xfce4/initXfce.sh
