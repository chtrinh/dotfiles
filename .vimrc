" Turn on syntax highlighting
syntax on

set nocompatible
set t_Co=256
set number
set history=1000
set undolevels=1000
set selectmode=mouse
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set showmatch "matching parenthesis
set ignorecase "ignore case on search
set hidden " hides buffers instead of closing them
set nowrap
set incsearch "shows search results as you type
set hlsearch

" don't need backup files
set nobackup
set noswapfile

set pastetoggle=<F3>

" List Long for tab completion
set wildmenu
set wildmode=list:longest,full
"
"" Mouse hotness in console
if has("mouse")
  set mouse=a
endif
"
" Omni Complete
let g:rubycomplete_rails = 1
"
" Set the GUI Font
if has("gui")
  set guifont=ProggySmall:h11
  colorscheme vividchalk
else
  colorscheme vividchalk
endif

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

  "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMRC/src
endif
"           
"Nerd Core
"            
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDShutUp = 1
let g:NERDTreeHijackNetrw = 0
let g:NERDChristmasTree = 1
let g:NERDTreeWinPos = "left"
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeIgnore = ['\.vim$', '\-$','\.git']

" Key Mappings
map <C-j> <C-W><Down>
map <C-k> <C-W><Up>
map <C-h> <C-W><Left>
map <C-l> <C-W><Right>

map <C-x><C-k> :enew<bar>bd #<CR>
map <C-x><C-n> :NERDTree<CR>
map <C-x><C-t> :NERDTreeToggle<CR>

nnoremap ; :

" Folding
set nofoldenable
set foldmethod=syntax
"set foldmethod=indent

" Window Splitting
set splitbelow

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Pathogen
call pathogen#infect()
