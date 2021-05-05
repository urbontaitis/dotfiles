#!/bin/sh
#
# Visual studio code extensions
#
set -e

if ! is-executable code; then
    echo "  Visual studio code is missing"
else
    echo "Merge multiple extensions to $DOTFILES_DIR/vscode/allextensions"
    sh $DOTFILES_DIR/bin/combine-files code-extensions $DOTFILES_DIR/vscode allextensions

    xargs -n1 code --install-extension <$DOTFILES_DIR/vscode/allextensions

    if is-macos; then
        echo "enable key-repeating for MacOS"
        defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
    fi
fi
