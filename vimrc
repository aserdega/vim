set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Bundle 'sonph/onehalf', {'rtp': 'vim/'}

Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'


Plugin 'rakr/vim-one'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'tomasiser/vim-code-dark'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:syntastic_python_checkers = ['python']

set splitbelow
set splitright

"highlight current lime
set cursorline

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=500 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix


set encoding=utf-8


set t_Co=256
"let base16colorspace=256

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts=1
let g:airline_theme='one'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


if has('gui_running')
  colorscheme gruvbox
  set background=dark
else
  colorscheme gruvbox
  set background=dark
endif

let python_highlight_all=1
syntax on

set laststatus=2
set number

set t_ut=
