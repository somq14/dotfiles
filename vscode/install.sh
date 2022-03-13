#!/bin/bash
set -eu

SRC=$(dirname $0)
DEST=$HOME/.config/User/

for FILE in "settings.json" "keybindings.json"; do
  if [ -e $DEST/$FILE ]; then
    rm -i $DEST/$FILE
  fi
  ln -s $SRC/$FILE $DEST/$FILE
done

for EXT in $(cat extensions.txt); do
  code --force --install-extension $EXT
done
