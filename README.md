# Vim Settings

The basic idea behind vim-settings is to sync Vim settings in a git repository using [vim-plug](https://github.com/junegunn/vim-plug).
The solution is built with my settings embedded for others to use or fork and customize.
The current settings are built to use with [Neovim](https://neovim.io).
Once setup, any customizations and updates are synced via vim-plug.
In addition, as people fork the repo we can all take from each other and have a nice little place to see what others are doing.

### Install
- If you want to customize the settings, then fork this repository first
- Install [Hack](https://github.com/chrissimpkins/Hack#desktop-usage) font
- Open Vim and open the vimrc file with `:e $MYVIMRC`
- Change the vimrc to [init.vim](init.vim), updating [`editor_path`](vimrc#L2) and [`settings_username`](vimrc#L4)
- Close and reopen Vim and you should see vim-plug installing vim-settings
- Run `:so $MYVIMRC` to source vim-settings settings after installed
- Run `:PlugInstall` to install plugins in settings file
- Run `:so $MYVIMRC` to source the new plugins installed

### Pull Update
- Run `:PlugUpdate`
- Run `:so $MYVIMRC`
- If new plugins are added to [settings.vim](settings.vim), then run `:PlugInstall` and `:so $MYVIMRC`.

### Make Update
- You will need to have forked vim-settings to do this
- Make changes to vim-settings
    - You can open the vim-settings settings file with `:e $SETTINGS`
- Commit and push the changes via git (use [vim-fugitive](https://github.com/tpope/vim-fugitive) for quicker results)
