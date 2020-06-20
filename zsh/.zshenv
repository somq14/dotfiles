# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"

# go
export PATH="$GOPATH/bin:$PATH"

# node
export PATH="$(dirname $(nodenv which yarn)):$PATH"
