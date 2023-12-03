
"set stuff

syntax on
filetype plugin indent on
set tabstop=4 softtabstop=4
set shiftwidth=4
"set expandtab " replaces tabs with spaces
"set autoindent
set smartindent
set smarttab
set relativenumber number
set noerrorbells "no error sound effects
set smartcase
set incsearch
set splitbelow splitright 
"set background=dark
"set clipboard=unamedplus
set cursorline
set title
set wildmenu "shows a more advanced menu for auto-completion suggestions.
"set completeopt "modifies the auto-complete menu to behave more like an IDE



"Set indent
set linebreak
set showbreak=>>
set breakindent
set breakindentopt=shift:2

"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir " Directory needs to be manually created
"set undofile


set mouse=a

" powerline
" set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim
" set laststatus=2
" set t_Co=256


" Plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"# Plugin Manager: vim-plug
"Installation sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('~/.config/nvim/Plugins')

"Navigation Plugins
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'Townk/vim-autoclose'

Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install'}
Plug 'tc50cal/vim-terminal'

Plug 'preservim/tagbar'
Plug 'voldikss/vim-floaterm'
" Debuggers
Plug 'puremourning/vimspector'

"TO-DO overview
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

"C development stuff
Plug 'deoplete-plugins/deoplete-clang'

"LaTeX / Markdown
Plug 'lervag/vimtex'
Plug 'ixru/nvim-markdown'

" Ocaml stuff
Plug 'scrooloose/syntastic'
Plug 'def-lkb/merlin'

" Style plugins
Plug 'wuelnerdotexe/vim-enfocado'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'

call plug#end()

"# Development settings
"C dev
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

"LaTeX
let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'
let g:livepreview_previewer = 'zathura'
let g:livepreview_use_biber = 1
"let g:vimtex_latexmk_options = '-pdf -shell-escape -file-line-error -synctex=1 -interaction=nonstopmode'
let g:livepreview_engine = '-shell-escape'
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_method = 'latexmk'

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'aux_dir' : '',
    \ 'out_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
	\	'-shell-escape',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

"Ocaml config
set rtp^="/home/patrick/.opam/4.13.1/share/ocp-indent/vim"


"" COC Config
"---------------------------------------------------------------------
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-clangd', 'coc-cmake', 'coc-copilot', 'coc-flutter', 'coc-python', 'coc-ltex', 'coc-sh', 'coc-rust-analyzer', 'coc-texlab'] 


"" Theming options

"augroup my-colors
"	autocmd!
"	autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
"augroup end

"colorscheme gruvbox
"colorscheme delek 
"colorscheme slate

" Make enfocado theme transparent
set background=dark
augroup enfocado_customization
  autocmd!
    autocmd ColorScheme enfocado ++nested highlight Normal ctermbg=NONE guibg=NONE
augroup END

set termguicolors
let g:enfocado_style = 'nature' " Available: `nature` or `neon`.
colorscheme enfocado

" Airline config
"let g:airline_theme='sobrio'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1


"TO-Do config
lua << EOF
  require("todo-comments").setup {
  }
EOF

"Tagbar Settings
"let g:tagbar_ctags_bin

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
tnoremap <Esc> <C-\><C-n>
nmap <F8> :TagbarToggle<CR>

" Vimspector Debugger settings
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

"for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval


" Keybindings:
map E :Explore <Return>
inoremap jj <esc>
map swh :CocCommand clangd.switchSourceHeader <Return>

"Floatterm binds
map T :FloatermToggle <Return>
map tn :FloatermNew <Return>
map tgg :FloatermNext <Return>
map tgT :FloatermPrev <Return>

set rtp^="/home/patrick/.opam/5.1.0/share/ocp-indent/vim"

" Autocomplete keybindings
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

