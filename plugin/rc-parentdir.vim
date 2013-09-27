function! ParentDir()
	let l:dir = expand('%:p')
	if match(l:dir, '/$') != -1
		let l:dir = expand('%:p:h:h')
	else
		let l:dir = expand('%:p:h')
	endif
	exe 'e ' . l:dir
endfunction
com! ParentDir call ParentDir()
