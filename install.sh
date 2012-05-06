#!/bin/bash

shopt -s dotglob
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in *
do
  if [[ $file != ".git" && $file != "README.md" && $file != "install.sh" && $file != ".gitmodules" ]]; then
    echo "Symlinking $file..."
    ln -s $dir/$file ~/$file
  fi
done;

shopt -u dotglob
