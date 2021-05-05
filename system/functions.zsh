
# Open man page as PDF

manpdf() {
    man -t "$1" | open -f -a "Preview"
}

# Create a new directory and enter it

mk() {
    mkdir -p "$@" && cd "$@"
}

# Fuzzy find file/dir

ff() { find . -type f -iname "*$1*";}
fd() { find . -type d -iname "*$1*";}
