#!/bin/bash

rm "$HOME/../usr/etc/motd"
mv "termux/*" "$HOME/.termux/" && mv "config" "$HOME/.config" && rm -r "termux"
pkg install git fish getconf which jq -y
chsh -s fish
which starship || curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir /data/data/com.termux/files/usr/bin
