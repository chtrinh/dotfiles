#!/bin/bash

shopt -s dotglob
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in *
do
  if [[ $file != ".git" && $file != "README.md" && $file != "install.sh" && $file != ".gitmodules" ]]; then
    path=$dir/$file
    if [[ -d $path ]]; then
      if [[ ! -d ~/$file ]]; then
        echo "Symlinking directory $path..."
        ln -s $path ~/
      fi
    elif [[ ! -f ~/$file ]]; then
      echo "Symlinking file $path..."
      ln -s $path ~/
    fi
  fi
done;

shopt -u dotglob
