"""""""""""""""""""
" Plugins
"""""""""""""""""""
Bundle "bling/vim-airline"
Bundle "scrooloose/nerdtree"
Bundle "jistr/vim-nerdtree-tabs"
Bundle "kien/ctrlp.vim"
Bundle "Raimondi/delimitMate"
Bundle "tpope/vim-ragtag"
Bundle "tpope/vim-fugitive"
Bundle "ervandew/supertab"
Bundle "tpope/vim-surround"
Bundle "skwp/vim-rspec"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-markdown"
Bundle "othree/html5.vim"
Bundle "pangloss/vim-javascript"
Bundle "ChrisYip/Better-CSS-Syntax-for-Vim"
Bundle "hdima/python-syntax"
Bundle "tpope/vim-rails"
Bundle 'digitaltoad/vim-jade'

" NERD Tree
let g:nerdtree_tabs_open_on_gui_startup=0
map <a-tab> :NERDTreeTabsToggle<cr>
map <F2> :NERDTreeTabsToggle<cr>

" Airline
if has("gui_running")
  let g:airline_powerline_fonts=1
end

" RSpec
let g:RspecKeymap=0

"""""""""""""""""""
" Vim Settings
"""""""""""""""""""
" Colorscheme
colors flipxfx

" Font
if has("win32")
  set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
else
  set guifont=Monaco_for_Powerline:h13
end

" Hide toolbar
if has("gui_running")
  set guioptions=-r
endif

" Misc Settings
set nocompatible
set modeline
set number
set showmatch
set incsearch
set hlsearch
set autoread
set nowrap
set smartcase
set wildmenu
set wildignore+=*.o,*.~,*.pyc,*.exe,*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\*
set nofoldenable
set foldmethod=syntax
set textwidth=0
set scrolloff=4
set sidescrolloff=0
set laststatus=2
set mouse=a
set clipboard=unnamed
set lazyredraw
set encoding=utf8
set fileformats=unix,dos,mac
set nobackup
set nowb
set noswapfile
syntax on
filetype plugin on
filetype indent on

" Indent Settings
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2

" Shorcuts
let mapleader = ","
let g:mapleader = ","
map <a-]> :tabn<cr>
map <a-[> :tabp<cr>
map <c-t> :tabnew<cr>
map <space> /
map <s-space> :noh<cr>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <leader>sc :setlocal spell!<cr>
map <leader>xt :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:noh<cr>:echo "Trailing whitespace removed"<cr>
map <leader>s :sort i
map <leader>sn :sort n

" Help slips
ca W w
ca WQ wq
ca Wq wq
ca Q q
ca X x
