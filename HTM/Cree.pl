#!/usr/bin/env perl
#Package: Cree.pl
use strict;
use utf8;
use warnings;
no warnings 'utf8';

binmode STDIN, ":encoding(utf8)";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";

my ($AUX, $CREE, $Line_AUX, $Line_CREE, $SITE);

#Generate Cree.htm
$CREE = "Cree.htm";
open(FILE_1, "<", "$CREE~") or die;
open(NEWFILE_1, ">", "$CREE") or die;
local $/=undef;
$Line_CREE = <FILE_1>;

sub substitute {
	$Line_CREE =~ s?<!--INSERT WEBSITES HERE!-->.*<\/html>?<!--INSERT WEBSITES HERE!-->?gs;
}

substitute();
print NEWFILE_1 $Line_CREE;
close NEWFILE_1;
close FILE_1;

#Convert URL Links (Markdwon to HTML)
$SITE = "Site.md";
$AUX = "Cree.aux";
open(FILE_2, "<", "$SITE") or die;
open(NEWFILE_2, ">", "$AUX") or die;
local $/=undef;
$Line_AUX = <FILE_2>;

sub convert {
	$Line_AUX =~ s/\./\{DOT\}/g;
	$Line_AUX =~ s?#\[END\]?\\\.<\/td>\n\\<\/tr>?g;
	$Line_AUX =~ s/#\[URL\]/\\<tr>/g;
	$Line_AUX =~ s?#\[HD\]?\\<\/tr>\n\\<tr>\n\\\.<td>?g;
	$Line_AUX =~ s?#\[SD\]?\\\.<\/td>\n\\<\/tr>\n\\<tr>?g;
	$Line_AUX =~ s?#\[TD\]?\\\.<\/td>\n\\\.<td>?g;
	$Line_AUX =~ s?- \[TH\]\(?\\\.<th>?g;
	$Line_AUX =~ s/- \[LN\]\[/\\\.\.<div><a href="/g;
	$Line_AUX =~ s?\)?<\/th>?g;
	$Line_AUX =~ s/\] \*/">/g;
	$Line_AUX =~ s?\*?<\/a><\/div>?g;
	$Line_AUX =~ s/\./\t/g;
	$Line_AUX =~ s/\\/\t\t\t\t/g;
	$Line_AUX =~ s/\{DOT\}/\./g;
	$Line_AUX =~ s/\r//g;
}

convert();
print NEWFILE_2 $Line_AUX;
close NEWFILE_2;
close FILE_2;

#Merge Cree.htm and Cree.aux
#Use Bash Script
`cat ./Cree.aux >> Cree.htm`;
`echo "\t\t\t</table>\n\t\t</div>\n\t</fieldset>\n</fieldset>\n</body>\n</html>" >> Cree.htm`;

print "Process Finished!\n";
