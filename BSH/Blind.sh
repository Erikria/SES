#Common: Blind.sh
echo "This is Braille Converter!";
echo "Please Input the Source and Target File:";
read src;

#Backup File
bak="$src~"
touch $bak;
cat $src > $bak;
tgt=$src

#Use SED
sed -i 's/[A,a]/⠁/g' $tgt;
sed -i 's/[B,b]/⠃/g' $tgt;
sed -i 's/[C,c]/⠉/g' $tgt;
sed -i 's/[D,d]/⠙/g' $tgt;
sed -i 's/[E,e]/⠑/g' $tgt;
sed -i 's/[F,f]/⠋/g' $tgt;
sed -i 's/[G,g]/⠛/g' $tgt;
sed -i 's/[H,h]/⠓/g' $tgt;
sed -i 's/[I,i]/⠊/g' $tgt;
sed -i 's/[J,j]/⠚/g' $tgt;
sed -i 's/[K,k]/⠅/g' $tgt;
sed -i 's/[L,l]/⠇/g' $tgt;
sed -i 's/[M,m]/⠍/g' $tgt;
sed -i 's/[N,n]/⠝/g' $tgt;
sed -i 's/[O,o]/⠕/g' $tgt;
sed -i 's/[P,p]/⠏/g' $tgt;
sed -i 's/[Q,q]/⠟/g' $tgt;
sed -i 's/[R,r]/⠗/g' $tgt;
sed -i 's/[S,s]/⠎/g' $tgt;
sed -i 's/[T,t]/⠞/g' $tgt;
sed -i 's/[U,u]/⠥/g' $tgt;
sed -i 's/[V,v]/⠧/g' $tgt;
sed -i 's/[W,w]/⠺/g' $tgt;
sed -i 's/[X,x]/⠭/g' $tgt;
sed -i 's/[Y,y]/⠽/g' $tgt;
sed -i 's/[Z,z]/⠵/g' $tgt;
echo "Process Finished!";
