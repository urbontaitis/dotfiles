# Init hammerspoon configuration
# Config is taken from https://github.com/webpro/dotfiles/tree/master/config/hammerspoon

if is-macos; then
    echo "Installing hammerspoon configuration"

    defaults write org.hammerspoon.Hammerspoon MJConfigFile "$DOTFILES_DIR/hammerspoon/init.lua"
fi
