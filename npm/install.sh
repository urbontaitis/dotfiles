#!/bin/sh
#
# npm
#
# This installs some of the common dependencies needed (or at least desired)
# using npm.

if command -v npm &> /dev/null
then 
    echo "Merge multiple modules to $DOTFILES_DIR/npm/npmmodules"
    sh $DOTFILES_DIR/bin/combine-files modules $DOTFILES_DIR/npm npmmodules

    npm install -g $(cat $DOTFILES_DIR/npm/npmmodules)
fi
exit 0 