#!/usr/bin/env perl
#Package: Blind.pl
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
		$content =~ s/[A,a]/⠁/g;
		$content =~ s/[B,b]/⠃/g;
		$content =~ s/[C,c]/⠉/g;
		$content =~ s/[D,d]/⠙/g;
		$content =~ s/[E,e]/⠑/g;
		$content =~ s/[F,f]/⠋/g;
		$content =~ s/[G,g]/⠛/g;
		$content =~ s/[H,h]/⠓/g;
		$content =~ s/[I,i]/⠊/g;
		$content =~ s/[J,j]/⠚/g;
		$content =~ s/[K,k]/⠅/g;
		$content =~ s/[L,l]/⠇/g;
		$content =~ s/[M,m]/⠍/g;
		$content =~ s/[N,n]/⠝/g;
		$content =~ s/[O,o]/⠕/g;
		$content =~ s/[P,p]/⠏/g;
		$content =~ s/[Q,q]/⠟/g;
		$content =~ s/[R,r]/⠗/g;
		$content =~ s/[S,s]/⠎/g;
		$content =~ s/[T,t]/⠞/g;
		$content =~ s/[U,u]/⠥/g;
		$content =~ s/[V,v]/⠧/g;
		$content =~ s/[W,w]/⠺/g;
		$content =~ s/[X,x]/⠭/g;
		$content =~ s/[Y,y]/⠽/g;
		$content =~ s/[Z,z]/⠵/g;
	}
	substitute();
	print FILE $content;
	close FILE;
	print "Process Finished!\n";
}
