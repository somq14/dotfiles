# bash 関連ファイルを保存するディレクトリを作成
mkdir -p ~/.bash

# タイムゾーンを日本にする
export TZ='JST-9'

# コマンド履歴の保存先を設定
export HISTFILE=~/.bash/.bash_history
# コマンド履歴の保存数を増やす（バッファサイズ）
export HISTSIZE=10000
# コマンド履歴の保存数を増やす（ファイルサイズ）
export HISTFILESIZE=10000
# コマンド履歴の保存時は上書きではなく追記する
shopt -s histappend
# コマンド実行のたびに履歴をファイルと同期する
export PROMPT_COMMAND='history -a; history -n'

# Git の補完を有効化
if [ ! -e ~/.bash/git-completion.bash ]; then
  curl --silent https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.bash/git-completion.bash
fi
source ~/.bash/git-completion.bash

# Git のプロンプト表示を有効化
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
