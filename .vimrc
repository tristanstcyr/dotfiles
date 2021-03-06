""      ___           ___                       ___           ___           ___           ___           ___
""     /\  \         /\  \          ___        /\  \         /\  \         /\  \         /\__\         /\  \
""     \:\  \       /::\  \        /\  \      /::\  \        \:\  \       /::\  \       /::|  |       /::\  \
""      \:\  \     /:/\:\  \       \:\  \    /:/\ \  \        \:\  \     /:/\:\  \     /:|:|  |      /:/\ \  \
""      /::\  \   /::\~\:\  \      /::\__\  _\:\~\ \  \       /::\  \   /::\~\:\  \   /:/|:|  |__   _\:\~\ \  \
""     /:/\:\__\ /:/\:\ \:\__\  __/:/\/__/ /\ \:\ \ \__\     /:/\:\__\ /:/\:\ \:\__\ /:/ |:| /\__\ /\ \:\ \ \__\
""    /:/  \/__/ \/_|::\/:/  / /\/:/  /    \:\ \:\ \/__/    /:/  \/__/ \/__\:\/:/  / \/__|:|/:/  / \:\ \:\ \/__/
""   /:/  /         |:|::/  /  \::/__/      \:\ \:\__\     /:/  /           \::/  /      |:/:/  /   \:\ \:\__\
""   \/__/          |:|\/__/    \:\__\       \:\/:/  /     \/__/            /:/  /       |::/  /     \:\/:/  /
""                  |:|  |       \/__/        \::/  /                      /:/  /        /:/  /       \::/  /
""                   \|__|                     \/__/                       \/__/         \/__/         \/__/
""      ___                       ___           ___           ___
""     /\__\          ___        /\__\         /\  \         /\  \
""    /:/  /         /\  \      /::|  |       /::\  \       /::\  \
""   /:/  /          \:\  \    /:|:|  |      /:/\:\  \     /:/\:\  \
""  /:/__/  ___      /::\__\  /:/|:|__|__   /::\~\:\  \   /:/  \:\  \
""  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ /:/\:\ \:\__\ /:/__/ \:\__\
""  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / \/_|::\/:/  / \:\  \  \/__/
""  |:|__/:/  /  \::/__/           /:/  /     |:|::/  /   \:\  \
""   \::::/__/    \:\__\          /:/  /      |:|\/__/     \:\  \
""    ~~~~         \/__/         /:/  /       |:|  |        \:\__\
""                               \/__/         \|__|         \/__/

set nocompatible

call plug#begin('~/.vim/plugged')
" Useful git integration
Plug 'tpope/vim-fugitive'
" Fancy status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Give markers in gutter
Plug 'airblade/vim-gitgutter'
" File browser
Plug 'scrooloose/nerdtree'
" Git status in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Search Replace line preview
Plug 'osyo-manga/vim-over'
" Fuzzy Finder for files and buffers
Plug 'ctrlpvim/ctrlp.vim'
" Colors
Plug 'nanotech/jellybeans.vim'
" Better syntax highlighting
"Plug 'sheerun/vim-polyglot'
" Kill buffers without closing windows
Plug 'qpkorr/vim-bufkill'
" tmux focus events
Plug 'tmux-plugins/vim-tmux-focus-events'
" Comment out code
Plug 'scrooloose/nerdcommenter'
" Delete all buffers except current
Plug 'vim-scripts/BufOnly.vim'
" Search across files
Plug 'mileszs/ack.vim'
" Add marks to gutter
Plug 'kshenoy/vim-signature'
" Tmux pane navigation integration
Plug 'christoomey/vim-tmux-navigator'
" Auto-completion
Plug 'Valloric/YouCompleteMe'
" Personal wiki in vim
Plug 'vimwiki/vimwiki'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Basic
set enc=utf-8
set autoindent
set tabstop=2
set shiftwidth=2
syntax on
set nowrap
"set nofoldenable
"set foldmethod=syntax
"set foldlevel=99
set backspace=2
set mouse=a
set visualbell t_vb=
set scrolloff=4
set textwidth=120
set noshowmode
set clipboard^=unnamed

" Improved command line completion
set wildmenu
set wildmode=longest:full,full
set wildignorecase

set autoread
set hidden
set smarttab
set backspace=indent,eol,start
set number
set shortmess=I
set noesckeys
set textwidth=0
set whichwrap+=<,>,h,l,[,]

" Disable swap files and backups
set noswapfile
set nobackup
set nowb

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Color column
set colorcolumn+=120

"Search
noremap <F3> :set hlsearch!<CR>
set ignorecase
set incsearch       " Move to first match while typing
set wrapscan
set hlsearch
set showmatch

" Indenting
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" NERDTree
noremap <leader>ft :NERDTreeToggle<CR>
noremap <leader>fo :NERDTree<CR>
noremap <leader>ff :NERDTree<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"
" Editing $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"
" Other Shortcuts
nnoremap { }
nnoremap } {
nnoremap <leader>ss :mks! Session.vim<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>qq :qall!<CR>
noremap <C-S> :
set pastetoggle=<F12>
nnoremap ; :
nnoremap<leader>h :set list!<CR>

autocmd FileType json nnoremap <buffer> = :%!python -m json.tool<CR>

" Color
color jellybeans
set ttyfast
set lazyredraw
set synmaxcol=300

nnoremap > :vertical resize +5<CR>
nnoremap < :vertical resize -5<CR>
nnoremap + :res +5<CR>
nnoremap - :res -5<CR>

" Open splits below and to the right
set splitbelow
set splitright

" Git Gutter
nnoremap <leader>gg :GitGutterSignsToggle<CR>

" YCM
let g:ycm_show_diagnostics_ui = 1
"let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_auto_trigger = ''
let g:ycm_auto_hover = ''

nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>rr :YcmCompleter RefactorRename 
nnoremap <leader>tc :call ToggleDiagnosticsUI()<cr>

function ToggleDiagnosticsUI()
	if g:ycm_show_diagnostics_ui
		let g:ycm_show_diagnostics_ui = 0
		echo "off"
	else
		let g:ycm_show_diagnostics_ui = 1
		echo "on"
	endif
endfunction

" Fuzzy finder
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" eyaml is yaml
au BufRead,BufNewFile *.eyaml set filetype=yaml

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_mode_map = {
	\ '__' : '-',
	\ 'n'  : 'N',
	\ 'i'  : 'I',
	\ 'R'  : 'R',
	\ 'c'  : 'C',
	\ 'v'  : 'V',
	\ 'V'  : 'V',
	\ '' : 'V',
	\ 's'  : 'S',
	\ 'S'  : 'S',
	\ '' : 'S',
	\ }
set laststatus=2

" BufKill
nnoremap <leader>bd :BD<CR>
nnoremap <leader>bo :BufOnly<CR>

" NERDCommenter
let g:NERDDefaultAlign = 'left'

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Rust
autocmd FileType rust setlocal ts=2 sts=2 sw=2 expandtab
let g:ycm_rust_src_path = '~/repos/rust_src/src'

" Wiki
let wiki = {}
" Nested syntaxes need to be manually enabled
let wiki.nested_syntaxes = {
	\'typescript': 'typescript',
	\'javascript': 'javascript',
	\'java': 'java'
\}
" Use markdown
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]

set secure
