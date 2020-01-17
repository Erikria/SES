"Tempo
"$CONFIG/nvim/link.vim
"Only Useful for Cree.htm
echo "This is Links Converter!"
%s/\t\t\t\t/\\/ge
%s/\t/\./ge
%s/\\\.\.<div><a href="/- \[LN]\[/ge
%s/">/] \*/ge
%s?<\/a><\/div>?\*?ge
%s?\\\.<\/td>\n\\\.<td>?#\[TD]?ge
%s?\\\.<th>?- \[TH](?ge
%s?<\/th>?)?ge
%s?\\\.<\/td>\n\\<\/tr>\n\\<tr>?#\[SD]?ge
%s?\\<\/tr>\n\\<tr>\n\\\.<td>?#\[HD]?ge
%s/\\<tr>/#\[URL]/ge
%s?\\\.<\/td>\n\\<\/tr>?#\[END]?ge
