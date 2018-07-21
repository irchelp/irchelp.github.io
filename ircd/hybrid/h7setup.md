Ed. note: Hybrid 7 is the latest version of IRC server software likely to be
adopted by most of [EFnet](../networks/nets/big4.html) and many other
networks. This guide is part of our [ircd help
section](http://www.irchelp.org/ircd/), and is intended for the
relative novice. Before you attempt to set up your own ircd, you should be
reasonably expert at both the IRC protocol and UNIX. For example, have you set
up IRC clients on UNIX before (not one of those auto-install deals, but rather
downloading, uncompressing, configuring, compiling, and installing it the old
fashioned way)? That would be a minimal test of your experience. I would also
suggest you first look over the [Server Request FAQ](server-request.html) to
make sure you really want to do this. -Jolo

# A guide to setting up a basic Hybrid 7 irc server

By: [NoizyToyz](http://axminister.ath.cx/icegate/) (Klaus Duren)

Special thanks to: Vamps, Apatrix.

last updated Apr 8, 2001

## Contents

  1. Introduction 
  2. Requirements 
  3. Obtaining the latest release 
  4. Attention 
  5. Unpacking the source 
  6. Editing the ircd source to meet your needs 
  7. Compiling and making the server 
  8. Editing your ircd.conf file 
  9. Testing your server 
  10. Commands 
  11. Automation 

## 1. Introduction

Welcome. This document is to help with the configuration, compiling, and basic
use of Hybrid 7. This guide is the first one I have written, so it most likely
wont be the best, but I will try to do my best :).

The following task is not going to be an easy one. This can consume hours of
your time. Make sure you are committed to this when you start it, as it may be
difficult to pick up where you left off.

Side note, while you _CAN_ run an irc server off of a connection as low as a
56k, however, it is not a good idea. if you are doing it for personal reasons,
cable is probably ideal. For public applications, such as linking to the
popular networks, you will most likely have to have a minimum of a t3
connection to be accepted.

*The author has successfully compiled Hybrid 7 beta on FreeBSD, Linux Mandrake 7.2, various versions of Solaris, and versions of Redhat. 

*The default directory is /usr/local/ircd/* 

Lets get started!

## 2. Requirements

  * UNIX or compatible operating system 
  * tar application to unpack the source code 
  * latest version of Autoconf 
  * latest version of GCC 

## 3. Obtaining the latest release

You can get the latest version of h7 from the [IRCdhelp.org ircd
archive](http://www.ircdhelp.org/ircdvers.html).

[As of the creation of this guide, the latest version is ircd-hybrid-
7beta1.tgz]

## 4. Attention

Before we go any further:

As a matter of principle, if something can run as a non-root user, it should
do so. Running daemons as root risks much higher damage in the event of a
security breach. If ircd is one day shown to have an exploitable bug that
yields ircd user privilages and the ircd user is root, you may find yourself
in dire straits indeed. Ircd will work just fine without root privileges. So
create an ircd user before you do anything and su(1) to it for the
installation.

## 5. Unpacking the source

The source package comes in a gzip'ed tar file (.tar.gz). Copy the file to a
directory you wish to install the Hybrid 7 source under. To unpack it use the
following command: tar -zxf filename If your system's tar program does not
support the -z flag gunzip (or gzip -d) it first and then 'tar -xf filename',
or, tar -xvf </path/filename>.

## 6. Editing the ircd source to meet your needs

Before we get started, you can damage the source code and your compile may
fail if you tamper with any of the files that aren't mentioned here. unless
you _ABSOLUTELY_ _POSITIVELY_ know what you are doing, don't mess with them!

The files we will cover in this section:

  * /<path to source>/include/config.h - Compile time configuration 
  * /<path to source>/messages/custom.po - Server messages file 

### A. /<path to source>/include/config.h customization walkthrough

*Above every section in config.h is a farily detailed description on what that particular statement will do if #define'd or #undef'd* 

The first thing to do: Edit directory and file locations to suit your needs,
if you dont know anything about it, or want it to install to its default
locations, Leave them be. The things you may want to edit go as follows: DPATH
= root directory of installation

MODPATH = path to module directory

MSGPATH = path of directory containing a message (.mo) file

SPATH = the server executeable

CPATH = the conf (configuration) file

KPATH = kline conf file

DLPATH = dline conf file

RPATH = RSA keyfile

MPATH = motd file

PPATH = pid file

HPATH = oper help file (displayed through /quote help)

OPATH = path to the MOTD for opers

Examples of the paths:

    
    
    #define DPATH   IRCD_PREFIX *leave blank for default path*
    #define MODPATH IRCD_PREFIX "/modules/autoload/"
    #define MSGPATH IRCD_PREFIX "/messages/"
    #define SPATH   IRCD_PREFIX "/bin/ircd"
    #define CPATH   ETCPATH "/ircd.conf"
    #define KPATH   ETCPATH "/kline.conf"
    #define DLPATH  ETCPATH "/kline.conf"
    #define RPATH   ETCPATH "/ircd.rsa"
    #define MPATH   ETCPATH "/ircd.motd"
    #define PPATH   ETCPATH "/ircd.pid"
    #define HPATH   ETCPATH "/opers.txt"
    #define OPATH   ETCPATH "/opers.motd"
    

The below portion is for the basic configuration of config.h to get you going
faster. Change nothing unless it is specified below if you're new at this.

You may want to increase the TS delta if you're linking a server that does not
always have the precise time. Rather than breaking TS though, you should synch
your local time with a time server using ntpdate(8) or similar program and
leave the TS delta be. If you get TS delta errors while linking servers, synch
the time on both systems via NTP. Clock drift can be significant, you should
automate the procedure to perform at least on a daily basis.

Unless your going to run your server on EFnet, change NETWORK_NAME_DEFAULT and
NETWORK_DESC_DEFAULT to reflect your network information.

CRYPT_OPER_PASSWORD:

This is something you're better off doing if the ircd is running on a machine
to which untrusted third parties, such as shell users, have access. Generate
encrypted passwords using the mkpasswd utility which is built in as part of
the ircd package.

To enable encryption:

#define CRYPT_OPER_PASSWORD

#define CRYPT_LINK_PASSWORD * i think that both servers participating server
need matching CRYPT_LINK_PASSWORD lines. If the server your goint to link to
has it #undef'd, #undef it, and vice-versa.

To disable encryption:

#undef CRYPT_OPER_PASSWORD

#undef CRYPT_LINK_PASSWORD

To change the number of channels that a user is allowed to be on at a time is
determined by #define MAXCHANNELSPERUSER x (where x is, put a number from, ill
say 1 to 30 - the default, and recomended value is 15) [The smaller your
bandwith, the lower the number should be i guess]

### B. /<path to source>/messages/custom.po

Edit this file if you want the server to display your own messages.

## 7. Compiling and making the server

Well, now that you've conquered at least the basic configuration of config.h
and custom.po (optionally), you're ready to configure and compile the server.

To configure: cd to /<path to source>

./configure --prefix="/path/to/install/to"

(if you want to compile to the default directory, just do ./configure)

As soon as its done, and assuming it completed successfully, type, make -If it
did not complete successfully, obtain the proper things, and try it again!

@ Things? What things?

If the make procedure was successful, lastly, type make install -If make
failed, do whats described above about unsuccessful ./configure

## 8. Editing your ircd.conf file

Now, you will want to cd to /<install path>/etc/ and then edit example.conf.

For a quick config, follow this guide:

Edit the serverinfo block to roughly look like the below:

    
    
    (serverinfo replaces the old M: line)
    serverinfo {
    	name="<server name>";
    	description="<server description>";
    	#The network_name and network_desc variables override
    	#the compiled in defaults.  These are used for server
    	#hiding.
    	network_name="-";
    	network_desc="-";
    	# HUB is no longer a compiled in option.  It is set at 
    	# runtime in this block and changable with a REHASH
    	hub=yes;
    	# vhost defines what IP to bind to for *OUTGOING* connections.
    	# This replaces the old M: line IP, and is only needed for 
    	# multi-homed or virtual hosted machines not using the default
    	# IP.  Note that you *MUST* use the IP, not a hostname, and it
    	# cannot be in quotes
    	# vhost=192.169.0.1;
    };
    

Now to edit the Admin block:

    
    
    admin {
    	name="<primary server administrator's name>";
    	email="<email@address>";
    	description="<server admin description>";
    };
    

Leave everything be until you get to the listen block.

    
    
    listen {
    	# accepts hostnames as well as ips
    	# ip="192.168.0.1";
    	port=<listen for connection requests from this port (commonly 6667)>;
    };
    

Dont bother modifying anything from the listen block to the operator block:

    
    
    operator {
    	# The nick of the oper
    	name="<the nickname of the desired oper>";
    	# user@host, note that CIDR in O: lines is not *CURRENTLY* 
    	# supported (an important note for Hybrid 6 users)
    	user="*<identd username>@*<hostmask>";
    	# The encrypted password used in the OPER command
    	# Note:  if you #undef CRYPT_OPER_PASSWORD in config.h, you must
    	#        use the plaintext password here.  MD5 passwords are 
    	#        supported and available on some platforms (FreeBSD 4.x
    	#        and Linux glibc are known to work)
    	# password="$1$tPH$nN7t5Jj14wYCoDZXc4fe91";
    	# password="etcnjl8juSU1E"
    	password="<password>";
    	class="opers";
    	# Allow the oper to global KILL (old O flag)
    	global_kill=yes;
    	# Allow the oper to remote SQUIT and CONNECT (old R flag)
    	remote=yes;
    	# Allow the oper to issue KLINE and DLINE (old K flag)
    	kline=yes;
    	# Allow the oper to issue UNKLINE and UNDLINE (old U flag)
    	unkline=yes;
    	# Allow the oper to issue GLINE (old G flag)
    	gline=yes;
    	# Allow the oper to issue DIE and RESTART (old D flag)
    	die=yes;
    	# Allow the oper to issue REHASH (old H flag)
    	rehash=yes;
    	# Allow the oper to see nick changes (old N flag)
    	nick_changes=yes;
    	# Set the oper +a when they oper up.  Marks them as an 
    	# admin.  Admins can load and unload modules, as well as
    	# see the real IPs in STATS c
    	admin=yes;
    };
    

A simple part now, comment out all the connect blocks. starting at connect {
and ending at };

    
    
    #connect {
    #	name = "";
    #	# Hostnames and IP's are both accepted
    #	host = "";
    #	# send_password is the C line password, accept_password is the
    #	# N line password, they are not required to match.  The remote
    #	# server will have the two passwords reversed.
    #	send_password = "";
    #	accept_password = "";
    #	# What port should we autoconnect on (if autoconn is set to yes)
    #	port = 6667;
    #	# hub_mask replaces H: lines, multiple ones are accepted in each
    #	# connect block.
    #	hub_mask = "*";
    #	class = "server";
    #	# Set your server to autoconnect
    #	autoconn = YES;
    #};
    	
    #connect {
    #	name = "";
    #	host = "";
    #	send_password = "";
    #	accept_password = "";
    #	port = 6667;
    #	# Force this server to be a leaf
    #	leaf_mask = "*";
    #	# Force this server to be a LazyLink server.  Read 
    #	# doc/LazyLinks.as.implemented.txt for more information
    #	lazylink=no;
    #	class = "server";
    #};
    

Dislike someone? Customize the kill block, create some kill blocks, or leave
it alone:

    
    
    # Replacement for K: lines, bans based on user@host
    kill {
    	user="bad@*.hacked.edu";
    	reason="Obviously hacked account";
    };
    

Add a dline or 2, or, dont:

    
    
    # Replacement for D: lines, deny IP's and IP blocks.  CIDR notation is
    # recommended
    deny {
    	ip=10.0.1.0/24;
    	reason="Reconnecting vhosted bots";
    };
    

Prevent a nickname from being used, add some, or leave them be:

    
    
    # Replacement for Q: lines, preventing nicks from being used
    quarantine {
    	name="NickServ";
    	reason="There are no Nickname Services on EFnet";
    };
    

Even more blocking, again, touch, or don't:

    
    
    # Replacement for X: lines, denying users based on their "realname"
    # field, useful for blocking known trojan drones, troublesome clients,
    # and floodnets.  Note that we don't CURRENTLY have a silent deny (2 in 
    # the last X: line field in the old conf)
    gecos {
    	name="*BitchX.doc*";
    	reason="Misconfigured lame client";
    	action=warn;
    };
    
    gecos {
    	name="sub7server";
    	reason="Trojan drone";
    	action=reject;
    };
    

Options you may want to edit in the general block:

    
    
    general {
    	# Send a notice to all opers on the server when someone tries
    	# to OPER and uses the wrong password
    	failed_oper_notice=yes;
    	# If failed_oper_notice is set to "yes", also notify when someone
    	# fails to OPER because of an identity mismatch (wrong host or nick)
    	show_failed_oper_id=yes;
    
    	# Define how many 'dot' characters are permitted in an ident reply
    	# before rejecting the user.
    	dots_in_ident=2;
    
    	# Enable the nick flood control code.
    	anti_nick_flood=yes;
    	# These settings will allow 5 nick changes in 20 seconds.
    	max_nick_time=20;
    	max_nick_changes=5;
    
    	# Define the time delta permissible for a remote server connection.
    	# If our timestamp and the remote server's timestamp are over
    	# ts_max_delta different, the connection will be dropped.  If it
    	# is less than ts_max_delta but more than ts_warn_delta, send 
    	# a notice to opers on the server, but still allow the connection.
    	# Overrides the compiled in defaults
    	ts_warn_delta=30;
    	ts_max_delta=300;
    
    	# When a user QUIT's, prepend their QUIT message with "Client exit:"
    	# in order to help prevent against faking server error messages (ie.
    	# ping timeout, connection reset by peer)
    	client_exit=yes;
    
    	# Show the reason why the user was K-lined or D-lined to the "victim"
    	# It's a neat feature except for one thing... If you use a tcm
    	# and it shows the nick of the oper doing the kline (as it does by 
    	# default) Your opers can be hit with retalitation... Or if your 
    	# opers use scripts that stick an ID into the comment field. etc.
    	# It's up to you whether you want to use it or not.
    	kline_with_reason=yes;
    	# Force the signoff reason to be "Connection closed" when a user is
    	# K-lined.  The user will still see the real reason.  This prevents 
    	# other users seeing the client disconnect from harassing the IRCops.
    	kline_with_connection_closed=no;
    	# Set to "yes" if you wish your server to flag and not apply redundant
    	# K-lines.
    	non_redundant_klines=yes;
    
    	# Enable this if you want opers to get noticed about "things" trying
    	# to connect as servers that don't have N: lines.  Twits with 
    	# misconfigured servers can get really annoying with this enabled.
    	warn_no_nline=yes;
    
    	# Set these lines to be oper only.  The reasoning behind this is that
    	# people with exceed_limit or kline_exempt can almost always get on
    	# the server.
    	e_lines_oper_only=yes;
    	f_lines_oper_only=yes;
    
    	# Set STATS o to be oper only
    	o_lines_oper_only=yes;
    
    	# See a NOTICE when a user issues a STATS command
            stats_notice=yes;
    	# See a NOTICE when a user issues a STATS p.  By enabling this, opers
    	# can see when users need them, but not invade their privacy by spying
    	# on other STATS requests
      	stats_p_notice=yes;
    
    	# See a NOTICE when a user issues a LINKS command
    	links_notice=no;
    
    	# Links Delay determines the time between updates of the user LINKS
    	# file.  The default updates it every 5 minutes
    	links_delay=300;
    
    	# minimum seconds between uses of MOTD, INFO, HELP, LINKS, TRACE
    	pace_wait=10;
    	# The minimum number of seconds between uses of remote WHOIS before
    	# the counter is reset.
    	whois_wait=10;
    	# Define the amount of time between KNOCK's.  Once every 5 minutes
    	# should be enough.
    	knock_delay=300;
    
    	# There are clients ignoring the FORCE_MOTD numeric.  There is no 
    	# no point forcing MOTD on connecting clients IMO.  Give them a short
    	# NOTICE telling them they should read the motd, and leave it at that.
    	short_motd=no;
    
    	# Set to "yes" to disable flood control for opers.
    	no_oper_flood=yes;
    
    	# Enable G-lines
    	glines=yes;
    	# Set the time for how long G-lines will last.  This example is
    	# the old setting of 12 * 3600.  Note that the new conf file
    	# cannot *CURRENTLY* perform the calculations for you.
    	gline_time=43200;
    
    	# Define the maximum amount of time a user can idle before 
    	# disconnecting them.  Set to 0 to disable
            idletime=0;
    
    	# Enable the server hiding feature.  This prevents users from 
    	# finding out what server users are on, and hides IP's.  Note
    	# that some clients do not handle this well and may break.  Blame
    	# the packet kiddies for making this option almost a necessity.
    	hide_server=no;
    
            # This is useful for leaf nodes and gateways. It keeps you from
            # connecting to too many places. It works by keeping you from
            # connecting to more than "n" nodes which you have C:blah::blah:6667
            # lines for.
      
            # Note that any number of nodes can still connect to you. This only
            # limits the number that you actively reach out to connect to.
    
            # Leaf nodes are nodes which are on the edge of the tree. If you want
            # to have a backup link, then sometimes you end up connected to both
            # your primary and backup, routing traffic between them. To prevent
            # this, #define MAXIMUM_LINKS 1 and set up both primary and
            # secondary with C:blah::blah:6667 lines. THEY SHOULD NOT TRY TO
            # CONNECT TO YOU, YOU SHOULD CONNECT TO THEM.
    
            # Gateways such as the server which connects Australia to the US can
            # do a similar thing. Put the American nodes you want to connect to
            # in with C:blah::blah:6667 lines, and the Australian nodes with
            # C:blah::blah lines. Have the Americans put you in with C:blah::blah
            # lines. Then you will only connect to one of the Americans.
    
            # This value is only used if you don't have server classes defined, and
            # a server is in class 0 (the default class if none is set).
    
    	#maximum_links=1;
            maximum_links=0;  
    
    	# Define these to the logfiles you want to use for user connections
            # (userlog), successful use of /oper (operlog), and failed use of
            # /oper (foperlog).  Logging will stop if either these files do not
            # exist, or if they are not defined.
    
    	fname_userlog = "logs/userlog";
    	fname_operlog = "logs/operlog";
    	fname_foperlog = "logs/foperlog";
    
    	# max_targets
    	# only max_target targets can be privmsg'd / notice'd in a single
    	# command. default is 4 if not defined here. setting to 0 will have
    	# broken results (ie privmsg/notice won't work).
    	
    	max_targets = 4;
    
    	# message_locale
    	# default message locale to use if gettext() is enabled
    	# Use "custom" for the (in)famous Hybrid custom messages.
    	# Use "standard" for the compiled in defaults.
    	message_locale = "custom";
    
    	# umodes that only opers can set.
    	# the default should be fine, but you can add wallops and
    	# servnotice if you want only opers to set +s / +w.
    	# you can set others (invisible, callerid), but it's not
    	# recommended.
    
    	# Complete list:
    	# +a - NONE       - Admin status.  OPER controls this
    	# +b - bots       - See bot and drone flooding notices
    	# +c - cconn      - Client connection/quit notice
    	# +d - debug      - See debugging notices
    	# +f - full       - See I: line full notices
    	# +g - callerid   - Server Side Ignore
    	# +i - invisible  - Not shown in NAMES or WHO unless you share a 
    	#                  a channel
    	# +k - skill      - See server generated KILL messages
    	# +n - nchange    - See client nick changes
    	# +o - NONE       - Operator status.  OPER controls this
    	# +r - rej        - See rejected client notices
    	# +s - servnotice - See general server notices
    	# +u - unauth     - See unauthorized client notices
    	# +w - wallop     - See server generated WALLOPS
    	# +x - external   - See remote server connection and split notices
    	# +y - spy        - See LINKS, STATS (if configured), TRACE notices
    	# +z - operwall   - See oper generated WALLOPS
    
    	oper_only_umodes = bots, cconn, debug, full, skill, nchange, 
                               rej, spy, external, operwall;
    
    	# vchans_oper_only
            # allow non-opers to use CJOIN?
    	vchans_oper_only = NO;
    };
    

Now save the file as /<install path>/etc/ircd.conf Congratulations.. Your done
editing the configuration file!

## 9. Testing your server

After you have completed all the steps described in sections 6 and 7 you will
want to cd to /<install path>/bin/ and type ./ircd to get your server going.
Now open your irc client of choice and connect to your ip, hostname, domain
name, whatever... if all connects smoothly, type /oper <nickname set in
operator block name="";> <password set in operator block password="";>

If you gain ircoppage, consider your ircd a working one. Last step to testing
your server, invite some friends, if they can join and make channels and chat,
and list channels, etc., your server is a-ok.

## 10. Commands

Essential Commands: (This may not have every command in the world, as i do not
have a list, and may not remember them all.. You may want to check
[www.irchelp.org](http://www.irchelp.org/) for a complete list)

Ed. note: In particular, you should check out the [IRC Operator
Guide](ircopguide.html).

    
    
    die (server name) = Shuts down the server [Operators]
    cjoin (channel name) = "Clones" a channel (creates a v-chan) [Everyone]
    rehash (parameter) = Rehashes the specified file. using /rehash by itself 
    			rehashes ircd.conf [Operators]
    connect (server specified in a connect block) = Connects your server to 
    			the one you specify [Operators]
    kill (nickname) (reason) = kills the client behind (nickname) for (reason) 
    			[Operators]
    wallop (text) = broadcasts (text) all over the network to 
    	operators and people who have wallop viewing enabled in there 
    	irc client [Operators]
    stats (parameter) = gives you status of (parameter) - different parameters 
    	include:  [Everyone(Standard users can use some, others, Opers only)]
    		? - Server connection stats
    		c - connection blocks
    		i - i-lines
    		h - h-lines
    		l - l-lines
    		k - k-lines
    		x - gecos blocks
    		y - y-lines
    		z - more server stats
    restart (server name) = resets _ALL_ connections to the server. [Operators]
    squit (server) :(reason) = disconnects (server) from the network. [Operators]
    

## 11. Automation

If you want to make your server start automatically, a basic way to do it is
to make a crontab that points to a perl script that checks if the server is
running and starts it if it isn't.

The crontab:

    
    
    0,5,10,15,20,25,30,35,40,45,50 * * * *    perl /<path to below script>/<script>.pl
    

The script:

    
    
    #!/usr/bin/perl <- edit if necessary to reflect your perl location
    
    #This is a simple script to check the status of ircd, and start it if 
    #necessary
    #By NoizyToyz, with help from Vamps.
    
    #Edit to reflect your proper paths and filenames:
    system('/<install path>/bin/ircd') if ( ! `ps -aef|grep -v grep|grep ircd`);
