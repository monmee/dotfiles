#!/bin/bash

# brew install
echo "=== Installing brewfile... ==="
sh env/install.sh
echo "=== Done ==="

# Symbolic dotfiles to $HOME
echo "=== Symbolic-linking dotfiles... ==="
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    
    if [[ -h $HOME/$f ]]; then
        echo "[Skip]: $HOME/$f has already exists."
        continue 
    fi

    ln -s $PWD/$f $HOME/$f
    echo "[Setup]: Symbolic linked $f ..."
done
echo "=== Done ==="
