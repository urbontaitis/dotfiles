# exa overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install exa`
if $(exa &>/dev/null); then
  alias ls="exa -F"
  alias l="exa -la"
fi

alias please='sudo'

alias cls='clear' # Good 'ol Clear Screen command

# use neovim instead of vim
test -f /usr/local/bin/nvim && alias vim='nvim'

# RANDOM STUFF
alias weather='curl http://wttr.in/Vilnius'

alias tree='tree -a -I ".svn|.git|.hg|.idea"'
alias tree2='tree -L 2'
alias tree3='tree -L 3'

# MacOS specific
if test "$(uname)" = "Darwin"; then
  alias -s {pdf,PDF}='open'
  alias -s {jpg,JPG,jpeg,JPEG,png,PNG}='open'
  alias -s {ods,ODS,odt,ODT,odp,ODP,doc,DOC,docx,DOCX,xls,XLS,xlsx,XLSX,xlsm,XLSM,ppt,PPT,pptx,PPTX,csv,CSV}}='open'
  alias -s {html,HTML}='open'
else
  # Linux
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
  alias open='nautilus'

  alias -s {pdf,PDF}='okular'
  alias -s {jpg,JPG,jpeg,JPEG,png,PNG}='gwenview'
  alias -s {ods,ODS,odt,ODT,odp,ODP,doc,DOC,docx,DOCX,xls,XLS,xlsx,XLSX,xlsm,XLSM,ppt,PPT,pptx,PPTX,csv,CSV}}='libreoffice'
  alias -s {html,HTML}='firefox'
fi

alias -s {mp4,MP4,mov,MOV,mkv,MKV,avi,AVI}='vlc'
alias -s {zip,ZIP,war,WAR}="unzip -l"
alias -s {jar,JAR}="java -jar"
alias -s gz="tar -tf"
alias -s {tgz,TGZ}="tar -tf"
