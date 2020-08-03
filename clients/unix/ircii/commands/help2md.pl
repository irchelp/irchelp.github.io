#!/usr/bin/perl
#
# ircii help to md
# Usage: help2md.pl <helpdir> <output dir> <version string>
#
# Copyright (c) 2020 bw1
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.

use strict;
use Time::Piece;
use File::Find;
use File::Glob qw/:bsd_glob/;
use File::Spec;

if (@ARGV != 3) {
	print "Usage: help2md.pl <helpdir> <output dir> <version string>\n";
	exit(0);
}

# destination
my $dest= File::Spec->rel2abs(bsd_glob($ARGV[1]));
# source
chdir bsd_glob( $ARGV[0]);

# version
my $version= $ARGV[2];

# cache for index.html
my %root;

my ($sign);

# date
my $ltime=localtime();
my $date=$ltime->mday.' '. $ltime->fullmonth.' '. $ltime->year;

# md header
sub header {
	my ($fa, $name) = @_;
	my $h= <<END;
---
title: 'ircii help: $name'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: $date
layout: default
license: ircii
summary: >
  ircii version: $version
  create with help2md.pl
---
END
	print $fa  $h;
}

# change filename to url save name
sub filename {
	my ($fn)= @_;
	$fn=~ s/!/Exclamation_mark/g;
	$fn=~ s/:/Colon/g;
	$fn=~ s/@/At_sign/g;
	$fn=~ s/\./Full_stop/g;
	return $fn;
}

# dir ?
sub dir5 {
	my ($link, $parent)=@_;
	my $r;
	if ( -f $link) {
		$r= ".html";
	} elsif ( -d $link ) {
		$r="/index.html";
		$sign="/";
	} else {
		print "Warning: $parent: $link\n";
	}
	return $r;
}

# help to md
sub help2md{
	my ($f, $d)=@_;
	open my $fi, "<", $f;
	my $fn= filename($f);
	my $ofn="$dest/$d/$fn.md";
	open my $fa, ">:utf8", $ofn
		or die ( "Error: Can't open file $ofn $!");
	header($fa, $f);
	my $pre=1;
	print $fa '```'."\n";
	while ( my $r = <$fi> ) {
		next if ($r =~ m/^!/);
		if (($r =~ m/^See Also/ || $r=~ m/^See.*more information/) && $pre) {
			print $fa '```'."\n";
			$pre=0;
		}
		$r =~ s/[\x02]//g;
		if ( $r=~ m/\x1f(.+)\x1f/ && $pre==0 ) {
			my $ln=$1;
			my $ld=$ln;
			$ld= lc($ld);
			$ld=~ s/\x1f//g;
			$ld=~ s# #/#g;
			$sign='';
			my ($begin, $end);
			if (-e $ld ) {
				$end=dir5("$ld", $f); 
			} else {
				$begin="../";
				$end=dir5("$begin$ld", $f); 
			}
			$ld =filename($ld);
			$r=~ s/\x1f\Q$ln\E\x1f/\[$ln$sign\]\($begin$ld$end\)/x;
		}
		print $fa $r;
	}
	close $fi;
	if ( $pre ) {
		print $fa '```'."\n";
	}
	print $fa "\n[index](index.html)\n";
	print $fa "[up](..)\n";
	print $fa "\n";
	print $fa "<small> ircii $version </small>\n";
	close $fa;
}

# go to all files in sourc dir
sub search {
	next if ( $_ =~ m/^\./ );
	if ( !exists $root{$File::Find::dir} ) {
		$root{$File::Find::dir}=[];
	}
	push(@{$root{$File::Find::dir}}, $_);
	if( -f $_) {
		#print "$File::Find::name\n";
		help2md($_, $File::Find::dir);
	}
	if( -d $_) {
		mkdir "$dest/$File::Find::dir/$_"
	}
}

find(\&search, ".");

# create index.html's
foreach my $d (keys %root) {
	open my $fa, ">:utf8", "$dest/$d/index.md";
	header( $fa, "$d/index" );
	my $first='';
	foreach my $f ( sort @{$root{$d}} ) {
		my $n= $f;
		#$f = filename($f).".html";
		$f = filename($f);
		$sign='';
		if( -f "$d/$n") {
			$f .=".html";
		} else {
			$f .="/index.html";
			$sign="/";
		}
		if ($first ne substr($n, 0, 1)) {
			$first = substr($n, 0, 1);
			print $fa "\n\n$first\n:  ";
		}
		print $fa "[$n$sign]($f) ";
	}
	print $fa "\n\n[up](..)\n";
	close $fa;
}
