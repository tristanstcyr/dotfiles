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
" Support for multiple languages
Plugin 'sheerun/vim-polyglot'
" Auto Complete
Plugin 'Valloric/YouCompleteMe'
" Search Replace line preview
Plugin 'osyo-manga/vim-over'
" Commands for moving lines around
Plugin 'matze/vim-move'
" Add closing brace automatically
Plugin 'Raimondi/delimitMate'
" Better go support
Plugin 'fatih/vim-go'
" Fuzzy Finder for files and buffers
Plugin 'ctrlpvim/ctrlp.vim'
" Colors
Plugin 'flazz/vim-colorschemes'
" Javascript
Plugin 'maksimr/vim-jsbeautify'
" Close buffers without changing layout
Plugin 'qpkorr/vim-bufkill'
call vundle#end()

" Basic
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set autoindent
set tabstop=4
set shiftwidth=4
syntax on
set ruler
set nowrap
set nofoldenable
set backspace=2
set mouse=a
set updatetime=250
set visualbell t_vb=
set scrolloff=8
set textwidth=120
set noshowmode
set notimeout
set clipboard^=unnamed
set wildmenu
set wildignorecase
set autoread
set hidden
set nostartofline
set smarttab
set backspace=indent,eol,start
set number
set shortmess=I
set noesckeys
set textwidth=0

" Disable swap files and backups
set noswapfile
set nobackup
set nowb

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Color column
set colorcolumn+=120
hi ColorColumn ctermbg=darkgray

" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap <NUL> <C-X><C-O>
autocmd CompleteDone * pclose
set completeopt-=preview

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

" Color
color jellybeans

nnoremap + :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>

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
nnoremap m :SyntasticCheck<CR>
nnoremap > :lnext<CR>
nnoremap < :lprev<CR>

" GitGutter
let g:gitgutter_sign_column_always = 1

" Vim-move
let g:move_key_modifier = 'C'

" Go
" Turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au Filetype go nnoremap <leader>d :tab split <CR>:exe "GoDef"<CR>
au FileType go nnoremap <leader>b :GoBuild<CR>
au FileType go nnoremap <leader>r :GoRun<CR>

" Fuzzy finder
nnoremap <C-@> :CtrlPMixed<CR>

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

" BufKill
nnoremap <leader>bd :BD<CR>c

set secure
