#!/usr/bin/env perl
#Package: Logo.pl
use strict;
use utf8;
use warnings;
no warnings 'utf8';

binmode STDIN, ":encoding(utf8)";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";

my ($num_args);

sub error {
	printf ("This program need one argument!\n");
	printf ("Usage: <PERL_PACKAGE> -[achl]\n");
}

sub help {
	printf ("Available Arguments:\n");
	printf ("-a Show Both Logo\n");
	printf ("-c Show Cree Logo\n");
	printf ("-h Show Additional Help\n");
	printf ("-l Show Luna Logo\n");
	exit;
}

$num_args = $#ARGV + 1;
if ($num_args != 1) {
	error();
	printf ("\n");
	help();
}

#CREE Logo
sub cree{
	printf("ASCII ART: CREE\n");
	printf("
┌────────────────────────────────────────────┐
│............................................│
│...████████.................................│
│...██........████████..████████..████████...│
│...██..............██..██..▄▄....██..▄▄.....│
│...██........████████..██..▀▀....██..▀▀.....│
│...████████..██........████████..████████...│
│............................................│
└────────────────────────────────────────────┘
\n");
}

#Luna Logo
sub luna{
	printf("ASCII ART: Luna\n");
	printf("
┌────────────────────────────────────────────┐
│............................................│
│...██.......................................│
│...██........██....██....████......████.....│
│...██........██....██..██....██..██....██...│
│...██........██....██..██....██..████████...│
│...████████....████....██....██..██....██...│
│............................................│
└────────────────────────────────────────────┘
\n");
}

if ($ARGV[0] =~ "-a") {
	printf ("\n");
	cree();
	luna();
}
elsif ($ARGV[0] =~ "-c") {
	printf ("\n");
	cree();
}
elsif ($ARGV[0] =~ "-h") {
	help();
}
elsif ($ARGV[0] =~ "-l") {
	printf ("\n");
	luna();
}
else {
	error();
	help();
}
