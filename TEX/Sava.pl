#!/usr/bin/env perl
#Package: Sava.pl
use strict;
use utf8;
use warnings;
no warnings 'utf8';

binmode STDIN, ":encoding(utf8)";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";

my ($content, $file, $num_args);

$num_args = $#ARGV + 1;
if ($num_args != 1) {
	print "This program need one argument!\n";
	print "Usage: <PERL_PACKAGE> <FILE>\n";
	exit;
}
else {
	$file = $ARGV[0];
	open(FILE, "<", "$file") or die;
	open(OLDFILE, ">", "$file~") or die;
	local $/=undef;
	$content = <FILE>;
	print OLDFILE $content;
	close OLDFILE;
	close FILE;

	open(FILE, ">", "$file") or die;
	sub substitute {
		$content =~ s/[Aa][Uu]/𐑬/g;
		$content =~ s/[Oo][Uu]/𐑶/g;
		$content =~ s/[Ee][Aa]/𐑾/g;
		$content =~ s/[Ee][Uu]/𐑴/g;
		$content =~ s/[Cc][Hh]/𐑙/g;
		$content =~ s/[Ss][Hh]/𐑖/g;
		$content =~ s/[Tt][Hh]/𐑔/g;
		$content =~ s/[Ww][Hh]/𐑣𐑝/g;
		$content =~ s/[Ââ]/𐑲/g;
		$content =~ s/[Êê]/𐑱/g;
		$content =~ s/[Îî]/𐑰/g;
		$content =~ s/[Ôô]/𐑥/g;
		$content =~ s/[Ûû]/𐑯/g;
		$content =~ s/[Aa]/𐑨/g;
		$content =~ s/[Bb]/𐑚/g;
		$content =~ s/[Cc]/𐑒/g;
		$content =~ s/[Dd]/𐑛/g;
		$content =~ s/[Ee]/𐑧/g;
		$content =~ s/[Ff]/𐑓/g;
		$content =~ s/[Gg]/𐑜/g;
		$content =~ s/[Hh]/𐑣/g;
		$content =~ s/[Ii]/𐑦/g;
		$content =~ s/[Jj]/𐑠/g;
		$content =~ s/[Kk]/𐑞/g;
		$content =~ s/[Ll]/𐑤/g;
		$content =~ s/[Mm]/𐑫/g;
		$content =~ s/[Nn]/𐑵/g;
		$content =~ s/[Oo]/𐑩/g;
		$content =~ s/[Pp]/𐑐/g;
		$content =~ s/[Rr]/𐑮/g;
		$content =~ s/[Ss]/𐑕/g;
		$content =~ s/[Tt]/𐑑/g;
		$content =~ s/[Uu]/𐑪/g;
		$content =~ s/[Ww]/𐑝/g;
		$content =~ s/[Yy]/𐑳/g;
		$content =~ s/[Zz]/𐑟/g;
		$content =~ s/|//g;
	}
	substitute();
	print FILE $content;
	close FILE;
	print "Process Finished!\n";
}
