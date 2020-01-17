#Linux "~/.config/Purge.sh"
#Home Cleaner
#cat /dev/null > ~/.bash_history;
#cat /dev/null > ~/.xsession-errors;
rm -rf ~/.icons/;
rm -rf ~/.pki/;
rm -rf ~/.cache/go-build/;
rm -f ~/.lesshst;
rm -f ~/.sqlite_history;
rm -f ~/.xsession-errors.old;
echo Process Finished!;
