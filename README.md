# Vim Settings

Personal vim settings. Poke around. Take what you want. Tell me you love me.

### Install
- Install font
 - Mac - [Monaco for Powerline](Monaco for Powerline.otf)
 - Windows - [DejaVu Sans Mono for Powerline](DejaVu Sans Mono for Powerline.ttf)
- Install [vundle](https://github.com/gmarik/vundle)
 - Mac - ```~/.vim/bundle/vundle```
 - Windows - ```C:/Users/USERNAME/vimfiles/bundle/vundle```
- Change local vimrc to vim-settings [vimrc](vimrc), updating ```bundle_path``` to point to the bundle folder
- Open Vim and run ```:BundleInstall``` to install vundle and vim-settings
- Reopen Vim and run ```:BundleInstall``` again to install bundles in [vimrc.vim](vimrc.vim)

### Update
- To update simply run ```:BundleUpdate``` 
- If new bundles are added to [vimrc.vim](vimrc.vim) then run ```:BundleInstall``` after update
