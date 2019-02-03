#!/bin/sh
pushd env
if [ $(uname) = "Darwin" ];then
    #   macOS
    # =========
    # install Homebrew
    echo "[Install Homebrew]"
    sh brew/install.sh
    # install formulas
    echo "[Install formulas]"
    pushd brew
    brew bundle
    popd
fi

popd
