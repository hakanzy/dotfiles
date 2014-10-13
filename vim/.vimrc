" Make vim incompatbile to vi.
set nocompatible
set modelines=0
set guioptions-=T " close toolbar
set guioptions-=r " close scroolbar
set mouse=

" Highlight search
set hlsearch

" Temporary Files
set dir=~/.vimtmp
set undodir=~/.vimtmp

" Relative Number
set relativenumber

filetype plugin indent on

" Exclude file types
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" Pathogen
execute pathogen#infect()

" Encoding
set encoding=utf-8

" Font
set guifont=Menlo:h14


" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
" set transparency=5

" TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" CANCELLED ARROWS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" More Common Settings.
syntax on
set nu
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set noshowmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" airline configuration
let g:airline_theme='badwolf'
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#tagbar#enabled = 0

" unicode symbols - airline
let g:airline_symbols = {}
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" Syntastic checker
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['flake8']

" Bufferline
let g:bufferline_rotate = 1
let g:bufferline_fixed_index = -1 "always last

" Format JSON
map <Leader>j !python -m json.tool<CR>

" Map for Bclose
map <Leader>q :Bclose<CR>

" Sneak
let g:sneak#streak = 1

""""" TRICKS """""
" Use jj for escape
inoremap jj <esc>

" Use tab for CtrlP Buffer
nmap <Tab> :CtrlPBuffer<CR>
nmap <Tab><Tab> :CtrlPBufTag<CR>

" Remove any trailing whitespace that is in the file
nnoremap <silent> <C-k> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
