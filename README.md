shiny-vim
=========

This is my vim config.

# Installation

## Clone & install plugins
```
$ cd ~/code/
$ git clone https://github.com/marshall-lee/shiny-vim.git
$ ln -s ~/code/shiny-vim/vimrc ~/.vimrc
$ mkdir -p ~/.vim/bundle
$ vim +PluginInstall
```
## Install/build some external stuff
- Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher).
- Install [watchman](https://facebook.github.io/watchman/)
- Build [Command-T](https://github.com/wincent/command-t):
```
$ cd ~/.vim/bundle/Command-T/
$ rvm use system # if you use rvm you must choose system ruby because vim uses it
$ rake make
```

# Usage
Visit homepages of particular plugins to learn more about all of them. Nonetheless, there is a list of basic commands i wish to mention:
- `\t` or `\b` - open file list or buffer list respectively.
- `:Ag <pattern>` - search for pattern through all the codes.
- `:NERDTree` - show up NERDTree.
- `\cc`, `\cu` - comment/uncomment code.
- watch vimcasts about how to effectively work with git using [fugitive](https://github.com/tpope/vim-fugitive).

# Update
```
$ cd ~/code/shiny-vim
$ git pull
$ vim +PluginInstall
```

# TODO
 - [ ] Implement Rakefile for provisioning (install/update)
 - [ ] Find more cute vim plugins
 - ???
