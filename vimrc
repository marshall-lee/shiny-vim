set nocompatible
filetype off

let mapleader = ','

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-projectionist'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-cucumber'
Plugin 'lambdatoast/elm.vim'
Plugin 'raichoo/purescript-vim'
" Plugin 'wincent/Command-T'
Plugin 'thoughtbot/pick.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let g:CommandTFileScanner = 'git'
nnoremap <Leader>.p :call PickFile()<CR>
nnoremap <Leader>.s :call PickFileSplit()<CR>
nnoremap <Leader>.v :call PickFileVerticalSplit()<CR>
nnoremap <Leader>.t :call PickFileTab()<CR>
nnoremap <Leader>.b :call PickBuffer()<CR>

let g:syntastic_ruby_checkers = ['mri']

let g:indentLine_char = '│'

map <Leader>nt <Plug>NERDTreeTabsToggle<CR>
map <Leader>nf <Plug>NERDTreeTabsFind<CR>
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>
map <C-c> "+y
nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

syntax on
filetype plugin indent on

set t_Co=256

if has('gui_running')
  set background=light
else
  set background=dark
endif
let g:solarized_hitrail=1
let g:solarized_termtrans=1
colorscheme solarized

set cursorline

highlight clear SignColumn
highlight SignifySignAdd    cterm=bold ctermfg=120
highlight SignifySignDelete cterm=bold ctermfg=52
highlight SignifySignChange cterm=bold ctermfg=226
let g:signify_update_on_focusgained=1
let g:signify_cursorhold_normal=1
let g:signify_update_on_bufenter=1
let g:airline_powerline_fonts=1
let g:NERDSpaceDelims=1
let g:startify_change_to_vcs_root = 1
set tabstop=2 shiftwidth=2 expandtab
set nu
set mouse=a
set clipboard=unnamed

" custom file associations
au BufRead,BufNewFile Eyefile setfiletype ruby
