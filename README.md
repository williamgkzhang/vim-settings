# Vim Settings

The basic idea behind vim-settings is to sync Neovim settings in a git repository using [vim-plug](https://github.com/junegunn/vim-plug).
The solution is built with my settings embedded for others to use or fork and customize.
Once setup, any customizations and updates are synced via vim-plug.
In addition, as people fork the repo we can all take from each other and have a nice little place to see what others are doing.

### Install
- If you want to customize the settings then fork this repository first
- Install [Hack](https://github.com/chrissimpkins/Hack#desktop-usage) font if using it
- Install [python 3](https://www.python.org/downloads) with [Homebrew](https://brew.sh) using `brew install python3`
- Install python neovim client with `pip3 install neovim`
- Create/replace [init.vim](init.vim) file, updating [`settings_username`](init.vim#L2) to your GitHub username if you forked the repository
    - Mac - `~/.config/nvim/init.vim`
    - Windows - `%LocalAppData%/nvim/init.vim`
- Open neovim and it should install everything automatically

### Pull Update
- Run `:PlugUpdate`
- Run `:so $MYVIMRC`
- If new plugins are added to [settings.vim](settings.vim), then run `:PlugInstall` and `:so $MYVIMRC`.

### Make Update
- You will need to have forked vim-settings to do this
- Make changes to vim-settings
    - You can open the vim-settings settings file with `:e $SETTINGS`
- Commit and push the changes via git (use [vim-fugitive](https://github.com/tpope/vim-fugitive) for quicker results)
