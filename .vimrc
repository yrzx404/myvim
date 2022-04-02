set number
set cursorline
set cursorcolumn
set laststatus=2
set hlsearch
set nowrap
syntax enable
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
map <silent> <F11> :call ToggleFullscreen()<CR>
autocmd BufWritePost $HOME/.vimrc source $HOME/.vimrc

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

set incsearch
set ignorecase
set nocompatible
set backspace=indent,eol,start
set wildmenu

set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1

set background=dark
colorscheme molokai

let mapleader=";"
nmap LF 0
nmap LE $
nmap HF gg
nmap HE G

vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>


autocmd BufNewFile * normal G






















