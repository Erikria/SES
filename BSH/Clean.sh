#Termux "~/Clean.sh"
echo "This is cleaning program!";
user=/mnt/sdcard
uget=$user/Download
rm -rf $user/{.*Config,.app*,.c*,.Data*,.m*,.s*,.tr*,.UTS*,.Wooden*};
rm -rf $user/{alipay,amap,AndroLua,easys,free.vpn*,go*,Metro,sang*,t*,Wooden*,xlog};
rm -rf ~/.local/share/vifm/Trash/*;
rm -rf $uget/{.1,.c*};
shopt -s extglob;
echo "EXTGLOB Started!";
rm -rf $user/Tencent/!(MicroMsg);
ls -A $user;
echo "Process Finnshed!";
