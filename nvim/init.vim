" set nocompatible
" filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-airline'
Plugin 'simeji/winresizer'
Plugin 'scrooloose/syntastic'

Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'szw/vim-tags'

Plugin 'fatih/vim-go'
Plugin 'sebdah/vim-delve'
Plugin 'shougo/vimproc'
Plugin 'shougo/vimshell'


call vundle#end()
syntax on
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

set exrc
set secure
let g:vim_tags_auto_generate = 1

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

let g:go_fmt_command = "goimports"

let NERDTreeShowHidden=1

" Отключение стрелочек
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <BS> <nop>

set listchars=tab:▸\ ,eol:¬
set list!

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_altv = 1
let g:netrw_winsize = 25


nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>

vmap <Leader>y :w! ~/.vbuf<CR>
nmap <Leader>y :.w! ~/.vbuf<CR>
nmap <Leader>p :r ~/.vbuf<CR>

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

let g:go_def_mode = 'godef'
