#!/bin/sh

if [ -z "$*" ]; then
  exit
fi

for word in "$@"; do
  echo "$word" >> "$HOME/.config/git/.dict.en.pws"
done
