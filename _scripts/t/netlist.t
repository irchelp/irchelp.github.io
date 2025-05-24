#!/usr/bin/env perl
#
# check netlist.yaml and catlist.yaml
#
use strict;
use Test;
use CPAN::Meta::YAML;

require "./_scripts/t/global.inc";

BEGIN { plan tests=>8, todo=>[] }

# netlist read
my $fn="./_data/netlist.yaml";
my ( $ynet, $snet);
do {
	local *STDERR;
	open STDERR, '>>', \$snet;
	eval {
		open my $fh, "<:utf8", $fn;
		my $yt = do { local $/; <$fh> };
		$ynet=CPAN::Meta::YAML->read_string($yt);
		close $fh;
	};
	print STDERR $@;
};
my $r = "\n# ".join("\n# ",split(/\n/, $snet))."\n";
print STDERR $r if ($snet ne '');
ok($ynet); # netlist yaml error
ok($snet eq ''); # netlist yaml warnings

my $err='';
my @onlyp = qw/
  image
  homepage
  irchelp
  webchat
  slocation
  services
  support_channels
  information
  servers
  webserverlist
  webstatistic
  category
  status
  check
  comment
/;

my %onlyp;
foreach my $p ( @onlyp ) {
	$onlyp{$p}=0;
}
foreach my $net ( keys %{$ynet->[0]} ) {
	next if ($net eq 'property');
	foreach my $k ( keys %{$ynet->[0]->{$net}} ) {
		if ( !exists( $onlyp{$k} )) {
			$err .= "# unknown property $k in $net\n";
		}
	}
}
print STDERR "\n$err" if ($err ne '');
ok($err eq ''); # netlist only property

my $err='';
my @minp = qw/
  information
  servers
  category
  status
/;

foreach my $net ( keys %{$ynet->[0]} ) {
	next if ($net eq 'property');
	foreach my $k ( @minp ) {
		if ( !exists( $ynet->[0]->{$net}->{$k} )) {
			$err .= "# missing $k in $net\n";
		}
	}
}
print STDERR "\n$err" if ($err ne '');
ok($err eq ''); # netlist min property

# catlist read
my $fn="./_data/catlist.yaml";
my ($ycat, $scat);
do {
	local *STDERR;
	open STDERR, '>>', \$scat;
	eval {
		open my $fh, "<:utf8", $fn;
		my $yt = do { local $/; <$fh> };
		$ycat=CPAN::Meta::YAML->read_string($yt);
		close $fh;
	};
	print STDERR $@;
};
my $r = "\n# ".join("\n# ",split(/\n/, $scat))."\n";
print STDERR $r if ($scat ne '');
ok($ycat); # catlist yaml error
ok($scat eq ''); # catlist yaml warnings

my %cat;
my %ccat;
foreach my $net ( keys %{$ynet->[0]} ) {
	next if ($net eq 'property');
	next if ($ynet->[0]->{$net}->{status} ne 'active');
	foreach my $ca ( @{$ynet->[0]->{$net}->{category}} ) {
		$cat{$net}->{$ca}=0;
		$ccat{$ca}->{$net}=0;
	}
}

my $err='';
foreach my $ca ( keys %{$ycat->[0]} ) {
	foreach my $net ( @{$ycat->[0]->{$ca}} ) {
		if( !exists( $cat{$net}->{$ca} ) ) {
			$err .= "# catlist too much $net in $ca\n";
		}
	}
}
print STDERR $err if ($err ne '');
ok($err eq ''); # catlist too much

my $err='';
foreach my $ca ( keys %ccat ) {
	if ( !exists $ycat->[0]->{$ca} ) {
		$err .= "# catlist missing category  $ca\n";
		next;
	}
	my %n=();
	foreach my $net ( @{$ycat->[0]->{$ca}} ) {
		$n{$net}=0;
	}
	foreach my $net ( keys %{$ccat{$ca}} ) {
		if (!exists $n{$net}) {
			$err .= "# catlist missing $net in $ca\n";
		}
	}
}
print STDERR $err if ($err ne '');
ok($err eq ''); # catlist missing

