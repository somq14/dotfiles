#!/bin/bash

set -eu
cd $(dirname $0)

mkdir -p ~/.config/peco
ln -s $(pwd)/config.json ~/.config/peco/config.json
