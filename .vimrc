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

silent! helptags ALL "Load helpfiles for each plugins (documentation).

" Generate help tags for installed plugins
if isdirectory($HOME . "/.vim/pack/plugins/start/vim-unimpaired/doc")
  silent! execute 'helptags ' . $HOME . '/.vim/pack/plugins/start/vim-unimpaired/doc'
endif


"split window switch mapping

noremap <c-h> <c-w><c-h> | "left mapping to ctrl h
noremap <c-l> <c-w><c-l> |"right mapping to ctrl l
noremap <c-k> <c-w><c-k> |"top mapping to ctrl k
noremap <c-j> <c-w><c-j> |"bottom mapping to ctrl b


