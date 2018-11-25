" ▓▒░ AKUFOOLZ VIM DOTFILE ░▒▓

" change leader to comma
let mapleader="\<Space>"

" ▓▒░ VIM-PLUG SETTINGS ░▒▓

" specify directory for plugins
call plug#begin('~/.vim/plugged')

" plugins go here

" generic plugins
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'

" colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

" autocomplete
Plug 'lifepillar/vim-mucomplete'

" syntax checking
Plug 'vim-syntastic/syntastic'

" python plugins
Plug 'davidhalter/jedi-vim'

" javascript plugins
" Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }
Plug '1995eaton/vim-better-javascript-completion'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" initialize plugin system
call plug#end()

" ▓▒░ GENERAL VIM SETTINGS ░▒▓

" initiate vim-sensible at runtime to allow overwriting
runtime! plugin/sensible.vim

" auto set pwd
set autochdir

" remove status line information
set noshowmode

" show line numbers
set number

" highlight current line
set cursorline

" show tabline
set showtabline=2

" wrap lines
set wrap
set textwidth=79

" enable linebreaks
" set linebreak

" set tabs to four spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" use spaces instead of tabs
set expandtab

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" ignore case when searching
set ignorecase

" smartcase when searching
set smartcase

" automaticly search whole buffer
set gdefault

" redraw only when needed
set lazyredraw

" flash screen instead of bell
set visualbell

" set line numbers to relative
set relativenumber

" ▓▒░ CUSTOM REMAP SETTINGS ░▒▓

" make moving between splits easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ disabled
nnoremap $ <nop>
nnoremap ^ <nop>

" leader zz toggles centered cursor
:nnoremap <leader>zz :let &scrolloff=999-&scrolloff<CR>

" clear search results
nnoremap <leader><space> :noh<cr>

" remap jj to escape in insert mode
inoremap jj <ESC>

" remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" edit vimrc in a new tab
nnoremap <leader>ev :tabe $MYVIMRC<CR>

" load vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>

" ▓▒░ COLOR SCHEME SETTINGS ░▒▓

" set vim color scheme + options
colorscheme dracula
set background=dark
hi Normal guibg=NONE ctermbg=NONE
" colorscheme nord
" let g:nord_italic_comments = 1

" ▓▒░ GVIM GUI SETTINGS ░▒▓

if has('gui_running')

	" set gvim font
	set guifont=DejaVu_Sans_Mono:h10:cANSI:qDRAFT

	" remove gvim gui elements
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	set guioptions-=e
endif

" ▓▒░ LIGHTLINE SETTINGS ░▒▓

let g:lightline = {
	\ 'colorscheme': 'Dracula',
	\ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
	\ 'subseparator': { 'left': '▒', 'right': '░' }
\ }

" ▓▒░ CTRLP SETTINGS ░▒▓

let g:ctrlp_match_window = 'bottom,order:ttb'

" open files in new buffer
let g:ctrlp_switch_buffer = 0

" respect pwd
let g:ctrlp_working_path_mode = 0

" ▓▒░ MUCOMPLETE PLUGIN SETTINGS ░▒▓

" mandatory for mucomplete
set completeopt+=menuone

" enable automatic completion
set completeopt+=noselect

" enable autocomplete at startup
let g:mucomplete#enable_auto_at_startup = 1

" disable vim bell for completion
set belloff+=ctrlg

" disable completion messages
set shortmess+=c

" disable jedi dot completion
let g:jedi#popup_on_dot = 0

" ▓▒░ SYNTASTIC SETTINGS ░▒▓

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ▓▒░ VIM-JSX SETTINGS ░▒▓

let g:jsx_ext_required = 0

" ▓▒░ VIM-JSX SETTINGS ░▒▓

let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
