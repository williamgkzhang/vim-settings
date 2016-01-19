" Path to editor settings folder
let editor_path = '~/.config/nvim'
" Settings username
let settings_username = 'flipxfx'

" Install plug
if empty(glob(editor_path . '/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Load vim settings
let $SETTINGS = editor_path . '/plugged/vim-settings/settings.vim'
call plug#begin(editor_path . '/plugged')
Plug settings_username . '/vim-settings'
if filereadable(glob($SETTINGS))
  exec ':source ' . $SETTINGS
else
  call plug#end()
endif
