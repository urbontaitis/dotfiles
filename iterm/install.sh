#
# iTerm2 shell integration
# https://iterm2.com/documentation-shell-integration.html
#
if is-macos; then
    if [ ! -f "~/.iterm2_shell_integration.zsh" ]; then
        curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
    fi
fi
