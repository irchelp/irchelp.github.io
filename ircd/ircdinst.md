---
title: ircd install
status: historical
layout: default
---
# ircdinst
    
    /************************************************************************
     *   IRC - Internet Relay Chat, doc/INSTALL
     *   Copyright (C) 1990,1991,1992, Jeff Trim, Mike Bolotski,
     *   Jarkko Oikarinen and Darren Reed.
     *
     *   This program is free software; you can redistribute it and/or modify
     *   it under the terms of the GNU General Public License as published by
     *   the Free Software Foundation; either version 1, or (at your option)
     *   any later version.
     *
     *   This program is distributed in the hope that it will be useful,
     *   but WITHOUT ANY WARRANTY; without even the implied warranty of
     *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
     *   GNU General Public License for more details.
     *
     *   You should have received a copy of the GNU General Public License
     *   along with this program; if not, write to the Free Software
     *   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
     */
    
                Installing IRC - The Internet Relay Chat Program
    
    
    Overview of this document:
    
      1) The config.h file
      2) Editing the Makefile
      3) Compiling IRC
      4) The ircd.conf file
    
    
    1) Edit the "config.h" file and make changes to the various #DEFINE's:
     
       a) Copy the config.h.dist file to config.h before editing.
      
       b) Define what type of UNIX your machine uses.
    
          Pick the machine type which best describes your machine and change
          the #undef to #define (if needed).  Some flavours of Unix require no
          #define and in such cases all others should be #undef'd.
    
       c) DEBUGMODE
    
    	Define DEBUGMODE if you want to see the ircd debugging information
          as the daemon is running. Normally this function will be undefined
          as ircd produces a considerable amount of output.  DEBUGMODE must be
          defined for either of -t or -x command line options to work.
          
       d) DPATH, SPATH, CPATH, MPATH, LPATH, PPATH
    
            DPATH is provided so that the other pathnames (SPATH, CPATH, etc)
          may be provided in just filename form.  When the server starts, it
          chdir's to DPATH before chroot or any other file operation, making
          it the "current directory" for the server.  This is where core files
          will go if it core dumps.
    
    	Define SPATH to be the directory path to ircd.  This is usually
          /usr/local/bin/ircd, unless you don't have installation permission
          there. 
    
          Define CPATH to be the directory path to the "irc.conf" file.
          This path is usually /usr/local/lib/irc.conf. The format of this file 
          will be discussed later.
    
          The LPATH #define should be set to "/dev/null" unless you plan to 
          debug the program.  Note that the logfile grows very quickly.
    
          Define MPATH to be the path to the 'motd' (message of the day) file
          for the server.  Keep in mind this is displayed whenever anyone
          signs on to your server.
    
          The PPATH is optional, but if defined, should point to a file which
          either doesn't exist (but is creatable) or a previously used PPATH
          file.  It is used for storing the server's PID so a ps(1) isn't
          necessary.
    
       e) CHROOTDIR
    
    	To use the CHROOTDIR feature, make sure it is #define'd and that
          the server is being run as root.  The server will chroot to the
          directory name provded by DPATH.
    
       f) ENABLE_SUMMON, ENABLE_USERS
    
    	For security conscious server admins, they may wish to leave
          ENABLE_USERS undefined, disabling the USERS command which can be used
          to glean information the same as finger can.  ENABLE_SUMMON toggles
          whether the server will attempt to summon local users to irc by
          writing a message similar to that from talk(1) to a user's tty.
    
       g) SHOW_INVISIBLE_LUSERS, NO_DEFAULT_INVISIBLE
    
    	On large IRC networks, the number of invisible users is likely to
          be large and reporting that number cause no pain.  To aid and effect
          this, SHOW_INVISIBLE_LUSERS is provided to cause the LUSERS command
          to report the number of invisible users to all people and not just
          operators.  The NO_DEFAULT_INVISIBLE define is used to toggle whether
          clients are automatically made invisible when they register.
    
       h) OPER_KILL, OPER_REHASH, OPER_RESTART, LOCAL_KILL_ONLY
    
    	The three operator only commands, KILL, REHASH and RESTART, may all
          be disabled to ensure that an operator who does not have the correct
          privilidges does not have the power to cause untoward things to occur.
          To further curb the actions of guest operators, LOCAL_KILL_ONLY can
          be defined to only allow locally connected clients to be KILLed.
    
       i) The rest of the user changable #define's should be pretty much self
          explanatory in the config.h file.  It is *NOT* recommended that any
          of the file undef the line with "STOP STOP" in it be changed.
    
    3) Configure and compile the code.
    
          Edit the root Makefile for the server, uncomment/comment the correct
       CFLAGS/IRCDLIBS lines as appropriate for your system.
          Change DESTDIR to be the same as the path for DPATH in config.h.
       Type "make". This will compile the server, the client, and the services.
       At the end of this step, the server directory will contain 'ircd',
       and the client directory will contain 'irc'.  To get the server installed,
       type "make install" which will build a default m4 file for preprocessing,
       copy example.conf and put the server all in DESTDIR.  The irc client and
       a copy of the server will also be placed in BINDIR and the modes set
       accordingly.
    
    4) The ircd.conf file.
    
       After installing the ircd and irc programs, edit the irc.conf file
       as per the instructions in this section and  install it in the 
       location you specified in the config.h file.  There is a sample
       conf file called example.conf in the /doc directory.
    
       Appendix A describes the differences between IP addresses and host
       names.  If you are unfamiliar with this, you should probably scan 
       through it before proceeding.
    
       The irc.conf file contains various records that specify configuration
       options.  The record types are as follows:
       
       1.  Server connections   	(C,N)
       2.  Machine information	(M)
       3.  Client connections	(I)
       4.  Default local server	(U)
       5.  Operator priviliges	(O)
       6.  Administrative info	(A)
       7.  Excluded accounts	(K)
       8.  Excluded machines        (Q)
       9.  Connection Classes       (Y)
      10.  Leaf connections         (L)
      11.  Service connections      (S)
      12.  Port connections		(P)
      13.  Hub connections		(H)
    
    
       1. SERVER CONNECTIONS:  How to connect to other servers
    			   How other servers can connect to you
    
       WARNING:
         The hostnames used as examples are really only examples and
         not meant to be used (simply because they don't work) in real life.
    
       Now you must decide WHICH hosts you want to connect to and WHAT ORDER you
       want to connect to them in.  For my example let us assume I am on the
       machine "rieska.oulu.fi" and I want to connect to irc daemons on 3 other
       machines:
    
             "garfield.mit.edu"        - Tertiary Connection
             "irc.nada.kth.se"         - Secondary Connection
             "nic.funet.fi"            - Primary Connection
    
       And I prefer to connect to them in that order, meaning I first want to
       try connecting to "nic.funet.fi", then to "irc.nada.kth.edu", and
       finally to "garfield.mit.edu".  So if "nic.funet.fi" is down or
       unreachable, the program will try to connect to "irc.nada.kth.se".
       If irc.nada.kth.se is down it will try to connect to garfield and so forth.
       PLEASE limit the number of hosts you will attempt to connect to down to 3.
       This is because of two main reasons:
         a) to save your server from causing extra load and delays
            to users
         b) to save internet from extra network traffic
            (remember the old rwho program with traffic problems when
            the number of machines increased).
    
       The format for the CONNECT entry in the "irc.conf" is:
    
           C::::
    Field: 1        2              3                4               5
    
       for example:
       
        C:nic.funet.fi:passwd:nic.funet.fi:6667 
    
              - or -
    
        C:128.214.6.100:passwd:nic.funet.fi:6667
    
              - or -
    
        C:root@nic.funet.fi:passwd:nic.funet.fi:6667
    
    
        Explanation:
    
        Each field is separated with a ":" charcter:
    
        Field 1: Field 1 tells the IRC program which option is being configured.
                 "C" corresponds to a server Connect option.
    
        Field 2: Specifies the host name or IP address of the machine to connect
    	     to.  If "user@" prefixes the actual hostname or IP address
    	     the server will require that the remote username returned by
    	     the ident server be the same as the one given before the "@".
    
        Field 3: The password of the other host.  A password must always be
    	     present for the line to be recognized.
    
        Field 4: The full hostname of the target machine. This is the name that 
    	     the TARGET server will identify itself with when you connect 
    	     to it.  If you were connecting to nic.funet.fi you would receive
    	     "nic.funet.fi" and that is what you should place in 
    	     this field.
      
        Field 5: The INTERNET Port that you want to connect to on the TARGET 
    	     machine. Most of the time this will be set to "6667".  
                 If this field is left blank, then no connections will 
                 be attempted to the TARGET host, and your host will accept
                 connections FROM the TARGET host instead.
    
       Some examples:
    
                C:nic.funet.fi::nic.funet.fi:6667
     
                This reads: Connect to host "nic.funet.fi", with no password
                and expect this server to identify itself to you as
                "nic.funet.fi". Your machine will connect to this host to
                PORT 6667.
    
                C:18.72.0.252:Jeff:garfield.mit.edu:6667
    
                This reads: Connect to a host at address "18.72.0.252", using a
                password of "Jeff".  The TARGET server should identify
                itself as "garfield.mit.edu".  You will connect to Internet
                Port 6667 on this host.
    
                C:irc.nada.kth.se::irc.nada.kth.se
    
                This reads: do not attempt to connect to "irc.nada.kth.se",
    			but if "irc.nada.kth.se" requests a connection,
    			allow it to connect.
    
       Now back to our original problem, we wanted OUR server CONNECT to 3
       hosts,  "nic.funet.fi", "irc.nada.kth.se" and "garfield.mit.edu" in
       that order.  So as we enter these entries into the file they must be
       done in REVERSE order of how we could want to connect to them.
    
       Here's how it would look if we connected "nic.funet.fi" first:
    
    	C:garfield.mit.edu::garfield.mit.edu:6667
    	C:irc.nada.kth.se::irc.nada.kth.se:6667
    	C:nic.funet.fi::nic.funet.fi:6667
    
       Ircd will attempt to connect to nic.funet.fi first, then to irc.nada
       and finally to garfield.
    
       Reciprocal entries:
    
       Each "C" entry requires a corresponding 'N' entry that specifies
       connection priviliges to other hosts.  The 'N' entry contains
       the password, if any, that you require other hosts to have before
       they can connect to you.  These entries are of the same format as
       the "C" entries.
        
       Let us assume that "garfield.mit.edu" connects to your server
       and you want to place password authorization authorization on garfield.
       The "N" entry would be:
       
              N:garfield.mit.edu:golden:garfield.mit.edu
      
       This line says: expect a connection from host "garfield.mit.edu",
       and expect a login password of "golden" 
       and expect the host to identify itself as "garfield.mit.edu".
         
    	  N:18.72.0.252::garfield.mit.edu
    
       This line says: expect a Connection from host "18.72.0.252", and 
       don't expect login password.  The connecting host should identify itself
       as "garfield.mit.edu". 
    
      
       Wildcards domains: 
    	To reduce the great amount of servers in IRCnet wildcard
    	DOMAINS were introduced in 2.6. To explain the usage of
    	wildcard domains we take an example of such:
    		*.de  - a domain name matching all machines
                            in Germany.
            Wildcard domains are useful in that ALL SERVERS in Germany
            (or any other domain area) can be shown as one to the
    	rest of the world. Imagine 100 servers in Germany, it
    	would be incredible waste of netwotk bandwidth to broadcast
    	all of them to all servers around the world.
    
    	So wildcard domains are a great help, but how to use them ?
    	They can be defined in the N-line for a given connection,
    	in place of port number you write a magic number called
    	wildcard count.
    
    	Wildcard count tells you HOW MANY PARTS of your server's name
    	should be replaced by a wildcard. For example, your server's
    	name is "tolsun.oulu.fi" and you want to represent it as
    	"*.oulu.fi" to "nic.funet.fi". In this case the wildcard count
    	is 1, because only one word (tolsun) is replaced by a wildcard.
    	If the wildcard count would be 2, then the wildcard domain would
    	be "*.fi". Note that with wildcard name "*.fi" you could NOT
    	connect to "nic.funet.fi", because that would result in a server
    	name COLLISION (*.fi matches nic.funet.fi).
    
    	I advice you to not to use wildcard servers before you know
    	for sure how they are used, they are mostly beneficial for
    	backbones of countries and other large areas with common domain.
    
    
       2. MACHINE INFORMATION
                                
       IRC needs to know a few things about your UNIX site, and the "M" command
       specifies this information for IRC.  The fomat of this command is:
    
               M::xxx::
       Field:  1         2         3           4                 5
    
       Explanation:
    
          Field 1: "M" specifies a Machine description line
    
          Field 2: The name of YOUR host adding any Internet DOMAINNAME that 
                   might also be present.  
    
          Field 3: -- NOT USED --: Set to Value NULL (No spaces at ALL!).
        
          Field 4: Geographic Location is used to say WHERE YOUR SEVRER is,
                   and gives people in other parts of the world a good
                   idea of where you are!  If your server is in the USA, it is
                   usually best to say:  , USA.  Like for Denver
                   I say: "Denver Colorado, USA".  Finnish sites (like
                   tolsun.oulu.fi generally say something like "Oulu, Finland".
     
          Field 5: The Internet port your server will use.  Should be set to
    	       the same value as in the config.h file.
    
    
          Example:
                    M:tolsun.oulu.fi::Oulu, Finland:6667
    
                    This line reads: My Host's name is "tolsun.oulu.fi" and
                    my site is located in "Oulu, Finland".  My ircd will use
    		Internet Port 6667.
    
    
                    M:orion.cair.du.edu::Denver Colorado, USA:6667
    
                    This line reads: My Hosts name is "orion.cair.du.edu"
                    and my site is located in "Denver Colorado, USA".
    	        I have defined Internet Port number "6667" to be used
                    as my IRCD Socket Port.
    
    
       3. CLIENT CONNECTIONS -   How to let clients connect to your IRCD.
    
       A client is a program that connects to the ircd daemon (ircd).  Currently
       there are clients written in C and in GNU Emacs Lisp.  The "irc"
       program is the C client.  Each person that talks via IRC is running
       their own client.
    
       The irc.conf files contains entries that specify which clients are allowed
       to connect to your irc daemon.  Obviously you want to allow your cwn
       machine's clients to connect.  You may want to allow clients from 
       other sites to connect.  These remote clients will use your server
       as a connection point.  All messages sent by these clients will pass
       through your machine.
    
       The format of this entry in the conf file is:
    
              I::::
        Field:1         2               3             4                5
    
    
          For example, if you were installing IRC on tolsun.oulu.fi and you wanted
          to allow examples sake let us assume you were making this file for
          tolsun and you wanted to let your own clients to connect to your
          server, you would add this entry to the file:
    
          I:128.214.5.6::tolsun.oulu.fi
          or
          I:tolsun.oulu.fi::tolsun.oulu.fi
    
          If you wanted to let remote clients connect, you could add the
          following lines:
    
          I:*.du.edu::*.du.edu
    
          Allow any clients from machines whose names end in "du.edu" to connect
          with no password.
    
          I:128.214.6.100::nic.funet.fi
    
          Allow clients from a machine with that IP number and the name 
          nic.funet.fi to connect.
    
          I:*.tut.fi:secret:*.tut.fi
    
          Allow clients from machines matching *.tut.fi to connect
          with the password 'secret'.
    
          I:*::*
    
          Allow anyone from anywhere to connect your server.
          This is the easiest way, but it also allows people to for example
          dump files to your server, or connect 1000 (or how many open
          sockets per process your OS allows) clients to your machine
          and take your network ports. Of course the same things can be
          done by simply telnetting to your machine's SMTP port (for example).
    
       NEW!!!
          As of the 2.7.2d version of the server, the server is able to accept
          connections on multiple ports. I-lines are required for each P-line
          to allow connections to be accepted. For unix sockets, this means
          either adding I:/path/port::/path/port or some variation (wildcards
          are recognised here). For internet ports, there must be an I-line
          which allows the host access as normal, but the port field of the
          I-line must match that of the port of the socket accepting the
          connectiion. A port number of 0 is a wildcard (matches all ports).
    
       4. DEFAULT HOSTS (for local clients)
    
          This defines the default connection for the irc client.  If you are
          running an ircd server on the same machine, you will want to define
          this command to connect to your own host.  If your site is not running
          a server then this command should contain the TARGET host's connection
          information and password (if any).  The format for this command is:
    
             U::::
      Field: 1         2              3                4            5
       
    
          For example:
    
               U:tolsun.oulu.fi::tolsun.oulu.fi:6667
               U:128.214.5.6::tolsun.oulu.fi:6667
               U:tolsun.oulu.fi::tolsun.oulu.fi
    
          If the port number is omitted, irc will default to using 6667.
    
      5. OPERATOR Privileges:  How to become the IRC administrator on your site
    
       To become an IRC Administrator, IRC must know who is authorized to become
       an operator and what their "Nickname" and "Password" is.  To add this
       information, EDIT your "irc.conf" file and add the following command
       line to it:
    
              O:::::
      Field:  1          2             3          4        5       6
    
      Explanation:
     
         Field 1: Speficies Operator record. If you use capital letter ('O')
                  in it, it specifies a global operator. Small letter ('o')
                  specifies a local operator. Local operator has basically the
                  same rights except global operator with some restrictions.
     
         Field 2: Tells IRC which host you have the privileges FROM.  This
                  means that you should be logged into this host when you
                  ask for the priviliges.  If you specify "tolsun.oulu.fi"
                  then IRC will expect your CLIENT to be connected at 
                  "tolsun.oulu.fi" - when you ask for OPERATOR privileges
                  from "tolsun.oulu.fi".  You cannot be logged in at any
                  other host and be able to use your OPERATOR privileges
                  at tolsun, only when you are connected at TOLSUN will this
                  work - this is a safeguard against unauthorized sites.
    
    
         Field 3: If your AUTHORIZATION Password - this is the password that 
                  let's IRC know you are who you say you are!  Never tell anyone
                  your password and always keep the "irc.conf" file protected
                  from all of the other users.
     
         Field 4: The Nickname you usually go by - but you can make this what
                  you want.  It is better to make this a NICKNAME that no one
                  else knows, but anything will do.  I usually use my own
                  loginname.
    
         Field 5: Unused.
    
         Field 6: The class field should refer to an existing class (preferably
    	      having a lower number than that for the relevant I-line) and
    	      determines the maximum number of simultaneous uses of the
    	      O-line allowable through the max. links field in the Y-line.
    
      Example:
                  O:orion.cair.du.edu:pyunxc:Jeff
    
                  There is an OPERATOR at "orion.cair.du.edu" that can get
                  Operator priviliges if he specifies a password of "pyunxc"
                  and uses a NICKNAME of "Jeff".
    
    
    
      6. ADMINISTRATIVE INFORMATION
    
      The "A" command is used for administrative information about a site.
      The e-mail address of the person running the server should be included
      here in case problems arise.
    
      
                A::: 
      Field:    1        2                    3                         4
    
      Explanation:
    
           Field 1: "A" specifies an Admin record.
    
    
           Field 2: Use this field to say tell your FULL NAME and where in the 
                    world your machine is.  Be sure to add your City, 
    		State/Province and Country.
    
    
           Field 3: Use this field to specify your Electronic Mailing Address
                    preferably your Internet Mailing Address.  If you have
                    a UUCP or ARAPnet address - please add that as well.  Be
                    sure to add any extra DOMAIN information that is needed,
                    for example "mail jtrim@orion" probably won't work as a 
                    mail address to me if you happen to be in Alaska.  But 
                    "mail jtrim@orion.cair.du.edu" would work because you 
                    know that "orion" is part of the DOMAIN "cair.du.edu". 
                    So be sure to add your DOMAINNAMES to your mailing addresses.
    
           Field 4: Is really an OTHER field - you can add what you want here,
                    
    
      Examples (the line is just one line in the confuration file, here it
                is cut into two lines to make it clearer to read):
    
    A:Jeff Trim -  Denver Colorado, USA:INET jtrim@orion.cair.du.edu UUCP {hao,
    isis}!udenva!jtrim:Terve! Heippa!  Have you said hello in Finnish today?;)
    
      Would look like this when printed out with the /admin command:
    
          Jeff Trim -  Denver Colorado, USA
          INET jtrim@orion.cair.du.edu   UUCP {hao,isis}!udenva!jtrim
          Terve! Hei! Heippa!  Have you said hello in Finnish today? ;)
     
     
      Note that the A record cannot be split across multiple lines; it will 
      typically be longer than 80 characters and will therefore wrap around
      the screen.
    
    
      7. REMOVING A USER FROM IRC  Remove an errant user from IRC on your site.
    
      Obviously it is hoped that you wouldn't have to use this command.
      Unfortunately sometimes a user can become unmanageable and this is your
      only recourse - the KILL USER command.  THIS COMMAND ONLY AFFECTS YOUR
      SERVER - If this user can connect to another SERVER somewhere else in
      the IRC-Network then you would have to talk to the administrator on that
      site to disable his access from that IRCD Server as well.
    
      The format of this command is:
    
             K:::
      Field: 1     2               3            4
    
      Explanation:
    
           Field 1:  "K" tells the IRCD that you are making a KILL USER command
                     entry.
    
           Field 2:  In this field you specify the Hostname that the user is 
                     connecting from.  If you wanted to REMOVE connects
                     to IRC from "orion.cair.du.edu" then you would want to enter
                     "orion.cair.du.edu".  If you want to REMOVE ALL HOSTS
                     access you can use '*' (Wild Card notation) and no matter
                     what host the USERNAME (specified in Field 4) connects from
                     s/he will be denied access. Removing all hosts isn't
                     very smart thing to do though, why would you run an ircd
                     if you allow nobody to connect to it anyways ?
    
           Field 3:  Either leave this field empty (no spaces), then then lines
    		 is active continuously for the specified user/host machine.
    		 You may also specify intervals during the line should be
    		 active, see examples above.
        
           Field 4:  The USERNAME of the user you want removed from IRC.  For
                     example 'root'.
    
       
       Some Examples:
                       K:orion.cair.du.edu::jtrim
     
                   If user 'jtrim' connects to IRC from host "orion.cair.du.edu"
                   then IMMEDIATELY REMOVE HIM from my IRCD.
    
                       K:*.cair.du.edu::root
    
                   If user 'root' connects to IRC from any host that has the 
                   suffix "cair.du.edu" - then IMMEDIATELY REMOVE THEM from
                   my IRCD.
    
                       K:*::vijay
    
                   This line reads "I don't care WHAT HOST user 'vijay' is on,
                   I will NEVER allow username 'vijay' to login to my IRCD.
    
    	           K:*.oulu.fi:0800-1200,1400-1900:*
    
    	       This disallows all users from hosts with enddomain 'oulu.fi'
    	       access to your server between 8 and 12am, 2 and 7pm.
    	       Users get kicked off if they're already signed on when the
    	       line becomes active (they'll get a warning 5 minutes ago).
    
      8. Disallowing SERVERS in your irc net.
    
       In some cases people run into difficulties in net administration.
       For one reason or another you do not want a certain server to be
       in your net (for example because of the security holes it opens
       for every server if it's not secured carefully). In that case
       you should use Q-lines in your server. When you specify a server
       name in Q-line, everytime some server link tries to introduce you
       a server (remember, all server names are broadcast around the net),
       that name is checked if it matches the Q-lines in your server.
       If it matches, then your server disconnects the link. Note that
       just placing Q-lines to your server probably results in your server
       being left alone, unless other servers have agreed to have the
       same Q-line in their ircd configuration files as well.
    
       Example:
                    Q::of the security holes:foo.bar.baz
    
       This command excludes a server named "foo.bar.baz", the reason
       is given to be security holes (you should give a reason, it is
       polite). The first field is unused, so leave it empty.
    
     9. Connection Classes.
    
       To enable more efficient use of MAXIMUM_LINKS, connection classes
       were implemented. To give a connection a class, add another field
       (a sixth) to the C/N lines for a particular server.
       Each line for a server should have the same number as the sixth
       field.  If it is absent, the server deaults it to 0, using the
       defaults from the config.h file.  To define a connection class,
       you need to include a Y: line in the irc.conf file.  This enables
       you to define the ping frequency, connection frequency and maximum
       number of links that class should have.  Currently, the Y: line MUST
       appear in the irc.conf file BEFORE it is used in any other way.
    
       The format for the line is:
    
           Y:::::
    Field: 1    2                3                4                5     6
    
       Field 2:  This is the class number which gains the following attributes
       and should match that which is on the end of the C/N line.
    
       Field 3:  This field defines how long the server will let the connection
       remain "silent" before sending a PING message to make sure it is still
       alive.  Unless you are sure of what you are doing, use the default value
       which is in your config.h file.
    
       Field 4:  By changing this number, you change how often your server
       checks to see if it can connect to this server.  If you want to check
       very occasionally, use a large value, but if it is an important
       connection, you might want a smaller value so that you connect to it
       as soon as possible.
    
       Field 5:  This field defines the maximum number of links this class
       will allow from automatic connections.  Using /CONNECT overrides this
       feature.
    
       Field 6:  This field defines the 'sendq' value for this class.  If this
       field is not present, the default (from config.h) is assigned.
    
       NOTE: leaving any of the fields out means their value is 0 (ZERO)!!
    
       example:
    
       Y:23:120:300:5
    
       define class 23 to allow 5 auto-connections, which are checked every
       300 seconds.  The connection is allowed to remain silent for 120
       seconds before a PING is sent.  NOTE: fields 3 & 4 are in seconds.
    
       You may also give I lines a class (again the sixth field to define
       which class).  This is only usefull (currently) for redefining the
       ping frequency.  It can also be useful as a diagnostic to see how
       much each I line is used when combined with the TRACE output.
    
       Another feature of connection class is the ability to do automatic
       routing by using the class as a 'priority'.  If you are connected
       to a server which has a class lower than one of the servers that is
       'behind' it, the server will disconnect the lower class one and
       schedule a 'new' connection for the higher class server.
    
     10. Leaf Connections.
    
       To stop servers which should only act as leaves from hubs becoming
       hubs accidently, the L line was introduced so that hubs can be aware
       of which servers should and shouldnt be treated as leaves. A leaf
       server is supposed to remain a node for the entirity of its life
       whilst connected to the IRC server network.  It is quite easy, however
       for a leaf server to be incorrectly setup and create problems by
       becoming a node of 2 or more servers, ending its life as a leaf. The
       L line enables the administrator of an IRC 'Hub server' to 'stop' a
       server which is meant to act as a leaf trying to make itself a hub.
       If, for example, the leaf server connects to another server which doesnt
       have an L-line for it, the one which does will drop the connection, once
       again making the server a leaf.
    
           L::*::
    Field: 1       2       3       4            5
    
       Field 2 is a mask of which servers the leaf-like attributes are used on
       when the server receives SERVER messages.  The wildcards * and ? may be
       used within this field for matching purposes.  If this field is empty,
       it acts the same as if it were a single * (ie matches everything).
    
       Field 4 is the the server connectted to you that for which you want to
       enforce leaf-like attributes upon.
    
       Field 5 is the maximum depth allowed on that leaf and if not specified,
       a value of 1 is assumed.  The depth is checked each time a SERVER message
       is received by the server, the hops to the server being the field checked
       against this max depth and if greater, the connection to the server that
       made its leaf too deep has its connection dropped.
       For the L-line to come into effect, both fields, 2 and 4, must match up
       with the new server being introduced and the server which is responsible
       for introducing this new server.
    
     11. Service Connections (Not yet implemented)
    
      Introduction.
       The Service is a special kind of IRC client. It does not have the full
       abilities of a normal user but can behave in a more active manner than
       a normal client. Services as they stand now are not fully implemented.
       The following line can be added to your ircd.conf file to enable a
       service:
      
              S:::
      Field:  1          2             3          4
    
      Explanation:
    
        Field 2:
    	The host mask should be set to match the hosts(s) from which the
    	service will be connecting from. This may be either an IP# or full
    	name (prefered).
    
       Field 3:
    	This is the password which must be passed in the SERVICE command.
     
       Field 4:
    	The 'service name' is only used for the purpose of finding the
    	right S-line from the ircd.conf file for password matching. The
    	actual service name used is that set by NICK commands prior to
    	SERVICE being sent.
    
       To connect a service to your server, you must first create an S-line
       entry in your ircd.conf file and get your server to read this in (ie
       rehash or reboot). Once your server has updated itself, you can then
       attempt to register your connection as a service.
       Registering as a service is similar to registering as a normal user
       except that you must send NICK first and then SERVICE. The service
       command should look something like this:
    
    	SERVICE secretpassword referencename :Service information
    
       A successfull registering of a service at the server will result in
       a RPL_YOURESERVICE (383) being sent back to you. Any other reply as
       a result of sending service indicates an error has occured.
    
       A service is not a very useful sort of client, it cannot join channels
       or issue certain commands although most are available to it. Services,
       however, are not affected by flood control. It is therefore wise to
       oversee the use of S-lines with some care.
    
     12. Port Connections
    
      Introduction.
       The port line adds flexibility to the server's ability to accept
       connections. By use of this line in the ircd.conf file, it is easy
       to setup both Unix Domain ports for the server to accept connections
       on as well as extra internet ports.
    
           P::<*>:<*>:
    Field: 1        2             3   4     5
    
    or
    
           P::<*>:<*>:
    Field: 1        2             3   4     5
    
      Explanation
       Internet Ports
        Field 1
    	The internet IP mask defines where connections may come from and
    	be accepted. The IP mask uses either *'s or 0's as wildcards. The
    	following two lines are the same:
    
    		P:128.2.*:::6664
    		P:128.2.0.0:::6664
    
    	The incoming isnt matched against the mask, rather the ip# string
    	is decoded and compared segment by segment. Thus
    		P:128.2*.1.2:::6664
    	will not match 128.20.1.2.
    
         Field 5
    	The port number field tells the server which port number it should
    	listen on for incoming connections.
    
        Unix Socket Ports.
         Field 1
    	The path set in field 1 should be the directory name in which to
    	create the unix socket for later listening to. The server will
    	attempt to create the directory before creating the unix socket.
    
         Field 5
    	The port field when used in combination with a pathname in a P-line
    	is the filename created in the directory set in Field 1.
    
         Example:
    		P:/tmp/.ircd:::6667
    
    	Creates a unix socket in the /tmp/.ircd directory called "6667".
    	The unix socket (file) must be a numerical.
    
    13.  Hub Connections
    
          In direct contrast to L-lines, the server also implements H-lines to
       determine which servers may act as a hub and what they may 'hub for'.
       If a server is only going to supply its own name (ie act as a solitary
       leaf) then no H-line is required for, else a H-line must be added as
       follows:
    
           H::*:
    Field: 1       2       3       4
    
       Explanation:
        Field 2
          All servers that are allowed via this H-line must match the mask
          given in this field.
    
        Field 4
          This field is used to match exactly against a server name, wildcards
          being treated as literal characters.
    
       Examples:
    
    		H:*.edu:*:*.bu.edu
    
    	Allows a server named "*.bu.edu" to introduce only servers that
     	match the "*.edu" name mask.
    
    		H:*:*:eff.org
    
    	Allow "eff.org" to introduce (and act as a hub for) any server.
    
       Note:  It is possible to have and use multiple H-lines (or L-lines) for
    	  the one server.  eg:
    
    		H:*.edu:*:*.bu.edu
    		H:*.au:*:*.bu.edu
    
    	   is allowed as is
    
    		L:*.edu:*:*.au
    		L:*.com:*:*.au
    
    
    Appendix A: Difference between IP addresses and hostnames
    
    
       There are 2 different types of INTERNET addresses, NAME addresses and
       NUMERIC addresses.  NAME addresses look like ENGLISH words (and indeed
       they are ENGLISH words that refer to a given host).  A NAME address looks
       like "tolsun.oulu.fi" - and that particular address refers to the machine 
       named TOLSUN in Finland.  It is a UNIQUE address because no other machine
       in the world has its NAME address the same as "tolsun.oulu.fi".  Anytime
       you say "telnet tolsun.oulu.fi" - you would always connect to TOLSUN in
       Finland.  NUMERIC addresses refer to those addresses that are made up of
       NUMBERS for example "128.214.5.6" is the NUMERIC address for TOLSUN.  This
       address is also UNIQUE in that no other machine in the world will be use 
       those NUMERIC numbers.  The NUMERIC address is usually more reliable than
       the NAME address because not all sites can recognize and translate the
       NAME address into it's numeric counterpart.  NUMERIC always seems to work
       best, but use a NAME address when you can because it is easier to tell
       what host you are connected to.
    
    
       Every Unix machine has a file called "/etc/hosts" on it.  This file 
       contains NAME and NUMERIC addresses.  When you supply IRC with a NAME 
       address it will at first try to find it in /etc/hosts, and then (if it's 
       really smart), use the local Domain Name Server (DNS) to find the NUMERIC
       address for the host you want to connect to.  Thus if you plan to use NAME
       addresses keep in mind that on SOME sites the entry for the TARGET machine
       must be found in /etc/hosts or the NAME address will fail.  A typical 
       entry in /etc/hosts looks like this:
    
       130.253.1.15    orion.cair.du.edu orion.du.edu orion    # BSD 4.3
    
       This particular example is the Host ORION at the University of Denver. 
       Notice that on the far left is the NUMERIC Address for orion.  The
       next few ENGLISH words are the NAME addresses that can be used for orion,
       "orion.cair.du.edu", "orion.du.edu", "orion".  ALL of these NAME addresses
       will return the NUMERIC address "130.253.1.15" which IRC will use to
       connect to the TARGET UNIX. (when I say TARGET UNIX I am refering to the
       UNIX you want to connect to for IRC). Any futher questions about
       /etc/hosts should be directed to "man hosts".
    
    
    Appendix B: Enabling Summon Messages
    
       +-----------------------------------------------------------------------+
       |            E N A B L I N G    / S U M M O N    M E S S A G E S        |
       +-----------------------------------------------------------------------+
    
       *NOTE* You must have ROOT or special access to the GROUP tty ('/dev')
       to do this. If you want to allow users around the world to summon
       users at your site to irc, then you should make sure that summon works.
    
       The "IRCD" program needs access to the GROUP of '/dev'.   This
       directory is where user TTY's are stored (as UNIX treats each Terminal
       as a FILE!)   IRCD needs GROUP ACCESS to /dev so that users can be
       SUMMONED to the program by others users that are *in* the program.
       This allows people from other Universities around the world to SUMMON
       your users to IRC so that they can chat with them.  Berkeley, SUN, HP-UX
       and most of the newer versions of UNIX check to see if a USER is
       accepting MESSAGES via the GROUP access rights on their TTY listing
       in the /dev directory. For example an entry in '/dev' looks like this:
    
      (Unix Path on BSD 4.3 UNIX is:  /dev/ttyp0)
    
            crw------- 1 jtrim     20,     0 Apr 29 10:35 ttyp0
    
       You will note that 'jtrim' OWNS this terminal and can READ/WRITE to this
       terminal as well (which makes sense because I am ENTERING DATA and
       RECEIVEING DATA back from the UNIX).  I logged into this particular
       UNIX on "April 29th" at "10:35am" and my TTY is "ttyp0".  But further
       of *note* is that I do not have my MESSAGES ON! (mesg n)  -- This is
       how my terminal would look with MESSAGES ON (mesg y):
    
            crw--w---- 1 jtrim     20,     0 Apr 29 10:35 ttyp0
    
       With my MESSAGES ON (mesg y) I can receive TALK(1) requests, use the 
       UNIX WRITE(1) command and other commands that allow users to talk
       to one another.  In IRC this would also allow me to get IRC /SUMMON
       messages.  To set up the "IRCD" program to work with /SUMMON type
       the following:  (using ROOT or an account that has access to '/dev').
    
           % chgrp tty ircd
           % chmod 6111 ircd 
    
       The above commands read: "Give IRCD access to GROUP tty (which is /dev)
       and then when ANYONE runs the IRCD allow SETUID and SETGID priviliges
       so that they can use the /SUMMON command.
 
