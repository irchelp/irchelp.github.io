#!/usr/bin/env perl
#
# check yaml header
#
use strict;
use Test;
use File::Find;
use CPAN::Meta::YAML;

require "./_scripts/t/global.inc";

BEGIN { plan tests=>2, todo=>[] }

my @fields= (
	'title',
#	'author',
#	'datecreated',
#	'dateupdated',
#	'status',
#	'layout',
#	'license',
);

my ($count, $count_yml);
my (@err, @err_yml);

sub searchheader {
	if ($_ =~ m/\.md$/ && -f $_) {
		open my $fi, "<", $_;
		my $r = <$fi>;
		my $ymls;
		if ($r !~ m/^---/) {
			push @err, "#--no header in file '$File::Find::name'\n";
			$count++;
		} else {
			while ($r = <$fi> ) {
				if ($r =~ m/^---/) {
					last;
				}
				$ymls.=$r;
			}
			my $yml = CPAN::Meta::YAML->read_string($ymls);
			my @r;
			foreach my $k ( @fields ) {
				if ( !exists $yml->[0]->{$k} ){
					push @r, $k;
				}
			}
			if ( scalar (@r) > 0 ) {
				$count_yml++;
				push @err_yml, "#--fields (".join(", ", @r).") in file '$File::Find::name' not found\n";
			}
		}
		close $fi;

	}
}

print "# Test yaml header begin\n";
$count=0;
$count_yml=0;
find(\&searchheader, @Global::paths);
ok($count==0) or print STDERR @err;
print "# Test yaml header fields\n";
ok($count_yml== 0 ) or print STDERR @err_yml;

