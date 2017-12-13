set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'rhysd/clever-f.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'othree/html5.vim'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'qpkorr/vim-bufkill'
Plugin 'Yggdroot/indentLine'
Plugin 'mildred/vim-bufmru'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'raimondi/delimitmate'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on

syntax enable
" for vim 7
set encoding=utf8
set guifont=FuraCode\ Nerd\ Font\ Mono\ 11
colorscheme OceanicNext
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set gcr=a:blinkon0 "Disable cursor blink
set guiheadroom=0
set hlsearch
set incsearch
let g:clever_f_ignore_case = 1
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 1
let g:session_autosave_silent = 1
let NERDTreeMinimalUI = 1
let NERDTreeChDirMode = 2
let g:jsx_ext_required = 0
let g:ackprg = 'ag --vimgrep' .
  \ ' --ignore-dir .git' .
  \ ' --ignore-dir bin' .
  \ ' --ignore-dir logs' .
  \ ' --ignore-dir lib' .
  \ ' --ignore-dir node_modules' .
  \ ' --ignore-dir coverage' .
  \ ' --ignore-dir static' .
  \ ' --ignore-dir webpack' .
  \ ' --ignore-dir .happypack' .
  \ ' --ignore-dir coverage'
let g:nerdtree_tabs_autoclose = 0
let g:bufferline_echo = 0
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_inactive_collapse=1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = '∄'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
" search hidden files too
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'a'
" without next block it won't ignore wildcards' paths
if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
" clear cache on vim exit
let g:ctrlp_clear_cache_on_exit = 1
" Include current file to find entries
let g:ctrlp_match_current_file = 1
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|static|coverage)$'
"set conceallevel=1
"let g:javascript_conceal_arrow_function="⇒"
" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

" $HOME/.vimrc
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set directory=$HOME/.vim/swapfiles//

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=b  "remove bottom scroll bar
set guioptions-=F  "remove footer
"set guioptions-=r  "remove right-hand scroll bar
map <Tab> :BufMRUNext<cr>
map <S-Tab> :BufMRUPrev<cr>
imap <silent> <BS> <C-R>=YcmOnDeleteChar()<cr><Plug>delimitMateBS
let mapleader = "\<space>"
" fast open/reload vimrc
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nmap <space> <leader>
vmap <space> <leader>
xmap <space> <leader>
" clear highlight on esc
nnoremap <esc> :noh<cr><esc>
nnoremap <esc>^[ <esc>^[
nnoremap <C-f> :/
nnoremap <C-F> :Ack<space>

nnoremap <leader>q :BD<cr>
nnoremap <leader>Q :close<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>T :NERDTreeFind<cr>
" Move a line of text using Ctrl+Alt+[jk]
nnoremap <C-M-j> mz:m+<cr>`z
nnoremap <C-M-k> mz:m-2<cr>`z
vnoremap <C-M-k> :m'<-2<cr>`>my`<mzgv`yo`z
vnoremap <C-M-j> :m'>+<cr>`<my`>mzgv`yo`z

" some react snippets
abbr pt PropTypes
abbr pta PropTypes.array
abbr pto PropTypes.object
abbr pts PropTypes.shape
abbr ptao PropTypes.arrayOf
abbr ptoot PropTypes.oneOfType
abbr ptf PropTypes.func
abbr ptb PropTypes.bool
abbr ptn PropTypes.number
abbr ptr isRequired
abbr tp this.props
abbr ts this.state
abbr tc this.context
abbr np nextProps
abbr ns nextState
abbr con constructor
abbr cdm componentDidMount
abbr cwrp componentWillReceiveProps
abbr cdrp componentDidReceiveProps

function! YcmOnDeleteChar()
  if pumvisible()
    return "\<C-y>"
  endif
  return ""
endfunction
