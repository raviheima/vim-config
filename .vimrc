"My Vim config 
"Author: raviheima

syntax on "enable syntax highlighting

filetype plugin indent on "enable file type based options

set nocompatible "dont run in backwards compatible mode

set autoindent "Respect indentation when starting a new line.

set expandtab "Expands tabs to spaces.

set tabstop=4 " Number of spaces tab use

set shiftwidth=4 "Number of spaces to for autoindent

set backspace=2 "Fix backspace behavior on most terminals.

colorscheme murphy "Change a colorscheme

set directory=$HOME/.vim/swap// "Directory for storing swap file

silent! helptags All "Load helpfiles for each plugins (documentation).

