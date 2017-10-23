set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'mhartington/oceanic-next'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rgarver/Kwbd.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'mildred/vim-bufmru'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
filetype plugin indent on

syntax enable
" for vim 7
set encoding=utf8
set guifont=Hack\ 10
set t_Co=256
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set gcr=a:blinkon0 "Disable cursor blink
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 1
let g:session_autosave_silent = 1
let NERDTreeMinimalUI = 1
let NERDTreeChDirMode = 2
let g:jsx_ext_required = 0
let g:ackprg = 'ag --vimgrep'
let g:nerdtree_tabs_autoclose = 0
let g:bufferline_echo = 0
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
"set conceallevel=1
"let g:javascript_conceal_arrow_function="⇒"
" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

" $HOME/.vimrc
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
map <C-p> :NERDTreeToggle %<CR>
map <Tab> :BufMRUNext<CR>
map <S-Tab> :BufMRUPrev<CR>
colorscheme OceanicNext
