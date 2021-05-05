#!/bin/sh
#
# Cleanup Homebrew packages
#

if is-executable brew; then
  DEPENDENCIES_TO_REMOVE=$DOTFILES_DIR/homebrew/removed.txt
  
  echo "Merge multiple brewfiles to $DOTFILES_DIR/homebrew/brewpackages"
  sh $DOTFILES_DIR/bin/combine-files Brewfile $DOTFILES_DIR/homebrew brewpackages

  if is-macos; then
    echo "Adding brewfiles specific to MacOS"
    sh $DOTFILES_DIR/bin/combine-files Caskfile $DOTFILES_DIR/homebrew brewpackages
  fi

  echo "  Cleanup non existing Homebrew dependencies in BrewFile"
  if [ -f $DEPENDENCIES_TO_REMOVE ]; then
    rm $DEPENDENCIES_TO_REMOVE
  fi
  brew bundle cleanup --file=$DOTFILES_DIR/homebrew/brewpackages --force >>$DEPENDENCIES_TO_REMOVE
  cat $DEPENDENCIES_TO_REMOVE
fi

exit 0
