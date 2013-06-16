" Josh Sklar's .vimrc
" Modified last on October 3rd 2012

filetype plugin on      			" Essential for VIM usage.
set nocompatible        			" Use Vim defaults (much better!)
set t_Co=256					" Set VIM to use 256 colors.
call pathogen#infect()				" Using pathogen for plugin management. Hope this becomes part of base
set ruler               			" show the cursor position all the time
syntax enable
if !has('gui_running')
	set background=dark
	let g:solarized_termtrans=1
	let g:solarized_termcolors=256
	colorscheme solarized
else
	set background=dark
	colorscheme solarized
endif
set history=50					" keeps 50 commands and 50 search patterns in history"
set showcmd					" display incomplet command left of the ruler"
set incsearch					" display the matches for partial patterns"
set ignorecase          			" Make my searches case insensitive.
set smartcase           			" With some smart exceptions.
set number					" turns on line numbering"
set showmatch           			" when in insert-mode will jump back to the opening"
                        			" brace while typing (as is common with emacs"
set novisualbell        			" BELLS!?! Is this 1970?
set nobackup            			" No .BAK files please.
set nowb		
set noswapfile
set autoread					" updates buffer if file changed externally.
set encoding=utf8				" I'm an international man.
filetype plugin indent on 			" enables indenting for different file types.

"Settings for c and c++
autocmd BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/c.vim

" Settings for Markdown.
autocmd FileType markdown set wrapmargin=10     " will break lines at 80 chars"

" Settings for Python
autocmd BufEnter *.py source ~/.vim/py.vim

" Settings for Tex documents.
autocmd BufEnter *.tex source ~/.vim/tex.vim

set foldmethod=syntax				" I just want to turn on syntax folding.

" Global settings for YCM
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'vim' : 1,
      \}
