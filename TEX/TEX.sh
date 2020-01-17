#All "TEX.sh"
echo "This is TeX Helper program.";
echo "LaTeX is Powerful!";
PRT=~/Documents/PRT
rm -f *.aux;
rm -f *.bbl;
rm -f *.blg;
rm -f *.log;
rm -f *.nav;
rm -f *.out;
rm -f *.snm;
rm -f *.toc;
echo "AUX Files cleaned!";
echo "PDF Moved!";
mv *.pdf $PRT/;
echo "Process Finished!";
