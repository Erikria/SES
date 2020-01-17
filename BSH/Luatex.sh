#!/bin/bash
TEX=/home/erikria/.local/TEX
echo "This is Luatex Cleaner!";
sed -i '/^depend luatex/d' $TEX/tlpkg/texlive.tlpdb;
rm -f $TEX/bin/x86_64-linux/*lua*;
$TEX/bin/x86_64-linux/tlmgr list --only-installed | grep "lua";
echo "Use `tlmgr remove <PKG>` to uninstall LuaTeX!";
echo "Process Finished!";
