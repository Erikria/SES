#Common: Sava.sh
echo "This is Shavian Converter"
echo "Please Input the Source File:";
read src;
#Backup File
bak="$src~"
touch $bak;
cat $src > $bak;
tgt=$src
#Use SED
sed -i 's/[Aa][Uu]/𐑬/g' $tgt;
sed -i 's/[Oo][Uu]/𐑶/g' $tgt;
sed -i 's/[Ee][Aa]/𐑾/g' $tgt;
sed -i 's/[Ee][Uu]/𐑴/g' $tgt;
sed -i 's/[Cc][Hh]/𐑙/g' $tgt;
sed -i 's/[Ss][Hh]/𐑖/g' $tgt;
sed -i 's/[Tt][Hh]/𐑔/g' $tgt;
sed -i 's/[Ww][Hh]/𐑣𐑝/g' $tgt;
sed -i 's/[Ââ]/𐑲/g' $tgt;
sed -i 's/[Êê]/𐑱/g' $tgt;
sed -i 's/[Îî]/𐑰/g' $tgt;
sed -i 's/[Ôô]/𐑥/g' $tgt;
sed -i 's/[Ûû]/𐑯/g' $tgt;
sed -i 's/[Aa]/𐑨/g' $tgt;
sed -i 's/[Bb]/𐑚/g' $tgt;
sed -i 's/[Cc]/𐑒/g' $tgt;
sed -i 's/[Dd]/𐑛/g' $tgt;
sed -i 's/[Ee]/𐑧/g' $tgt;
sed -i 's/[Ff]/𐑓/g' $tgt;
sed -i 's/[Gg]/𐑜/g' $tgt;
sed -i 's/[Hh]/𐑣/g' $tgt;
sed -i 's/[Ii]/𐑦/g' $tgt;
sed -i 's/[Jj]/𐑠/g' $tgt;
sed -i 's/[Kk]/𐑞/g' $tgt;
sed -i 's/[Ll]/𐑤/g' $tgt;
sed -i 's/[Mm]/𐑫/g' $tgt;
sed -i 's/[Nn]/𐑵/g' $tgt;
sed -i 's/[Oo]/𐑩/g' $tgt;
sed -i 's/[Pp]/𐑐/g' $tgt;
sed -i 's/[Rr]/𐑮/g' $tgt;
sed -i 's/[Ss]/𐑕/g' $tgt;
sed -i 's/[Tt]/𐑑/g' $tgt;
sed -i 's/[Uu]/𐑪/g' $tgt;
sed -i 's/[Ww]/𐑝/g' $tgt;
sed -i 's/[Yy]/𐑳/g' $tgt;
sed -i 's/[Zz]/𐑟/g' $tgt;
sed -i 's/\|//g' $tgt;
echo "Process Finnished!";
