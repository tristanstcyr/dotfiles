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
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Personal wiki in vim
Plug 'vimwiki/vimwiki'
" Gitlab integration with fugitive
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'jonsmithers/vim-html-template-literals'

call plug#end()

" Basic
set enc=utf-8
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" Make italics work
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

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
let g:jellybeans_overrides = {
      \ 'background': { 'ctermbg': 'none', '256ctermbg': 'none' }
\}
color jellybeans
set ttyfast
set lazyredraw
set synmaxcol=300
highlight SignColumn ctermbg=none

" Make linter errors gray instead of red
highlight ALEError ctermbg=DarkGray

nnoremap > :vertical resize +5<CR>
nnoremap < :vertical resize -5<CR>
nnoremap + :res +5<CR>
nnoremap - :res -5<CR>

" Open splits below and to the right
set splitbelow
set splitright

" Git Gutter
nnoremap <leader>gg :GitGutterSignsToggle<CR>

" fugitive-gitlab
let g:fugitive_gitlab_domains = ['https://gitlab-app.eng.qops.net/']

" YCM
"let g:ycm_show_diagnostics_ui = 1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_auto_trigger = ''
"let g:ycm_auto_hover = ''
"nnoremap <leader>tc :call ToggleDiagnosticsUI()<cr>
function ToggleDiagnosticsUI()
	if g:ycm_show_diagnostics_ui
		let g:ycm_show_diagnostics_ui = 0
		echo "off"
	else
		let g:ycm_show_diagnostics_ui = 1
		echo "on"
	endif
endfunction

" Coc
let g:coc_suggest_disable = 1
let g:coc_user_config = {
        \'suggest.autoTrigger': 'none',
        \'typescript.preferences.quoteStyle': 'single',
        \'typescript.format.insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets': v:true,
        \'javascript.format.insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets': v:true,
        \'typescript.format.semicolons': 'remove'
      \}
nnoremap <leader>jd <Plug>(coc-definition)
nnoremap <leader>jt <Plug>(coc-type-definition)
nnoremap <leader>jr <Plug>(coc-references)
nnoremap <leader>fi <Plug>(coc-fix-current)
nnoremap <leader>el :CocDiagnostics<cr>
nnoremap <leader>ep <Plug>(coc-diagnostic-prev)
nnoremap <leader>en <Plug>(coc-diagnostic-next)
nnoremap <leader>rr <Plug>(coc-rename)
nnoremap <leader>ol :CocList outline<cr>

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window
nnoremap <silent><leader> gt :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> j coc#pum#visible() ? coc#pum#next(1) : "\j"
inoremap <expr>k coc#pum#visible() ? coc#pum#prev(1) : "\k"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
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
let g:vimwiki_global_ext = 0

" Enable CSS syntax highlighting with vim-html-template-literals
let g:htl_css_templates = 1

set secure
