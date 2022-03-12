#!/bin/bash

set -eu
cd $(dirname $0)

mkdir -p ~/.config/Code/User
ln -s $(pwd)/settings.json ~/.config/Code/User/settings.json
ln -s $(pwd)/keybindings.json ~/.config/Code/User/keybindings.json
