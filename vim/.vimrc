set nocompatible
filetype off

let $PATH = $PATH . ':' . expand("~/.local/bin")

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'bling/vim-airline'
Plugin 'simeji/winresizer'

" base
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'

" front
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'leafgarland/typescript-vim'

" rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" golang
Plugin 'fatih/vim-go'



call vundle#end()
syntax on
filetype on
filetype plugin indent on

colorscheme sunrise

set history=500
set backspace=eol,start,indent
set wildmenu
set cursorline
set hidden
set nofoldenable
set encoding=utf-8
set nowrap
set number
set hlsearch
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set t_Co=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set exrc
set secure

let g:typescript_indent_disable = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:jsx_ext_required = 1
let g:vim_json_syntax_conceal = 1
let g:easytags_async = 1
let g:syntastic_javascript_checkers = ['eslint']

let mapleader=","

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags

" Off hotkeys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <BS> <nop>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

let NERDTreeShowHidden=1

nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>

vmap <Leader>y :w! ~/.vbuf<CR>
nmap <Leader>y :.w! ~/.vbuf<CR>
nmap <Leader>p :r ~/.vbuf<CR>
