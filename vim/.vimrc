" first, execute this command below to install vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" then, open vim input :PluginInstall

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""
let mapleader = ','
""""""""""""""""""""""""""""""""""""""
" how to install youcompleteme ?
" 1, add it in Plugin list
" 2, ~/.vim/bundle/YouCompleteMe/install.py --tern-completer
" 3, add ~/.tern-project
""""""""""""""""""""""""""""""""""""""
"emmet
let g:user_emmet_leader_key=','
"let g:user_emmet_install_global=0
"au FileType html,css,php EmmetInstall
"airline
set laststatus=2
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
""""""""""""""""""""""""""""""""""""""
"for handlebars syntax, same as html
au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
"""""""""""""""""""""""""""""""""""""""
syntax on
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set showcmd
set encoding=utf-8
set splitright
set splitbelow
set swapfile
