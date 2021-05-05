alias git-all-branches='for dir in ./*; do (if test -d "$dir/.git";
then cd "$dir" && echo "\033[0;34m ${PWD##*/} - \033[1;34m$(git symbolic-ref --short HEAD) \033[0m"; fi); done'

alias git-log='git log --oneline --decorate --all --graph'

alias git-log-messages='git log --pretty=oneline --abbrev-commit'

alias git-pull-all-changes='for dir in ./*; do (if test -d "$dir/.git"; then echo "Updating $dir" && cd "$dir" && git pull; fi); done'

alias fetch='git fetch -p -P --all --progress'
