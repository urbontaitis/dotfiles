#!/bin/bash
#
# Backup local configuration using mackup
#

if [ ! -e "$HOME/.mackup" ]; then
    ln -s "$DOTFILES_DIR/mackup/config" "$HOME/.mackup"
fi
