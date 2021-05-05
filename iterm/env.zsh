if test "$(uname)" = "Darwin"
  then        
    if [ ! -f "~/.iterm2_shell_integration.zsh" ]; then
        source ~/.iterm2_shell_integration.zsh
    else
        echo "iterm2 shell integration is not installed yet"
    fi
fi