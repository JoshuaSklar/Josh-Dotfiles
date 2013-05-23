autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set textwidth=0		"Don't want autowrapping in Python
" The following eliminates whitespace from the end of lines on write.
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

