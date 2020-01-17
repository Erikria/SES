#Termux "~/Config.sh"
echo "This is Termux Setting Manager!";
share=$PREFIX/share
user=/mnt/sdcard
font=$user/SoftMaker/Fonts
vim=$share/vim

#Add User Names
echo "Welcome to Termux!" > $PREFIX/etc/motd;
echo "Administrator: Erikria" >> $PREFIX/etc/motd;

#Create Semi-links
if [ -L User -o -L Baks -o -L Blue -o -L Docs -o -L Uget -o -L Imag -o -L Self ];
then
	echo "Links already exist".
else
	ln -s $user/ User;
	ln -s $user/Backups/ Baks;
	ln -s $user/Bluetooth/ Blue;
	ln -s $user/Documents/ Docs;
	ln -s $user/Download/ Uget;
	ln -s $user/Pictures/ Imag;
	ln -s $PREFIX/ Self;
fi

#If SDCard exists
if [ -d /storage/7874-1C07 ];
then
	ln -s /storage/7874-1C07/ Card;
	echo "SDCard Linked";
else
	echo "No SDCard!";
fi

echo "Process Finished!";
