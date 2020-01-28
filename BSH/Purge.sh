#!/usr/bin/env bash
#Linux "$HOME/.config/Purge.sh"

#Dangerous Commands
Remove="/bin/rm -rf"
#Dangerous Commands
${Remove} $HOME/.icons;
${Remove} $HOME/.pki;
${Remove} $HOME/.cache/go-build;
${Remove} $HOME/.cache/pip;
${Remove} $HOME/.lesshst;
${Remove} $HOME/.sqlite_history;
${Remove} $HOME/.xsession-errors.old;
echo Process Finished!;
