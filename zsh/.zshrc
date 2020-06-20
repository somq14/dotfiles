# alias
alias sl=ls
alias ls='ls --color=auto'

# hitory
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000
setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

setopt prompt_subst
PROMPT='%B%F{cyan}%n@%m%f:%F{white}%~ ${vcs_info_msg_0_}
%# %f%b'

# peco
function peco-history() {
  TARGET=$(history -n 1 | tac | peco --prompt 'history>')
  if [ $? -ne 0 ]; then
    return
  fi
  BUFFER=$TARGET
  CURSOR=$#TARGET
  zle reset-prompt
}
zle -N peco-history
bindkey '^R' peco-history

# direnv
eval "$(direnv hook zsh)"
