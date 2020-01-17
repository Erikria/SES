#Termux "~/Wechat.sh"
echo "This is Wechat Cleaner!";
wechat=/mnt/sdcard/Tencent/MicroMsg;
if [ -d $wechat/recovery -o -d $wechat/Cache ];
then
	rm -rf $wechat/{Cache,card,CDNTemp,CheckResUpdate,Game,Handler,newyear,recovery,sns_ad_landingpages,SQLTrace,vproxy,vusericon,wallet,xlog};
	touch $wechat/{Cache,Card,CDNTemp,CheckResUpdate,Game,Handler,Newyear,Recovery,SNS_AD_LandingPages,SQLTrace,VProxy,VUserIcon,Wallet,XLog};
	echo "Generate files successfully!";
else
	echo "Wechat files has been occupied!";
	echo "No need to clean!";
fi
echo "Process Finished!";
