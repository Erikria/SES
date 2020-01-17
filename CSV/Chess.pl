#!/usr/bin/env perl
#Package: Chess.pl
use strict;
use utf8;
use warnings;
no warnings 'utf8';

binmode STDIN, ":encoding(utf8)";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";

my $GRE = "\033[1;32m";
my $BLU = "\033[1;34m";
my $DEF = "\033[0m";
my $BAR = "${BLU}+---+---+---+---+---+---+---+---+---+---+${DEF}";
my $VT = "${BLU}|${DEF}";
my $DT = "${GRE} · ${DEF}${VT}";

sub matrix {
	my $sum = 1;
	while ($sum <= 10) {
		do
		print "$VT$DT$DT$DT$DT$DT$DT$DT$DT$DT$DT\n";
		print "${BAR}\n"; 
		$sum = $sum + 1;
	}
}

sub main {
	print "\n${GRE}Mutt the Matrix${DEF}";
	print "${BLU} - - - - - ${DEF}";
	print "${GRE}NCurses Edition${DEF}";
	print "\n${BAR}\n";
	matrix();
	print "\n";
}

main();
