#!/bin/sh

rm "$HOME"/{.bash_logout,.bash_profile,.bashrc,.profile,.screenrc}
ln -s "$PWD/bash_logout" "$HOME/.bash_logout"
ln -s "$PWD/bash_profile" "$HOME/.bash_profile"
ln -s "$PWD/bashrc" "$HOME/.bashrc"
ln -s "$PWD/profile" "$HOME/.profile"
ln -s "$PWD/screenrc" "$HOME/.screenrc"
