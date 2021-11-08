

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
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ying17zi/vim-live-latex-preview', { 'for': 'tex' }
Plug 'junegunn/goyo.vim'
Plug 'Townk/vim-autoclose'
"Plug 'yegappan/taglist'
"Plug 'suoto/vim-hdl'
Plug 'preservim/nerdtree'

" Ocaml stuff
Plug 'scrooloose/syntastic'
Plug 'def-lkb/merlin'
call plug#end()

let g:tex_flavor = 'latex'
"let g:livepreview_previewer = 'zathura'
"let g:livepreview_use_biber = 1
"let g:livepreview_engine = ' -shell-escape'

set background=dark

augroup my-colors
	autocmd!
	autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
augroup end

"colorscheme gruvbox
colorscheme delek 

" File Explorer settings
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4 " 1: new horizontal split; 2: new vertical
"split; 3: new tab; 4: previous window
"let g:netrw_altv = 1
"augroup ProjectDrawer
"  autocmd!
"autocmd VimEnter * :Vexplore
"augroup END


" NERD Tree settings

"Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
			\ quit | endif


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Keybindings:
map E :Explore <Return>
inoremap jj <esc>

set rtp^="/home/patrick/.opam/4.13.1/share/ocp-indent/vim"
