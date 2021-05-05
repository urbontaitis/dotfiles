# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM=$HOME/.config/custom-oh-my-zsh

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins+=(    
    fast-syntax-highlighting
    history-substring-search
    mvn    
    )

# zsh-history-substring-search should be adter syntax-highlighting:
# https://github.com/zsh-users/zsh-history-substring-search#usage
source $ZSH_CUSTOM/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh  
source $ZSH_CUSTOM/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/plugins/git-aliases.zsh/git-aliases.plugin.zsh