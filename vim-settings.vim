""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Upgraded status/tabline
Plugin 'bling/vim-airline'

" Filesystem explorer
Plugin 'scrooloose/nerdtree'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Ghetto XML/HTML mappings
Plugin 'tpope/vim-ragtag'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Tab autocomplete
Plugin 'ervandew/supertab'

" Mappings to manipulate surroundings
Plugin 'tpope/vim-surround'

" Syntax checker
Plugin 'scrooloose/syntastic'

" RSpec runner
Plugin 'skwp/vim-rspec'

" Create Command Aliases
Plugin 'vim-scripts/cmdalias.vim'

" Safari Extension Development
Plugin 'flipxfx/vim-safariext'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML5
Plugin 'othree/html5.vim'

" Javascript
Plugin 'pangloss/vim-javascript'

" Python
Plugin 'hdima/python-syntax'

" Ruby on Rails
Plugin 'tpope/vim-rails'

" Jade
Plugin 'digitaltoad/vim-jade'

" C#
Plugin 'OrangeT/vim-csharp'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'

" Haml, Sass, SCSS
Plugin 'tpope/vim-haml'

" Stylus
Plugin 'wavded/vim-stylus'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gruvbox
Plugin 'morhetz/gruvbox'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Hybrid
Plugin 'w0ng/vim-hybrid'

" Badwolf
Plugin 'sjl/badwolf'

" Base16
Plugin 'chriskempson/base16-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader for Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader
let mapleader=" "
let g:mapleader=" "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree open on GUI startup
let g:nerdtree_tabs_open_on_gui_startup=0

" NERDTree toggle
noremap <leader>n :NERDTreeToggle<cr>

" NERDTree close on open file
let NERDTreeQuitOnOpen=1

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

" Syntastic ignore html tidy
let g:syntastic_html_tidy_ignore_errors=["proprietary attribute", "trimming empty", "is not recognized!", "discarding unexpected", "'<' + '/' + letter not allowed here", "unescaped &"]

" CmdAlias aliases (helps slips like :W to :w)
au VimEnter * Alias W w
au VimEnter * Alias WQ wq
au VimEnter * Alias Wq wq
au VimEnter * Alias Q q
au VimEnter * Alias X x

" Safariext
nnoremap <leader>eo :SafariextOpen<cr>
nnoremap <leader>ei :SafariextInstall<cr>
nnoremap <leader>eu :SafariextUninstall<cr>
nnoremap <leader>er :SafariextReload<cr>
nnoremap <leader>eg :SafariextInspectGlobal<cr>
nnoremap <leader>eb :SafariextBuild<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
set background=dark
colors gruvbox

" Font depending on OS
if has("win32")
  set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
else
  set guifont=Monaco_for_Powerline:h12
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
" Filetype Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Vue
autocmd BufNewFile,BufReadPost *.vue set filetype=html

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

" Show cursor line
set cursorline

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

" Disable message at start
set shortmess+=I

" New window appears below current
set splitbelow

" New window appears to the right of current
set splitright

" Set charater representation via UTF-8
set encoding=utf8

" File type preferences
set fileformats=unix,dos

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

" Set autocomplete to syntax completion
set omnifunc=syntaxcomplete#Complete

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
" Buffer/Tab Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to next buffer
nnoremap gb :bnext<cr>

" Go to previous buffer
nnoremap gB :bprevious<cr>

" New buffer in current area
nnoremap <leader>ee :enew<cr>

" New buffer in split
nnoremap <leader>es :new<cr>

" New buffer in vertical split
nnoremap <leader>ev :vnew<cr>

" Remove the current buffer
nnoremap <leader>bd :bprevious<cr>:bdelete #<cr>

" Remove the current buffer with override
nnoremap <leader>bD :bprevious<cr>:bdelete! #<cr>

" Remove the current buffer and window
nnoremap <leader>Bd :bprevious<cr>:bdelete #<cr>:q<cr>

" Remove the current buffer and window with override
nnoremap <leader>BD :bprevious<cr>:bdelete! #<cr>:q<cr>

" Split current file
nnoremap <leader>bs :split<cr>

" Vertical split current file
nnoremap <leader>bv :vsplit<cr>

" Show buffer list
nnoremap <leader>bl :ls<cr>

" Create new tab
nnoremap <c-t> :tabnew<cr>

" Go to next tab
nnoremap <a-]> :tabn<cr>

" Go to previous tab
nnoremap <a-[> :tabp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to split below
nnoremap <c-j> <c-w>j

" Go to split above
nnoremap <c-k> <c-w>k

" Go to split left
nnoremap <c-h> <c-w>h

" Go to split right
nnoremap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make H and L go to beginning and end of line
noremap H ^
noremap L $
vnoremap L g_

" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" No arrow keys for you
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highlight
nnoremap ? :noh<cr>

" Toggle spell check
nnoremap <leader>sc :setlocal spell!<cr>

" Remove trailing whitespace
nnoremap <leader>xt :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:noh<cr>:echo "Trailing whitespace removed"<cr>

" Sort lines alphabetically
nnoremap <leader>sl :sort i<cr>
vnoremap <leader>sl :sort i<cr>

" Sort lines numerically
nnoremap <leader>sn :sort n<cr>
vnoremap <leader>sn :sort n<cr>

" Faster indentation
nnoremap > >>
nnoremap < <<

" Edit vim-settings
nnoremap <leader>rc :e $VIMSETTINGS<cr>

" Source vimrc
nnoremap <leader>rC :so $MYVIMRC<cr>

" Toggle wrap
nnoremap <leader>wt :set invwrap<cr>:set wrap?<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Switch
"
" Helps switch between space and tab indentation
"
" <leader>it        - toggle indentation method
" <leader>i<tab>    - switch to tab indentation
" <leader>i<space>  - switch to space indentation
" <leader>is        - show current indentation method
" <leader>ir        - reindent the file using current indentation method
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("g:indentswitch_indent")
  let g:indentswitch_indent = "spaces"
endif

function! s:Ispaces()
  let g:indentswitch_indent = "spaces"
  set expandtab
  set smarttab
  echo "Space Indentation"
endfunction

function! s:Itabs()
  let g:indentswitch_indent = "tabs"
  set noexpandtab
  set nosmarttab
  echo "Tab Indentation"
endfunction

function! s:Itoggle()
  if g:indentswitch_indent == "tabs"
    call s:Ispaces()
  else
    call s:Itabs()
  endif
endfunction

function! s:Ishow()
  if g:indentswitch_indent == "tabs"
    echo "Tab Indentation"
  else
    echo "Space Indentation"
  endif
endfunction

if g:indentswitch_indent == "tabs"
  set noexpandtab
  set nosmarttab
else
  set expandtab
  set smarttab
endif

command! -bar -nargs=0 Itoggle call s:Itoggle()
command! -bar -nargs=0 Itabs call s:Itabs()
command! -bar -nargs=0 Ispaces call s:Ispaces()
command! -bar -nargs=0 Ishow call s:Ishow()

nnoremap <leader>it :Itoggle<cr>
nnoremap <leader>i<tab> :Itabs<cr>
nnoremap <leader>i<space> :Ispaces<cr>
nnoremap <leader>is :Ishow<cr>
nnoremap <leader>ir gg=G


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open current file with Marko
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:Marko()
  noautocmd silent execute "!osascript -e 'tell application \"Marko\"' -e 'activate' -e 'open\"" . expand("%:p") . "\"' -e 'end tell'"
  if v:shell_error
    echohl Error
    echon "Problem opening the file."
    echohl Normal
  endif
endfunction

command! -bar -nargs=0 Marko call s:Marko()
