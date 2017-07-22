" Settings username
let settings_username = 'flipxfx'

" Install plug/settings
let editor_path = expand('<sfile>:p:h')
let plug_path = editor_path . '/autoload/plug.vim'
let $SETTINGS = editor_path . '/plugged/vim-settings/settings.vim'
if empty(glob(plug_path))
  " Install plug
  silent exec '!curl -fLo ' . plug_path . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  exec ':source ' . plug_path

  " Install settings
  call plug#begin(editor_path . '/plugged')
  Plug settings_username . '/vim-settings'
  call plug#end()
  silent exec ':PlugInstall'

  " Install plugins in settings
  call plug#begin(editor_path . '/plugged')
  exec ':source ' . $SETTINGS
  silent exec ':PlugInstall'
  exec ':q'
  exec ':source ' . $MYVIMRC
else
  " Load settings
  call plug#begin(editor_path . '/plugged')
  Plug settings_username . '/vim-settings'
  exec ':source ' . $SETTINGS
endif
