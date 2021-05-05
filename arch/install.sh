#!/usr/bin/env bash

if ! is-macos; then
    if ! is-executable yay; then 
        sudo pacman -Syu --needed --noconfirm yay 
    fi

    # echo "Combine brew packages to PacmanFile"
    # sh $DOTFILES_DIR/bin/combine-files Brewfile $DOTFILES_DIR/arch/temp PacmanFile
    # echo "Combine pacman packages"
    # sh $DOTFILES_DIR/bin/combine-files PacmanFile $DOTFILES_DIR/arch pacmanpackages

    echo "Pacman packages installing..."
    yay -S --needed --noconfirm $(cat $DOTFILES_DIR/arch/PacmanFile)
fi
