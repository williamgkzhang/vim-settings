""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Upgraded status/tabline
Bundle "bling/vim-airline"

" Filesystem explorer
Bundle "scrooloose/nerdtree"

" NERDTree as a static panel across tabs
Bundle "jistr/vim-nerdtree-tabs"

" Fuzzy file finder
Bundle "kien/ctrlp.vim"

" Ghetto XML/HTML mappings
Bundle "tpope/vim-ragtag"

" Git wrapper
Bundle "tpope/vim-fugitive"

" Tab autocomplete
Bundle "ervandew/supertab"

" Mappings to manipulate surroundings
Bundle "tpope/vim-surround"

" Syntax checker
Bundle "scrooloose/syntastic"

" Markdown highlighting
Bundle "tpope/vim-markdown"

" HTML5 highlighting and autocomplete
Bundle "othree/html5.vim"

" Javascript syntax and indent
Bundle "pangloss/vim-javascript"

" CSS highlighting
Bundle "ChrisYip/Better-CSS-Syntax-for-Vim"

" Python highlighting
Bundle "hdima/python-syntax"

" Ruby on Rails highlighting, navigation and helper functions
Bundle "tpope/vim-rails"

" RSpec runner
Bundle "skwp/vim-rspec"

" Jade highlighting
Bundle "digitaltoad/vim-jade"

" 2048
Bundle "AshyIsMe/2048"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree open on GUI startup
let g:nerdtree_tabs_open_on_gui_startup=0

" NERDTree toggle
map <a-tab> :NERDTreeTabsToggle<cr>

" NERDTree toggle
map <F2> :NERDTreeTabsToggle<cr>

" Airline autopopulate symbols
if has("gui_running")
  let g:airline_powerline_fonts=1
end

" Airline smarter tabline
let g:airline#extensions#tabline#enabled=1

" Airline only show filename in tabline
let g:airline#extensions#tabline#fnamemod=":t"

" RSpec turn off default mappings
let g:RspecKeymap=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
colors flipxfx

" Font depending on OS
if has("win32")
  set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
else
  set guifont=Monaco_for_Powerline:h13
end

" Hide scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Hide menubar
set guioptions-=m

" Hide toolbar
set guioptions-=T

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Vim
set nocompatible

" Variables can be set per file
set modeline

" Show line numbers
set number

" Highlights matching braces
set showmatch

" Search starts while entering string
set incsearch

" Search highlighting
set hlsearch

" Search ignore case
set ignorecase

" Search ignore case unless search contains an uppercase
set smartcase

" Autoloads changes to file made outside Vim
set autoread

" Do not wrap lines
set nowrap

" Prevent automatically inserting line breaks
set textwidth=0

" Command line completion help
set wildmenu

" Extensions to ignore in searches
set wildignore+=*.o,*.~,*.pyc,*.exe,*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\*

" Turn off folding by default
set nofoldenable

" Fold by syntax highlighting
set foldmethod=syntax

" Minimum number of screen rows above and below the cursor 
set scrolloff=4

" Minimum number of screen columns to the left and right of the cursor 
set sidescrolloff=0

" Always show the status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Allow use of system clipboard
set clipboard=unnamed

" Buffer screen updates to speed up macros etc.
set lazyredraw

" New window appears below current
set splitbelow

" New window appears to the right of current
set splitright

" Set charater representation via UTF-8
set encoding=utf8

" File type preferences
set fileformats=unix,dos,mac

" Don't create backups
set nobackup
set nowb

" Turn off swapfiles
set noswapfile

" Buffer becomes hidden when abandoned to prevent need to save
set hidden

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on

" Enable filetype indenting
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically indent properly 
set autoindent

" Represent 1 tab as 2 columns
set tabstop=2

" Text is indented by 2 columns
set shiftwidth=2

" Insert 2 columns when tab pressed
set softtabstop=2

" Backspace behave normally
set backspace=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader for Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader to comma
let mapleader=","
let g:mapleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer/Tab Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to next buffer
nmap gb :bnext<cr>

" Go to previous buffer
nmap gB :bprevious<cr>

" New buffer in current area
nmap <leader>be :enew<cr>

" New buffer in split
nmap <leader>bn :new<cr>

" New buffer in vertical split
nmap <leader>bv :vnew<cr>

" Remove the current buffer
nmap <leader>bd :bprevious<cr>:bdelete #<cr>

" Remove the current buffer with override
nmap <leader>bD :bprevious<cr>:bdelete! #<cr>

" Show buffer list
nmap <leader>bl :ls<cr>

" Create new tab
nmap <c-t> :tabnew<cr>

" Go to next tab
nmap <a-]> :tabn<cr>

" Go to previous tab
nmap <a-[> :tabp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to split below
nmap <c-j> <c-w>j

" Go to split above
nmap <c-k> <c-w>k

" Go to split left
nmap <c-h> <c-w>h

" Go to split right
nmap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highlight
nmap <s-space> :noh<cr>

" Toggle spell check
nmap <leader>sc :setlocal spell!<cr>

" Remove trailing whitespace
nmap <leader>xt :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:noh<cr>:echo "Trailing whitespace removed"<cr>

" Sort lines alphabetically
nmap <leader>sl :sort i<cr>

" Sort lines numerically
nmap <leader>sn :sort n<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Slips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change console command (:W to :w)
ca W w
ca WQ wq
ca Wq wq
ca Q q
ca X x
