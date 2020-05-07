" -------------------------
" VUNDLE.VIM REQUIRE CONFIG
" START -------------------
set nocompatible
filetype off
set hidden

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Tools
	Plugin 'VundleVim/Vundle.vim'
"Syntax
	Plugin 'vim-scripts/indentpython.vim'
	Plugin 'nvie/vim-flake8'
	Plugin 'tpope/vim-markdown'
    Plugin 'mattn/emmet-vim'
"Themes
	Plugin 'dracula/vim'
    Plugin 'morhetz/gruvbox'
    Plugin 'joshdick/onedark.vim'

call vundle#end()
" -------------------------
" VUNDLE.VIM REQUIRE CONFIG
" END ---------------------

"General Settings
set encoding=UTF-8
filetype plugin indent on  "Enabling Plugin & Indent
syntax on  "Turning Syntax on
set autoread wildmode=longest,list,full
set backspace=indent,eol,start confirm
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
set hls is ic
set laststatus=2 cmdheight=1
set splitbelow splitright
setlocal foldmethod=indent
set foldlevel=5
set fileformat=unix
set nu relativenumber
set nobackup
set noswapfile
set nowritebackup
set path+=**
set wildmenu
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=e
set clipboard=unnamed

"Status-line
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]
set statusline+=\ %{kite#statusline()}

" config  - plugins
let python_highlight_all=1
let g:kite_auto_complete=1
let g:kite_tab_complete=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

"Key-bindings
let mapleader=" "
map <F2> :Lex!<CR>
map <F3> :source ~/.vimrc<CR>



" Color, font ...
set guifont=Fira\ Code\ 12
set t_Co=256
set background=dark termguicolors cursorline
colorscheme onedark
