" This is "init.vim" file!
" Allo, Erikria!

set autoindent
set autoread
set breakindent
set cindent
set confirm
set encoding=utf-8
set fileformat=unix
set hlsearch
set incsearch
set linebreak
set list lcs=tab:¦\ |
set magic
set mouse=a
set noexpandtab
set nofoldenable
set number
set report=0
set ruler
set shiftwidth=4
set showcmd
set showmode
set showmatch
set smarttab
set smartindent
set softtabstop=4
set statusline=[%Y]\ [%<%F]%=\ [%M%W%R%H]\ [%P]\ [%B]\ [%l,%c,%L]
set tabstop=4
set termguicolors
set wrap

if getfsize(expand(@%)) > 4194304
	set noswapfile
endif

let $vi = '~/.config/nvim'

"For Original Vim
"set backspace=indent,eol,start
"set nocompatible
"colorscheme desert

colorscheme default
syntax enable
filetype plugin on
filetype indent on
