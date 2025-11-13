texplate() {
    template="$HOME/Templates/Latex/$1"
    dest="$2"
    mkdir -p "$dest"
    cp -r "$template/"* "$dest"
}
