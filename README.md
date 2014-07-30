# Vim Settings

Personal vim settings. Poke around. Take what you want. Tell me you love me.

### Install
- Install font
 - Mac - [Monaco for Powerline](Monaco for Powerline.otf)
 - Windows - [DejaVu Sans Mono for Powerline](DejaVu Sans Mono for Powerline.ttf)
- Install [vundle](https://github.com/gmarik/vundle) with ```git clone https://github.com/gmarik/Vundle.vim.git PATH_TO_VUNDLE_FOLDER```
 - Mac - ```~/.vim/bundle/vundle```
 - Windows - ```C:/Users/USERNAME/vimfiles/bundle/vundle```
- Open Vim and run ```:e $MYVIMRC```
- Change this file to vim-settings [vimrc](vimrc), updating ```PATH_TO_BUNDLE_FOLDER``` to to the **bundle** folder used above
- Run ```:so $MYVIMRC```
- Run ```:VimSettingsInit``` to install vim-settings and bundles within vim-settings

### Update
- Run ```:PluginUpdate```
- Run ```:so $MYVIMRC```
- And if new bundles are added to vim-settings [vimrc.vim](vimrc.vim)
 - Run ```:PluginInstall``` after update
 - Run ```:so $MYVIMRC```
