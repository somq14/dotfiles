#!/bin/bash
set -eu
cd $(dirname $0)

SRC=$(pwd)
DEST=$HOME/.config/Code/User

mkdir -p $DEST

for FILE in "settings.json" "keybindings.json"; do
  if [ -e $DEST/$FILE -o -h $DEST/$FILE ]; then
    rm -i $DEST/$FILE
  fi
  ln -s $SRC/$FILE $DEST/$FILE
done

for EXT in $(cat $SRC/extensions.txt); do
  code --force --install-extension $EXT
done
