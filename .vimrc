

" set stuff

syntax on
filetype plugin indent on
set tabstop=4 softtabstop=4
set shiftwidth=4
"set expandtab " replaces tabs with spaces
"set autoindent
set smartindent
set relativenumber number
set noerrorbells "no error sound effects
set smartcase
set incsearch

"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir " Directory needs to be manually created
"set undofile


set mouse=a

" powerline
" set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim
" set laststatus=2
" set t_Co=256

" colorscheme slate

" Plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe' "go to ~/.vim/plugged/YouCompleteMe and execute ./install.py 
"Plug 'mbblill/undotree'
"Plug 'kien/ctrlp.vim'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'junegunn/goyo.vim'

call plug#end()

let g:tex_flavor = 'latex'


"colorscheme gruvbox
set background=dark

augroup my-colors
	autocmd!
	autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
augroup end

colorscheme gruvbox
