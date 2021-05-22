#!/usr/bin/env perl
#
# check twins
#
use strict;
use Test;
use File::Find;
use CPAN::Meta::YAML;
use Digest::file qw/digest_file_hex/;

require "./_scripts/t/global.inc";

BEGIN { plan tests=>2, todo=>[1,2] }

my ($count, @err);
my (%fn,%md5);

sub searchfn {
	if ($_ =~ m/\.md$/) {
		$fn{$_}++;
	}
	if (-f $_ && $_ !~ m/~$/) {
		my $m=digest_file_hex($_,"MD5");
		if (!exists $md5{$m}){
			$md5{$m}=[];
		}
		push @{$md5{$m}},$_;
	}
}

find(\&searchfn, @Global::paths);

$count=0;
print "# Test twins by file name\n";
foreach my $k ( sort keys %fn ) {
	if ($fn{$k}>1) {
		push @err, "$fn{$k}x'$k'";
		$count++;
	}
}
unless( ok($count==0) ){
	print STDERR "\n";
	while ( @err){
		print STDERR "# ".join(", ", splice(@err, 0, 7))."\n";
	}
}

@err=();
$count=0;
print "# Test twins by md5\n";
foreach my $k ( keys %md5 ) {
	if ( scalar(@{$md5{$k}}) >1 ) {
		push @err, "# binary twins (".join(", ",@{$md5{$k}}).")\n";
		$count++;
	}
}
ok($count==0) or print STDERR "\n",@err;

