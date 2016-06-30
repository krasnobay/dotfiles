set nocompatible
filetype off

let $PATH = $PATH . ':' . expand("~/.local/bin")

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

call vundle#end()
syntax on
au BufRead,BufNewFile *.graph set filetype=graph
filetype on
filetype plugin indent on

colorscheme Tomorrow-Night-Eighties

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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:jsx_ext_required = 1
let g:vim_json_syntax_conceal = 1
let g:easytags_async = 1
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"
let g:syntastic_javascript_checkers = ['eslint']

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags

let mapleader=","

" Отключение стрелочек
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

nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden=1

nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>
