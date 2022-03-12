#!/bin/bash

set -eu
cd $(dirname $0)

rm -i ~/.gitconfig ~/.gitmessage
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitmessage ~/.gitmessage
