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

command! Bd :bp | bd # "Close buffer without closing window
"folding code
" Default for all files
set foldmethod=indent

" Override for specific filetypes
autocmd FileType vim set foldmethod=marker
autocmd FileType c,cpp set foldmethod=syntax
autocmd FileType markdown set foldmethod=manual

"wild menu with :e enabled
set wildmenu "Enable enhanced tab autocomplete.
set wildmode=list:longest,full "Shows list with longest starting prefix

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Prevent NERDTree from replacing Netwr
let NERDTreeHijackNetrw=0
set number "Enable line numbering.
set hlsearch "Enable highlight for matching search patterns.
set incsearch "Move cursor to matching pattern

"Add minpac plugins manager
packadd minpac "load minpac
call minpac#init() "Initialise minpac

" Install plugins
"Add minpac plugins manager
packadd minpac
call minpac#init()

"my plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('mileszs/ack.vim')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('preservim/nerdtree')
call minpac#add('easymotion/vim-easymotion')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('wakatime/vim-wakatime')
call minpac#add('907th/vim-auto-save')
"Minpac update and clean alternate commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"Plugin 'wakatime/vim-wakatime'

"Set persistent undo history
set undofile
let my_undo_dir = expand('~/.vim/undodir')
if !isdirectory(my_undo_dir)
    call mkdir(my_undo_dir, "p")
endif
set undodir=$HOME/.vim/my_undo_dir
    
"enable auto save
" .vimrc
let g:auto_save = 1  " enable AutoSave on Vim startup
