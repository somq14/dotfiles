#!/bin/bash

set -eu
cd $(dirname $0)

if [[ $(uname -o) =~ Msys ]]; then
  # cf. https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
  INSTALL_DIR=~/.config/Code/User

  mkdir -p $INSTALL_DIR
  ln -s $(pwd)/settings.json $INSTALL_DIR/settings.json
  ln -s $(pwd)/keybindings.json $INSTALL_DIR/keybindings.json
else
  echo "Warning: vscode configuration must be located on windows. skipped."
fi

extensions=(
  # window を透過する
  "s-nlf-fh.glassit@0.2.4"
  # ワークスペースの切り替え
  "alefragnani.project-manager@12.5.0"
  # エディタで表示中のファイルをエクスプローラでフォーカスする
  "smulyono.reveal@1.2.7"
  # Git Blame を強化する
  "eamodio.gitlens@12.0.4"

  # vim キーバインドの有効化
  "vscodevim.vim@1.22.2"
  # .editorconfig に従いテキストファイルを整形する
  "EditorConfig.EditorConfig@0.16.4",
  # スペルチェッカ (タイポを警告する)
  "streetsidesoftware.code-spell-checker@2.1.7"

  # ファイル整形
  "esbenp.prettier-vscode@9.3.0"
  # markdown のサポート
  "yzhang.markdown-all-in-one@3.4.0"
  # yaml のサポート
  "redhat.vscode-yaml@1.5.1"
  # toml のサポート
  "bungcip.better-toml@0.3.2"
  # env ファイルのサポート
  "mikestead.dotenv@1.0.1"

  # タグ編集を補助する
  "formulahendry.auto-rename-tag@0.1.10"
  # カラーコードをハイライトする
  "naumovs.color-highlight@2.5.0"
  # JavaScript / TypeScript のリント
  "dbaeumer.vscode-eslint@2.2.3"

  # WSL サポート
  "ms-vscode-remote.remote-wsl@0.66.0"
  # devcontainer サポート
  "ms-vscode-remote.remote-containers@0.226.0"
  # docker のサポート
  "ms-azuretools.vscode-docker@1.20.0"
)
for ext in ${extensions[@]}; do
  code --install-extension $ext
done
