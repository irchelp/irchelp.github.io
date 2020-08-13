#!/usr/bin/env perl
#
# check 
#
use strict;
use TAP::Harness;

my $harness = TAP::Harness->new( { verbosity=>0, color=>1} );
my $result= $harness->runtests(<_scripts/t/*.t>);

exit( scalar $result->failed );

