#All "CTAN.sh" for TeXLive
echo "This is CTAN program!";
echo "Please move me to '\$TEX/bin/'!";
echo "Preparing install XeTeX!";

bin=x86_64-linux
if [ -e ./$bin/tlmgr ];
then
	./$bin/tlmgr install beamer;
	./$bin/tlmgr install bibtex;
	./$bin/tlmgr install changepage;
	./$bin/tlmgr install cite;
	./$bin/tlmgr install environ;
	./$bin/tlmgr install etoolbox;
	./$bin/tlmgr install euenc;
	./$bin/tlmgr install fancyhdr;
	./$bin/tlmgr install float;
	./$bin/tlmgr install fontspec;
	./$bin/tlmgr install geometry;
	./$bin/tlmgr install graphics;
	./$bin/tlmgr install picinpar;
	./$bin/tlmgr install ragged2e;
	./$bin/tlmgr install realscripts;
	./$bin/tlmgr install tcolorbox;
	./$bin/tlmgr install trimspaces;
	./$bin/tlmgr install translator;
	./$bin/tlmgr install wrapfig;
	./$bin/tlmgr install xcolor;
	./$bin/tlmgr install xetex;
	./$bin/tlmgr install xltxtra;
	./$bin/tlmgr install xunicode;
	./$bin/tlmgr install zapfding;
else
	echo "TeXLive is not installed!";
fi
echo "Process Finished!";
