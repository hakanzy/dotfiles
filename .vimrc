" Make vim incompatbile to vi.
set nocompatible
set modelines=0

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
set transparency=5

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
let g:airline#extensions#virtualenv#enabled = 1
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

" Sneak
let g:sneak#streak = 1
