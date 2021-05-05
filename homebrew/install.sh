#!/bin/zsh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if ! is-executable brew; then
  echo "  Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if is-executable brew; then
  echo "Merge multiple brewfiles to $DOTFILES_DIR/homebrew/brewpackages"
  sh $DOTFILES_DIR/bin/combine-files Brewfile $DOTFILES_DIR/homebrew brewpackages

  if is-macos; then
    echo "Adding brewfiles specific to MacOS"
    sh $DOTFILES_DIR/bin/combine-files Caskfile $DOTFILES_DIR/homebrew brewpackages

    echo "  Installing Homebrew dependencies into $HOME/Applications directory"
    brew bundle install --file=$DOTFILES_DIR/homebrew/brewpackages
  else
    echo "  Installing Homebrew dependencies"
    brew bundle install --file=$DOTFILES_DIR/homebrew/brewpackages
  fi

  echo "List all dependencies not listed in a $DOTFILES_DIR/homebrew/brewpackages."
  if [ -f $DOTFILES_DIR/homebrew/not-listed.txt ]; then
    rm $DOTFILES_DIR/homebrew/not-listed.txt
  fi
  brew bundle cleanup --file=$DOTFILES_DIR/homebrew/brewpackages >>$DOTFILES_DIR/homebrew/not-listed.txt
  cat $DOTFILES_DIR/homebrew/not-listed.txt
fi

exit 0
