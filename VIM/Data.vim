"$CONFIG/nvim/ftplugin/db.vim
set noconfirm
set noswapfile
set nowrap

nnoremap q :q!<CR>
nnoremap <C-x>l :call Lsdb()
nnoremap <C-x>t :call Lstable()<CR>

function! Lstable()
	:1,$d
	let $path = expand('%:p')
	:%!sqlite3 -column -header -cmd ".tables" $path
	:%s/^/Available Tables:\r- /g
	:%s/\s\s/\r- /ge
	:%s/^- \n//ge
	while search("\x20\x20") > 0
		%s/\s\s/ /ge
	endwhile
endfunction
call Lstable()

function! Lsdb()
	:1,$d
	let $table = input("Please Input Table Name!\n: ")
	echo "\nLoading Table..."
	:%!sqlite3 -column -header -cmd "select * from $table;" $path
endfunction
