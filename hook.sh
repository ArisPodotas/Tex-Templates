texplate() {
    function liner() {
        echo "Usage: texplate.sh [OPTIONS]"
        echo "Options:"
        echo "  -h, --help     Display this help message"
        echo "  --version      Show the script version"
        echo "  article [DIR]  Generate an article style document inside DIR (will make dir if it does not exist)"
        echo "  homework [DIR] Generate a homework style document inside DIR (will make dir if it does not exist)"
    }
    # Check if no arguments are provided
    if [ "$#" -eq 0 ]; then
        liner
        return 1
    fi
    while [[ "$1" != "" ]]; do
        case $1 in
            -h ) liner
                return 0
                ;;
            --help )
                liner
                return 0
                ;;
            --version )
                echo "Script Version 1.0"
                return 0
                ;;
            article | homework)
                template="$HOME/Templates/Latex/$1"
                dest="$2"
                mkdir -p "$dest"
                cp -r "$template/"* "$dest"
                return 0
                ;;
            * )
                echo "Invalid option: $1"
                liner
                return 1
        esac
        shift
    done
}

alias texplates=texplate
