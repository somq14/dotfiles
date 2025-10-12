# タイムゾーンを日本にする
export TZ='JST-9'

# コマンド履歴の保存先を設定
mkdir -p ~/.bash
export HISTFILE=~/.bash/.bash_history

# コマンド履歴の保存件数を設定
export HISTSIZE=10000
export HISTFILESIZE=100000

# コマンド履歴は重複を除去し、空白から始まるコマンドは記録しない
export HISTCONTROL=ignoreboth

# コマンド実行のたびに履歴をファイルと同期する
share_history(){
  history -a # ファイルに履歴を書き出す
  history -c # メモリ上に保持している履歴をクリア
  history -r # ファイルから履歴を読み出す
}
export PROMPT_COMMAND='share_history'

# Git の補完を有効化
if [ ! -e ~/.bash/git-completion.bash ]; then
  curl --silent https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.bash/git-completion.bash
fi
source ~/.bash/git-completion.bash

# プロンプトの設定
if [ ! -e ~/.bash/git-prompt.sh ]; then
  curl --silent https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.bash/git-prompt.sh
fi
source ~/.bash/git-prompt.sh

# プロンプトを設定
export PS1='\[\e[1;34m\]\u@\h:\[\e[1;32m\]\w\[\e[1;37m\]$(__git_ps1)\012\[\e[1;37m\]\$\[\e[m\] '

# ls, grep, less をカラフルにする
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias less='less -R'

# ファイル削除前に確認する
alias rm='rm -i'
