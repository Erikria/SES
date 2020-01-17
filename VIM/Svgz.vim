"$CONFIG/nvim/svgz.vim
echo "This is SVG optimizer!"
%s/xmlns:.*\n//ge
%s/<.*c.*:.*>\n//ge
%s/<.*d.*:.*>\n//ge

"Remove multiple spaces
while search("\x20\x20") > 0
	%s/[\x20][\x20]/ /ge
endwhile

%s/\n//ge
%s/;/; /ge
%s/> </>\r</ge
%s/></>\r</ge
%s/<.*rdf:.*>\n//ge
%s?<defs.*\/>\n??ge
%s?<metadata.*\/>\n??ge
%s/ id="g[0-9]"//ge
%s/ id="g[0-9][0-9]"//ge
%s/ id="g[0-9][0-9][0-9]"//ge
%s/ id="g[0-9][0-9][0-9][0-9]"//ge
%s/ id="path[0-9]"//ge
%s/ id="path[0-9][0-9]"//ge
%s/ id="path[0-9][0-9][0-9]"//ge
%s/ id="path[0-9][0-9][0-9][0-9]"//ge
echo "Process Finnished!"
