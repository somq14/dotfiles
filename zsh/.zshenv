# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"

# pyenv
eval "$(pyenv init -)"
export PIPENV_VENV_IN_PROJECT=true

# go
export PATH="$GOPATH/bin:$PATH"

# node
export PATH="$(dirname $(nodenv which yarn)):$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# android stuido
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# homebrew
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
