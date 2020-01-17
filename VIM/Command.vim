"$CONFIG/nvim/plugin/cmd.vim

augroup FileType
	autocmd BufRead,BufNewfile *.csv set filetype=csv
	autocmd BufRead,BufNewfile *.db set filetype=sqlite
	autocmd BufRead,BufNewfile *.md set filetype=markdown
	autocmd BufRead,BufNewfile *.sqlite set filetype=sqlite
	autocmd BufRead,BufNewfile *.smali set filetype=smali
augroup END

"Key Maps
nnoremap <C-\> :set invnumber<CR>
nnoremap <C-x>d :call Shrtab()<CR>
nnoremap <C-x>e :call Exptab()<CR>
nnoremap <C-x>f :Vexplore<CR>
nnoremap <C-x>l :set invmodifiable<CR>
nnoremap <C-x>n :set invrelativenumber<CR>
nnoremap <C-x>p :set invpaste<CR>
nnoremap <C-x>w :set invwrap<CR>

"Insert, search or delete bookmarks tags
nnoremap <M-t> o<!--BOOKMARK!--><Esc>
nnoremap <M-c> /<!--BOOKMARK!--><CR>
nnoremap <M-C> :call Hue()<CR>
nnoremap <M-T> :s/<!--BOOKMARK!-->\n//<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"New Command
command! Clb :call ClnBlk()
command! Clc :call ClnCp()
command! Clr :call ClnRtn()

"Novel Reader Function
function! Hue()
	if g:colors_name == 'default'
		colorscheme desert
	else
		colorscheme default
	endif
endfunction

"Clean Blanks
function! ClnBlk()
	while search("\x20\x20") > 0
		%s/[\x20][\x20]/ /ge
	endwhile
endfunction

"Clean Returns
function! ClnRtn()
	while search('\n\n\n') > 0
		%s/\n\n\n/\r\r/ge
	endwhile
endfunction

"SCP Copy Clean
function! ClnCp()
	%s/\n\n/\\PAR/ge
	%s/\n/ /ge
	call ClnBlk()
	%s/\\PAR/\r\r/ge
	%s/[\x0c]//ge
endfunction

"Expand Tab
function! Exptab()
	let &shiftwidth = &shiftwidth + 4
	setlocal shiftwidth?
	let &softtabstop = &softtabstop + 4
	setlocal softtabstop?
	let &tabstop = &tabstop + 4
	setlocal tabstop?
endfunction

"Shrink Tab
function! Shrtab()
	if &shiftwidth > 4
		let &shiftwidth = &shiftwidth - 4
		setlocal shiftwidth?
		let &softtabstop = &softtabstop - 4
		setlocal softtabstop?
		let &tabstop = &tabstop - 4
		setlocal tabstop?
	else
		echo "Tabs are too narrow!"
	endif
endfunction
