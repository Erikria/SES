#Linux "Cover.sh"
#Usage: $./Cover.sh <Source PDF> <Cover>
SRC=$1
CVR=$2

#Let SED create the new file name
TGT=$(echo $1 | sed 's/\.pdf/-N\.pdf/')

/opt/APP/QPDF.appimage $1 --overlay $2 --to=1-1 --from=1-1 -- $TGT;
echo 'Process Finished!';
