" Josh Sklar's .vimrc

filetype plugin on      			" Essential for VIM usage.
set nocompatible        			" Use Vim defaults (much better!)
set t_Co=256					" Set VIM to use 256 colors.
call pathogen#infect()				" Using pathogen for plugin management. Hope this becomes part of base
set ruler               			" show the cursor position all the time
syntax enable
set shell=/bin/zsh				"Since I like using fish shell, but fish shell doesn't support traditional redirection.
if !has('gui_running')
	set background=dark			" I like using the dark solarized theme.
	let g:solarized_termtrans=1		" When I use terminal, this is an essential settting.
	colorscheme solarized
else
	set background=dark			" Gui VIM needs less prompting to get things right.
	colorscheme solarized
endif
set backspace=indent,eol,start			" I like backspacing over indents and newlines.
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
" Set all the file types I don't want completion for.
let g:ycm_filetype_blacklist = {		      
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'text' : 1,
			\ 'vim' : 1,
			\ 'gitcommit' : 1,
	\}
let g:ycm_confirm_extra_conf = 0		" Get rid of the is this a safe extra file complaints.
let g:ycm_autoclose_preview_window_after_completion = 0 " Damn preview window stays otherwise...

