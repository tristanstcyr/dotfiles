execute pathogen#infect()

" Set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Disable vi compatibility (emulation of old bugs)
set nocompatible

set autoindent       " use indentation of previous line
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=120    " wrap lines at 120 chars.
syntax on            " turn syntax highlighting on
set number           " turn line numbers on

" Search
noremap <F3> :set hlsearch!<CR>
set ignorecase      " Ignore case by default
set incsearch       " Move to first match while typing
set wrapscan        " Wrap search around
set hlsearch        " Highlight search matches

" Indenting 
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Tabs
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Copy, Cut, Paste
vnoremap <leader>c "+y<CR>gv
vnoremap <leader>x "+d<CR>
vnoremap <leader>p "+P<CR>

" Reorder lines
nnoremap <C-K>   :<C-u>silent! move-2<CR>==
nnoremap <C-J> :<C-u>silent! move+<CR>==
xnoremap <C-K> :<C-u>silent! '<,'>move'>+<CR>gv=gv
xnoremap <C-J>   :<C-u>silent! '<,'>move-2<CR>gv=gv

noremap <leader>fo :NERDTreeToggle<CR>

" Editing $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Save session
nnoremap <leader>ss :mks! Session.vim<CR>

" Javascript
" Shortcut to format
autocmd FileType javascript nnoremap <buffer> <leader>ff :call JsBeautify()<CR>
" Format on close
autocmd BufWritePre *.js :call JsBeautify()
