#!/usr/bin/env perl
#Package: TEX.pl
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
	$file =~ s/\.tex/\.xml/g;
	open(NEWFILE, ">", "$file") or die;
	$file =~ s/\.xml//g;
	local $/=undef;
	$content = <FILE>;
	sub substitute {
		#Clean TeX header part
		$content =~ s?(%!Graphics)(.*)(%Graphics Part)?<p>MISSING PICTURE!<\/p>?s;
		$content =~ s/(%!TEX)(.+)(%Header Part)/<!DOCTYPE html>/s;
		$content =~ s/\\maketitle\n//g;
		$content =~ s/\\date\{\}\n//g;
		$content =~ s/\\vspace\{.*\}\n//gm;
		$content =~ s/\\hspace\{.*\}\n//gm;
		$content =~ s?\{\}?<nospace \/> ?g;
		
		#Capture the embedded tags
		$content =~ s/^%.*\n//gm;
		$content =~ s/^[\{\}]$//gm;
		$content =~ s/\n\n/\n/g;
		$content =~ s?.\\?\n<nobreak \/>\n\\?g;
		$content =~ s?\}.?\}\n<nobreak \/>\n?g;
		
		#Generate XML header part
		$content =~ s?\\begin\{document\}?<html>\n<head>\n<meta charset="UTF-8" \/>\n<title>$file<\/title>\n<link href="Doc.css" rel="stylesheet" type="text\/css" \/>\n<\/head>\n<body>\n<div class="section0">?g;

		#Generate XML foot tags
		$content =~ s?\\end\{document\}?<\/div>\n<\/body>\n<\/html>?g;
		$content =~ s/\\text/\\/g;
		$content =~ s?\}?<\/\$tag>?g;
		$content =~ s?\}\n\n?<\/\$tag>\n?g;

		#Clean TeX header part
		$content =~ s/\\chn\n//g;
		$content =~ s/\\rus\n//g;

		#Convert main TeX tags
		$content =~ s/\\superscript\{/<sup>/g;
		$content =~ s/\\subscript\{/<sub>/g;
		$content =~ s/\\it\{/<i>/g;
		$content =~ s/\\bf\{/<b>/g;
		$content =~ s/\\title\{/<h1>/g;
		$content =~ s/\\section\{/<h2>/g;
		$content =~ s/\\author\{/<div class="author">/g;
		$content =~ s/\\subsection\{/<h3>/g;

		#Convert XML close tags
		#Under Construction...

		#Convert paragraph tags
		#Under Construction...
	}
	substitute();
	print NEWFILE $content;
	close NEWFILE;
	close FILE;
	print "Process Finished!\n";
}
