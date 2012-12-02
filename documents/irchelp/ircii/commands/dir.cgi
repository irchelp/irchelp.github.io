#!/usr/local/bin/perl

#####################################
##  Script options.  You specify   ##
##  the page title, any header,    ##
##  info, or footer info you want. ##
#####################################
##  Required files:                ##
##  index.cgi (this script)        ##
##                                 ##
##  Optional files:                ##
##  .info/  (file directory)       ##
##  .info/head.html (header file)  ##
##  .info/info.html (info file)    ##
##  .info/foot.html (foot file)    ##
#####################################
##  December 23, 1996              ##
##  David Delmont                  ##
##  kylania@radiks.net             ##
##  index.cgi                      ##
#####################################

##  Declare files and info.
##  0 = No, 1 = Yes

$include_head = "0";
$include_info = "0";
$include_foot = "0";

$title        = "Directory Listing";

$head_file    = ".info/head.html";
$info_file    = ".info/info.html";
$foot_file    = ".info/foot.html";

##  Print HTTP header.
print "Content-type: text/html\n\n";

## Print HTML header.
print <<End_of_header;
<!-- Begin HTML Head -->
<HTML>
<HEAD>
<TITLE>$title</TITLE>

<MAP NAME="nav_map">
<AREA SHAPE=RECT HREF="/irchelp/" COORDS="1,1,70,38">
<AREA SHAPE=RECT HREF="/irchelp/search_engine.cgi" COORDS="72,1,141,38">
<AREA SHAPE=RECT HREF="/irchelp/help.html" COORDS="143,1,212,38">
<AREA SHAPE=RECT HREF="/irchelp/mail.cgi" COORDS="214,1,283,38">
</MAP>

</HEAD>
<BODY BGCOLOR=#FFFFE8 TEXT=#7A0818>
<!-- End HTML Head -->

End_of_header

##  Print Optional Header.
if ($include_head) {
	open (HEAD, $head_file);
	@hlines = <HEAD>;
	close (HEAD);
	print "<!-- Begin INCLUDE Head -->\n";	
	print @hlines;
	print "<!-- End INCLUDE Head -->\n\n";
}

##  Print Optional Info.
if ($include_info) {
	open (INFO, $info_file);
	@ilines = <INFO>;
	close (INFO);
	print "<!-- Begin INCLUDE Info -->\n";
	print @ilines;
	print "<!-- End INCLUDE Info -->\n\n";
}

## Print files in directory.
print "<!-- Begin FILES -->\n";
print "<HR>\n";
print "<PRE>\n";

for (<*>) {
	if ( $_ ne "dir.cgi" ) {
		print "<A HREF=$_>$_</A><BR>\n";
	}
}

print "</PRE>\n";
print "<!-- End FILES -->\n\n";

##  Print Optional Footer.
if ($include_foot) {
	open (FOOT, $foot_file);
	@flines = <FOOT>;
	close (FOOT);
	print "<!-- Begin INCLUDE Foot -->\n";
	print @flines;
	print "<!-- End INCLUDE Foot -->\n\n";
}

##  Print HTML closing.
print <<End_of_footer;
<!-- Begin HTML Foot -->
<HR>
<!-- navigation bar -->
<CENTER>
<IMG SRC="/irchelp/Pix/ihnavbar.gif" BORDER=0 USEMAP="#nav_map" ALT="navbar">
<P>

</CENTER>
</BODY>
</HTML>
<!-- End HTML Foot -->

End_of_footer

##  Exit program.
exit(0);
