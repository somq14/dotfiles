#!/bin/bash
set -eu
cd $(dirname $0)

ln -sf $(pwd)/../bash/.bashrc ~/.bashrc
ln -sf $(pwd)/../git/.gitmessage ~/.gitmessage
