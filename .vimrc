

syntax enable                " enable syntax highlighting
set number                   " display line numbers
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching {[()]}
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
" space toggles fold open/close
nnoremap <space> za
# dotfiles
