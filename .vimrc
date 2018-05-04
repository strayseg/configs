set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins start

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'skammer/vim-css-color'
Plugin 'junegunn/fzf.vim'

" Plugins end

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable                " enable syntax highlighting
set number                   " display line numbers
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set incsearch                " search as characters are entered
set hlsearch                 " highlight search matches
set clipboard=unnamedplus    " use +clipboard as default

set expandtab                " tabs are spaces
set tabstop=4                " number of visual spaces per TAB
set softtabstop=4            " number of spaces in tab when editing
set shiftwidth=4             " number of spaces in tab when using >> or << commands
set autoindent               " automatic indentation 
filetype indent on           " load filetype-specific indent files

set lazyredraw               " redraw only when needed

set foldenable               " enable folding
set foldlevelstart=10        " open most folds by default. 0=all closed.
set foldnestmax=10           " maximum 10 nested folds (within folds)
set foldmethod=indent        " fold based on indent level

" Python-specific

let python_highlight_all = 1 " enable all Python syntax highlighting features

" Space toggles fold open/close
nnoremap <space> za

" Toggle NERDtree on/off
nnoremap <silent><special><F2> :NERDTreeToggle<RETURN>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts. 
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR> 
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Visuals
set laststatus=2   " ensures lightline is shown
set noshowmode     " hides current mode info

let g:lightline = {
            \ 'colorscheme': 'PaperColor_dark',
            \ }

