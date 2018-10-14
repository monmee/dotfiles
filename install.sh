#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    
    if [[ -e $HOME/$f ]]; then
        echo "[Skip]: $HOME/$f has already exists."
        continue 
    fi

    ln -s $HOME/dotfiles/$f $HOME/$f
    echo "[Setup]: Symbolic linked $f ..."
done
