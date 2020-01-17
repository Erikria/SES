#Common BSD.sh
#Colors
RED='\033[1;31m'
GRE='\033[1;32m'
BLU='\033[1;34m'
DEF='\033[0m'

#Variables
BSD="${RED}BSD${DEF}"
You="${BLU}You${DEF}"
OPT="Unknown"
IN="Unknown"

#Welcome Messages
echo -e "${BSD}: Benison or Straf Daemon";
echo -e "${BSD}: ${GRE}Benison${DEF} or ${RED}Straf${DEF}?";
printf "${You}: ";
read IN;

#Available Options: Benison, Straf and Exit
while [ ${IN} != "Benison" -a ${IN} != "Straf" -a ${IN} != "Exit" ];
do
	echo -e "${BSD}: Invalid Choice!";
	echo -e "${BSD}: Input ${GRE}Benison${DEF} or ${RED}Straf${DEF}!";
	echo -e "${BSD}: Or input ${BLU}Exit${DEF} to quit!";
	printf "${You}: ";
	read IN;
done

#Main Function
if [ ${IN} == "Benison" ];
then
	#Read Target
	echo -e "${BSD}: ${GRE}Benison${DEF} Chosen!";
	echo -e "${BSD}: Bless Whom?";
	printf "${You}: ";
	read Whom;
	
	while [[ ${Whom} == "" ]];
	do
		echo -e "${BSD}: No Target! Re-input!";
		printf "${You}: ";
		read Whom;
	done

	#Confirm Operation
	echo -e "${BSD}: Bless ${BLU}${Whom}${DEF}?";
	printf "${You}: ";
	read OPT;

	while [[ ${OPT} != "Yes" && ${OPT} != "No" ]];
	do
		echo -e "${BSD}: Input ${GRE}Yes${DEF} or ${RED}No${DEF}!";
		printf "${You}: ";
		read OPT;
	done

	if [ ${OPT} == "Yes" ];
	then
		echo -e "${BSD}: ${BLU}${Whom}${DEF} will be blessed!";
	else
		#Cancel Operation
		echo -e "${BSD}: Aborted!";
		echo -e "${BSD}: Au Revoir";
	fi

elif [ ${IN} == "Straf" ];
then
	#Read Target
	echo -e "${BSD}: ${RED}Straf${DEF} Chosen!";
	echo -e "${BSD}: Curse Whom?";
	printf "${You}: ";
	read Whom;
	
	while [[ ${Whom} == "" ]];
	do
		echo -e "${BSD}: No Target! Re-input!";
		printf "${You}: ";
		read Whom;
	done

	#Confirm Operation
	echo -e "${BSD}: Curse ${BLU}${Whom}${DEF}?";
	printf "${You}: ";
	read OPT;

	while [[ ${OPT} != "Yes" && ${OPT} != "No" ]];
	do
		echo -e "${BSD}: Input ${GRE}Yes${DEF} or ${RED}No${DEF}!";
		printf "${You}: ";
		read OPT;
	done

	if [ ${OPT} == "Yes" ];
	then
		echo -e "${BSD}: ${BLU}${Whom}${DEF} will be cursed!";
	else
		#Cancel Operation
		echo -e "${BSD}: Aborted!";
		echo -e "${BSD}: Au Revoir";
	fi

else
	#Cancel Operation
	echo -e "${BSD}: Au Revoir";
fi
