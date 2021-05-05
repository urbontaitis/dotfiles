# Custom Configuration

What it is inside this folder it will be not synced to source control.

# Supported files

- `Brewfile` - homebrew packages
  ```
  brew "github-release"
  brew "lolcat"  
  ```
  `Caskfile` - homebrew pacakges specific for MacOS
  ```
  cask "spotify"  
  ```
- `modules` - npm modules listed in each line example:
  ```
  npm-check-updates
  @vue/cli
  ```
- `code-extensions` - Visual Studio Code extensions list which you get by executing `code --list-extensions`
  ```
  vscodevim.vim
  waderyan.gitblam
  ```
- and others like `_.zsh`, `path.zsh`, `complettion.zsh`, `install.sh`, `_.symlink` see description in the main [Readme](../README.MD)
