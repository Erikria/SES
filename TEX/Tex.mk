#Makefile: A Script to Insert SVG into View.htm

#Object File Name
INSH = "Install.sh"

#Working Part
.PHONY: all

all:
	grep '\usepackage' *.tex | \
		sed -e "s/^.*{//g" -e "s/[ }]//g" | \
		tr "," "\n" | \
		sort -u > $(INSH)
	#Fundamental Packages
	echo "beamer \
		bibtex \
		bitset \
		changepage \
		environ \
		etoolbox \
		euenc \
		letltxmacro \
		pdfescape \
		realscripts \
		trimspaces \
		translator \
		xetex \
		zapfding" >> $(INSH)
	sed -i "s/\t/\n/g" $(INSH)
	sed -i "s/^/tlmgr install /g" $(INSH)
	chmod +x $(INSH)

clean:
	rm -f $(INSH)
