set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Useful git integration
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
" Give markers in gutter
Plugin 'airblade/vim-gitgutter'
" File browser
Plugin 'scrooloose/nerdtree'
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
set foldmethod=syntax
autocmd BufRead * :normal zR
set switchbuf +=useopen
set backspace=2
set mouse=a
set updatetime=250
set visualbell t_vb=
set scrolloff=8
set textwidth=120
set noshowmode
set notimeout
if has('clipboard')
	set clipboard=unnamed
endif
set wildmenu
set wildignorecase
set autoread
set hidden
set nostartofline 
set smarttab
set backspace=indent,eol,start

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

" Editing $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Other Shortcuts
nnoremap <leader>ss :mks! Session.vim<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>qq :qall!<CR>
set pastetoggle=<F12>

" Color
if &diff 
	colorscheme pablo 
endif

" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Windnow Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Tab> <C-w>w

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" GitGutter
let g:gitgutter_sign_column_always = 1

" Vim-move
let g:move_key_modifier = 'C'

set secure
