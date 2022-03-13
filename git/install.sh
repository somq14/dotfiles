#!/bin/bash
set -eu

SRC=$(dirname $0)
DEST=$HOME

for FILE in (".gitconfig" ".gitmessage"); do
  if [ -e $DEST/$FILE ]; then
    rm -i $DEST/$FILE
  fi
  ln -s $SRC/$FILE $DEST/$FILE
done

read -p "user.name: " USER_NAME
git config --global user.name $USER_NAME

read -p "user.email: " USER_EMAIL
git config --global user.email $USER_EMAIL
