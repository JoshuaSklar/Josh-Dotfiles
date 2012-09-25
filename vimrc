" Josh Sklar's .vimrc
" Modified last on September 19th 2012
filetype plugin on      " Essential for VIM usage.
set nocompatible        " Use Vim defaults (much better!)
set ruler               " show the cursor position all the time
syntax on
"setlocal spell spelllang=en_us "Turns on Spell Check in Vim7
colorscheme desert
set history=50			"keeps 50 commands and 50 search patterns in history"
set showcmd				"display incomplet command left of the ruler"
set incsearch			"display the matches for partial patterns"
set ignorecase          "Make my searches case insensitive.
set smartcase           "With some smart exceptions.
set number				"turns on line numbering"
set showmatch           "when in insert-mode will jump back to the opening"
                        "brace while typing (as is common with emacs"
set novisualbell        "BELLS!?! Is this 1970?
set nobackup            "No .BAK files please.
set nowb		
set noswapfile
set autoread		"updates buffer if file changed externally.
set textwidth=80		"I like having only 80 characters on a line.
set encoding=utf8
filetype plugin indent on "enables indenting for different file types.

autocmd BufEnter *.c, *.h, *.cpp, *.cc source ~/.vim/c.vim
" Settings for Markdown.
autocmd FileType markdown set wrapmargin=10     "will break lines at 80 chars"

" Settings for Python
autocmd FileType py set textwidth=79
autocmd FileType py set tabstop=4
autocmd FileType py set shiftwidth=4
autocmd FileType py set expandtab
" The following eliminates whitespace from the end of lines on write.
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

"Settings to turn on omnicompletion.
set ofu=syntaxcomplete#Complete
" Map cntl-space to omnicompletion.
inoremap <C-space> <C-x><C-o>

