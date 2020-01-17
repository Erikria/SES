#All: Vim.sh
#Generate "csv.vim"
echo '"$CONFIG/nvim/ftplugin/csv.vim' > csv.vim;
echo 'call colorsv#alo()' >> csv.vim;
echo 'set nowrap' >> csv.vim;

#Generate "markdown.vim"
echo '"$CONFIG/nvim/ftplugin/markdown.vim' > markdown.vim;
echo 'set list lcs=tab:\ \ ¦' >> markdown.vim;

#Create Links
ln -s xml.vim html.vim;
ln -s db.vim sqlite.vim;

echo "Process Finnshed!";
