#!/bin/bash

set -eu
cd $(dirname $0)

ln -s $(pwd)/.gitconfig ~/.gitconfig
