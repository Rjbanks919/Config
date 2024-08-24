" Ryan's .vimrc

colorscheme default

" My preferred ruler settings
set colorcolumn=80,100,120

" UTF8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Disable Vi compatibility
set nocompatible

" Use indent from previous line
set autoindent

" Use intelligent C indentation
set smartindent

" Configure tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Disable word wrapping
set nowrap

" Enable syntax highlighting
set t_Co=256
syntax on

" Enable line numbers
set number

" Highlight matching braces
set showmatch

" Auto continue Doxy comments
set comments=sl:/*,mb:\ *,elx:\ */

" Wildcard setup for opening files with find
set wildignorecase
set wildmode=longest,list
set wildmenu

" Focus on right side when splitting
set splitright
set splitbelow

" Enable cursor line
set cursorline

" Highlight searches
set hlsearch

" Add everything lower to path
set path+=**

" Ctrl+l clears highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Make backspace actually work
set backspace=indent,eol,start

" Autobuild multiline comments
set formatoptions+=r

" Auto-do searches
set incsearch

" Strip whitespace on save
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\t/    /ge

" Fix the stupid weird extra chars from TMux
set keyprotocol=
let &term=&term

" NERDTree stuff...

" FZF stuff...
