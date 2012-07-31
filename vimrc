syntax on

set nocompatible
set t_Co=256
set number
set history=1000
set undolevels=1000
set selectmode=mouse
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set showmatch "matching parenthesis
set ignorecase "ignore case on search
set smartcase
set hidden "hides buffers instead of closing them
set nowrap
set incsearch "shows search results as you type
set hlsearch
set showcmd "show commands in bottom right corner
set encoding=utf-8

" don't need backup files
set nobackup
set noswapfile

" List Long for tab completion
set wildmenu
set wildmode=list:longest,full

" Folding
set nofoldenable
set foldmethod=syntax

" Window Splitting
set splitbelow

filetype plugin indent on

filetype on

set mouse=a

" Omni Complete
let g:rubycomplete_rails = 1

colorscheme molokai

" Cscope settings
if has ("cscope")
  set cscopetag cscopeverbose
  if has ("quickfix")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs  add
  cnoreabbrev csf cs  find
  cnoreabbrev csk cs  kill
  cnoreabbrev csr cs  reset
  cnoreabbrev css cs  show
  cnoreabbrev csh cs  help

endif

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDShutUp = 1
let g:NERDTreeHijackNetrw = 0
let g:NERDChristmasTree = 1
let g:NERDTreeWinPos = "left"
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeIgnore = ['\.vim$', '\-$','\.git']

map <F2> :NERDTreeToggle<CR>
map <F3> :Ack<space>
set pastetoggle=<F4>
nnoremap <silent> <F5> :TlistToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap ; :

call pathogen#infect()
call pathogen#helptags()
