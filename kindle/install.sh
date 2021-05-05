#!/bin/bash

if [ ! -d "$DOTFILES_DIR/kindle/kindle-clippings" ]
then
    echo "installing kindle-clippings"
    git clone https://github.com/lvzon/kindle-clippings.git $DOTFILES_DIR/kindle/kindle-clippings
    echo "installing required dependencies"
    pip3 install python-dateutil    
    
    if [ ! -f "$DOTFILES_DIR/kindle/alias-env.zsh" ]
    then
        echo "Creating kindle-clippings configuration: $DOTFILES_DIR/kindle/alias-env.zsh"
        cp $DOTFILES_DIR/kindle/alias-env.zsh.example $DOTFILES_DIR/kindle/alias-env.zsh
    fi 
else
    echo "updating kindle-clippings"
    cd $DOTFILES_DIR/kindle/kindle-clippings && git pull --rebase
fi



