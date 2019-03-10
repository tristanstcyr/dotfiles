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

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Useful git integration
Plugin 'tpope/vim-fugitive'
" Fancy status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Give markers in gutter
Plugin 'airblade/vim-gitgutter'
" File browser
Plugin 'scrooloose/nerdtree'
" Git status in NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Syntax checkin
Plugin 'vim-syntastic/syntastic'
" Search Replace line preview
Plugin 'osyo-manga/vim-over'
" Commands for moving lines around
Plugin 'matze/vim-move'
" Fuzzy Finder for files and buffers
Plugin 'ctrlpvim/ctrlp.vim'
" Colors
Plugin 'nanotech/jellybeans.vim'
" Javascript
Plugin 'maksimr/vim-jsbeautify'
" Better syntax highlighting
Plugin 'sheerun/vim-polyglot'
" Kill buffers without closing windows
Plugin 'qpkorr/vim-bufkill'
" tmux focus events
Plugin 'tmux-plugins/vim-tmux-focus-events'
" Comment out code
Plugin 'scrooloose/nerdcommenter'
" Delete all buffers except current
Plugin 'vim-scripts/BufOnly.vim'
" Search across files
Plugin 'mileszs/ack.vim'
" Add marks to gutter
Plugin 'kshenoy/vim-signature'
" Tmux pane navigation integration
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vimwiki/vimwiki'
Plugin 'leafgarland/typescript-vim'
call vundle#end()

" Basic
set enc=utf-8
set autoindent
set tabstop=2
set shiftwidth=2
syntax on
set nowrap
set nofoldenable
set backspace=2
set mouse=a
set visualbell t_vb=
set scrolloff=4
set textwidth=120
set noshowmode
set clipboard^=unnamed
set wildmenu
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

" Editing $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

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
autocmd FileType javascript nnoremap <buffer> = :call JsBeautify()<CR>
autocmd FileType javascript nnoremap <buffer> <leader>r :!npm start<CR>

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

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
" Disable automatic checking
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <leader>m :SyntasticCheck<CR>
nnoremap { :lnext<CR>
nnoremap } :lprev<CR>
nnoremap <leader>e :lclose<CR>
let g:syntastic_javascript_checkers = ['jshint']

let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_auto_trigger = 0
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

" Vim-move
let g:move_key_modifier = 'C'

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

set secure
