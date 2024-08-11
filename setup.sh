#!/bin/bash

rm "$HOME/../usr/etc/motd"
mv termux/* "$HOME"/.termux/ && mv config "$HOME"/.config && rm -r termux
pkg install neovim fish starship getconf which jq ripgrep -y
chsh -s fish
