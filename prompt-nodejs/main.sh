
NPM_PACKAGES="~/.npm-packages/"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
ORIGINAL_PATH=$PATH

function build_node_path {
    export PATH=$(npm bin):$ORIGINAL_PATH
}

