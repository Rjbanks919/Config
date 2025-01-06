" Ryan's .vimrc

colorscheme koehler

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

" Vim-Plug Config ------------------------------------------------------------

" Ensure Vim-Plug is installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Callout plugins to install
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" NERDTree Config ------------------------------------------------------------

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
