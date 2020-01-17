#Linux "Cree.sh"
#Adding Images to $file

CR="\\n\\t\\t"
TGT="<!--TARGET-->"
file="View.htm"
name=$1
picture="<img alt=\"$name\" src=\"SVG\/$name\.svg\" \/>"

#Begin Special Indent
sed -i "s?$TGT?$picture$CR<h2>$name<\/h2>$CR<br\/>$CR$TGT?g" $file;
#End Special Indent

echo "File \"$1.svg\" is added to target successfully.";
