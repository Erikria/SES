#Makefile: A Script to Insert SVG into View.htm

#Object File Name
cree = Cree.sh
name = Batch.sh
view = View.htm
bak = $(view)~
OSE = ~/Public/OSE

#Working Part
.PHONY: all

all:
ifeq ($(cree), $(wildcard $(cree)))

#Begin IF
#Generate View.htm
ifeq ($(bak), $(wildcard $(bak)))
	cat $(view)~ > $(view)
#Generate Batch File
	ls $(OSE)/SVG | grep svg > $(name)
	sed -i "/E-Plus\.svg/d" $(name)
	sed -i "/Erikria\.svg/d" $(name)
	sed -i "s/^/\. Cree.sh /g" $(name)
	sed -i "s/\.svg/;/g" $(name)
	chmod +x $(name)
	bash ./$(name)
else
	@ echo "ERROR: $(bak) is missing!"
endif
#End IF

else
	@ echo "ERROR: $(cree) is missing!"
endif
