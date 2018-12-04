#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    
    if [[ -e $HOME/$f ]]; then
        echo "[Restore]: Restoring Symolic link $f..."
        unlink $HOME/$f
        continue
    fi

    echo "[Skip]:  $HOME/$f does not exist."
done
