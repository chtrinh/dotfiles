#!/bin/bash

shopt -s dotglob
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in *
do
  # pretty lame... I need to work on my bash-fu
  if [[ $file != ".git" && $file != "README.md" && $file != "install.sh" && $file != ".gitmodules" && $file != ".gitignore" ]]; then
    path=$dir/$file
    dotfile=.$file
    if [[ -d $path ]]; then
      if [[ ! -d ~/$dotfile ]]; then
        echo "Symlinking directory $path..."
        ln -s $path ~/$dotfile
      fi
    elif [[ ! -f ~/$dotfile ]]; then
      echo "Symlinking file $path..."
      ln -s $path ~/$dotfile
    fi
  fi
done;

shopt -u dotglob
