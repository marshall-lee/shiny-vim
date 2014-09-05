set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
"Plugin 'kien/ctrlp.vim'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdtree'
if has('gui_running')
  Plugin 'jistr/vim-nerdtree-tabs'
else
  Plugin 'fholgado/minibufexpl.vim'
endif
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'

call vundle#end()

syntax on
filetype plugin indent on

if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

set tabstop=2 shiftwidth=2 expandtab
set nu
set mouse=a
set clipboard=unnamed
