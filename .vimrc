" Ryan's vimrc
set background=dark
set colorcolumn=80,100,120
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set t_Co=256
syntax on
set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set wildignorecase
set wildmode=longest,list
set wildmenu
set splitright
set splitbelow
highlight ColorColumn ctermbg=darkgray
noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>
set hlsearch
hi Search term=bold cterm=reverse ctermbg=7
set laststatus=2
set statusline=%f%m%r%h%w\ [%Y]\ [0x%02.2B]%<\ %F%=%4v,%4l\ %3p%%\ of\ %L
colorscheme slate
set path+=**
nnoremap <silent> <C-l> :nohl<CR><C-l>
set backspace=indent,eol,start
set formatoptions+=r
set incsearch
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\t/    /ge
