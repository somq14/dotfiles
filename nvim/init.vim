let s:CONFIG_DIR = expand('~/.config/nvim')
let s:LOCAL_DIR = expand('~/.local/share/nvim')

"-------------------------------------------------------------------------------

let s:DEIN_DIR = expand('~/.cache/dein')
let s:DEIN_INSTALL_DIR = s:DEIN_DIR . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:DEIN_INSTALL_DIR)
  let s:dein_repo_url = 'https://github.com/Shougo/dein.vim' . ' '
  call system('git clone ' . s:dein_repo_url . s:DEIN_INSTALL_DIR)
endif

if &compatible
  set nocompatible
endif

let &runtimepath .= ',' . s:DEIN_INSTALL_DIR

if dein#load_state(s:DEIN_DIR)
  call dein#begin(s:DEIN_DIR)

  call dein#add(s:DEIN_INSTALL_DIR)
  call dein#load_toml(s:CONFIG_DIR . '/plugins.toml')
  call dein#load_toml(s:CONFIG_DIR . '/lazy_plugins.toml', { 'lazy': '1' })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

"-------------------------------------------------------------------------------

let s:BACKUP_DIR = s:LOCAL_DIR . '/backup'
let s:SWAP_DIR = s:LOCAL_DIR . '/swap'

if !isdirectory(s:BACKUP_DIR)
  call system('mkdir -p ' . s:BACKUP_DIR)
endif

if !isdirectory(s:SWAP_DIR)
  call system('mkdir -p ' . s:SWAP_DIR)
endif

set backup
let &backupdir = s:BACKUP_DIR
set swapfile
let &directory = s:SWAP_DIR

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932

set number
set cursorline
set list
set listchars=tab:<-,trail:_

set autoindent
set smartindent
set scrolloff=4

let s:INDENT_WIDTH = 2
set expandtab
let &tabstop     = s:INDENT_WIDTH
let &softtabstop = s:INDENT_WIDTH
let &shiftwidth  = s:INDENT_WIDTH

"-------------------------------------------------------------------------------

exec 'source ' . s:CONFIG_DIR . '/keymap.vim'

