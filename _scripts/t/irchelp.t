#!/usr/bin/env perl
#
# check http://www.irchelp.org links
#
use strict;
use Test;
use File::Find;

require "./_scripts/t/global.inc";

BEGIN { plan tests=>1, todo=>[] }

my ($count);

sub searchirchelp {
	if ($_ =~ m/\.md$/ && -f $_) {
		open my $fi, "<", $_;
		my $ct=0;
		while (my $r = <$fi>) {
			if ( $r =~ m#\(https?://www\.irchelp\.org# ) {
				$ct++;
			}
		}
		close $fi;
		if ($ct >0) {
			print "# $ct irchelp links in file '$File::Find::name'\n";
			$count++;
		}
	}
}

print "# Test http://www.irchelp.org links\n";
$count=0;
find(\&searchirchelp, @Global::paths);
ok($count ==0);

