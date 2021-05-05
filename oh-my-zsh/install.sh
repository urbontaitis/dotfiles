#!/bin/sh
if ! [ -d $HOME/.oh-my-zsh/.git ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  if [ -f $HOME/.zshrc.pre-oh-my-zsh ]; then
    echo "Rollbacking dotfiles .zshrc symlink"
    mv $HOME/.zshrc $HOME/.zshrc.oh-my-zsh-configuration
    mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
  fi
fi

ZSH_CUSTOM_PLUGINS="$ZSH_CUSTOM/plugins"
ZSH_CUSTOM_THEMES="$ZSH_CUSTOM/themes"

if ! [ -d $ZSH_CUSTOM ]; then
  echo "Creating $ZSH_CUSTOM directory"
  mkdir -p $ZSH_CUSTOM_PLUGINS && mkdir $ZSH_CUSTOM_THEMES
fi

zsh_plugins=($(cut -d '=' -f1 $DOTFILES_DIR/oh-my-zsh/zshplugins))

for zsh_plugin in "${zsh_plugins[@]}"; do
  basename=$(basename "$zsh_plugin")
  if ! [ -d "$ZSH_CUSTOM_PLUGINS/$basename" ]; then
    git clone --depth 1 "$zsh_plugin" "$ZSH_CUSTOM_PLUGINS/$basename"
  else
    cd "$ZSH_CUSTOM_PLUGINS/$basename" && git pull --rebase
  fi
done
