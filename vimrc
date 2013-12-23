" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-scripts/closetag.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-markdown'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'pangloss/vim-javascript'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'hdima/python-syntax'
Bundle 'tpope/vim-rails'

" CloseTag
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" NERD Tree
let g:nerdtree_tabs_open_on_gui_startup = 0
map <A-Tab> :NERDTreeTabsToggle<CR>

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

" Hide toolbar
if has("gui_running")
	set guioptions=-r
endif

" Colorscheme
colors flipxfx

" Settings
set nocompatible
set number
set nowrap
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set noexpandtab
set clipboard=unnamed
set nobackup
set noswapfile
set incsearch
set hlsearch
set foldmethod=indent
set nofoldenable
set mouse=a
set textwidth=0
syntax on
filetype on
filetype plugin on
filetype indent on
ca W w
ca WQ wq
ca Wq wq
ca Q q

" File types
au BufNewFile,BufRead *.lex setlocal filetype=sml
au BufNewFile,BufRead *.grm setlocal filetype=sml
au BufNewFile,BufRead *.in setlocal filetype=otter

" Shortcuts
map <A-]> :tabn<CR>
map <A-[> :tabp<CR>
map <C-t> :tabnew<CR>
