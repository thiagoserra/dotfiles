" Thiago Serra Ferreira de Carvalho
" thiagoserra.github.io
" -------------------------------------
" .vimrc -> windows
" -------------------------------------

call plug#begin('c:\users\c073835\.vim\plugged')
"Tools
Plug 'davidhalter/jedi-vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'ctrlpvim/ctrlp.vim'
"Syntax
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'maralla/completor.vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Themes
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
call plug#end()

" General Settings
set encoding=utf-8
filetype plugin indent on
syntax on
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
set clipboard=unnamedplus
set splitbelow
set splitright

" Status-line
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

" config  - plugins
let python_highlight_all=1

let g:livepreview_previewer = 'sumatrapdf'

"let g:mkdp_auto_close=0
"let g:mkdp_refresh_slow=1
let g:mkdp_browser = 'Google Chrome'

let g:vim_markdown_folding_disabled = 1
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pdf  " Windows
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
let g:ctrlp_working_path_mode = 'ra'


" funcoes personalizadas
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
autocmd Filetype tex setl updatetime=1

au BufNewFile,BufRead *.py
            \ set tabstop=4
            \ set softtabstop=4
            \ set shiftwidth=4
            \ set textwidth=79
            \ set expandtab
            \ set autoindent
            \ set fileformat=unix

" Key-bindings
let mapleader=" "
map <F3> :source C:\users\c073835\_vimrc<CR>
map <F5> :LLPStartPreview<CR>
map <C-m> :MarkdownPreview<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Color, font ...
set guifont=Fira\ Code:h12
set t_Co=256
set background=dark termguicolors cursorline
colorscheme dracula

" tamanho da janela inicial
 if has("gui_running")
  set lines=70 columns=120
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=110
  endif
endif
