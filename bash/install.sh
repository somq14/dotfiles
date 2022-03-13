#!/bin/bash
set -eu
cd $(dirname $0)

SRC=$(pwd)
DEST=$HOME

for FILE in ".bashrc"; do
  if [ -e $DEST/$FILE -o -h $DEST/$FILE ]; then
    rm -i $DEST/$FILE
  fi
  ln -s $SRC/$FILE $DEST/$FILE
done
