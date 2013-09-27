function! Trailing()
	exe "normal mt"
	silent! exe '%s/[\t ][\t ]*$//'
	exe "normal g't"
endfunction
com! Trailing call Trailing()
