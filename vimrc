" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Personal settings
Bundle 'flipxfx/vim-settings'

" Load external myvimrc from personal settings
source ~/.vim/bundle/vim-settings/myvimrc
