#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.config/xfce4/terminal
ln -s $DIR/terminal ~/.config/xfce4/terminal

rm -rf ~/.config/xfce4/xfwm4
ln -s $DIR/xfwm4 ~/.config/xfce4/xfwm4
