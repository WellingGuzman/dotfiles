" Vundle

filetype off

" Plugins
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

" Vundle installed
Bundle 'gmarik/vundle'
" Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/ZoomWin'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
" Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-abolish'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-dispatch'
Bundle 'majutsushi/tagbar'

" Syntax
Bundle 'pangloss/vim-javascript'
Bundle 'alunny/pegjs-vim'
Bundle 'nono/vim-handlebars'
Bundle 'wavded/vim-stylus'
Bundle 'fsouza/go.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'wting/rust.vim'
Bundle 'guns/vim-clojure-static'

" Color Schemes
Bundle 'chriskempson/base16-vim'
Bundle 'jaywilliams/vim-vwilight'

filetype plugin indent on
syntax on
colorscheme base16-tomorrow

au WinLeave * set nocursorline
au WinEnter * set cursorline

set cursorline

set showcmd
set autoindent
set foldmethod=manual
set showmatch
set smarttab
set clipboard=unnamed
set mouse=a
set wildignore+=node_modules,javascripts-built,bower_components,test-result,tmp,precompiled
set ruler
set wildmenu
set incsearch
set autoread
set gdefault " always use g flag in s///

" Gutter
set number
set hlsearch

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start
set laststatus=2
set shiftround

" Store swapfiles and backup files in .vim/tmp
set dir=~/.vim/tmp
set backupdir=~/.vim/tmp

" Mappings
let mapleader=',' " use , for leader instead of backslash

nmap <leader>w <C-W>

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if !has('gui_running')
  let g:airline#extensions#tabline#enabled = 1
endif
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#show_buffers = 0

let user_emmet_expandabbr_key='<C-e>'
let NERDTreeMinimalUI=1
let NERDTreeMouseMode=3
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'snippets']

map <leader>d :NERDTreeToggle<CR>
map <leader>D :NERDTreeFocus<CR>
map <leader>v :vs<CR>
map <leader>t :TagbarToggle<CR>

nnoremap <silent> <leader>/ :nohlsearch<CR> " Unhighlight search results
map \ :TComment<cr>
vmap \ :TComment<cr>gv

set noerrorbells

com! FormatJSON %!python -m json.tool
com! FormatJS %!js-beautify -s 2 -f -

if has('gui_running')
  set guifont=Source\ Code\ Pro\ for\ Powerline:h16
  set guioptions=Ace
  set background=dark
  colorscheme grb256
endif
