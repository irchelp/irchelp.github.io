---
title: 'ircii help: news'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
__________________________________________________________________________
                             ircII 20180609
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


from:  @(#)eterna: NEWS,v 1.139 2017/09/13 23:23:41 mrg Exp

Changes in ircII 20170913:

  o  new /lastlog commands -saveall and -loadall that save and load the
     current window's lastlog, allowing session restoring
  o  new REFRESH_WINDOW_LASTLOG binding that will fully redraw the
     current window, using data from the lastlog, leaving it in a
     scrollable manner
  o  fix bug in 20170404 and tabkey with nicks longer than 7 chars

Changes in ircII 20170704:

  o  fixes for the OSX fixes in 20170606

Changes in ircII 20170606:

  o  new window resizer now works, can get the old one at compile time with
     --with-default-resize-method=old configure option
  o  more fixes for OSX and @-style assignment
  o  fix a window rebalance when not resizing bug

Changes in ircII 20170128:

  o  fix crashes on OSX in complex scripts using []
  o  fix reconnecting channels moving windows

Changes in ircII 20151120:

  o  fix a program hang upon invalid utf-8 sequences
  o  /set log and /window log no longer double the output
  o  /lastlog no longer adds trailing ^Os to log files

Changes in ircII 20150903:

  o  ircII now uses the final column of the display
  o  contrib/noansi.c is a program to remove ANSI C colours

Changes in ircII 20150222:

  o  fix irc "realname" handling
  o  fix SWITCH_CHANNELS binding
  o  revert to old window size change handling for now

Changes in ircII 20141028:

  o  fix a new colour selection issue
  o  fix bugs in new window resize code
  o  fix compilation issues on NetBSD 5.x
  o  fixes to option handling

Changes in ircII 20140824:

  o  HTTP proxy support for connecting to an IRC server has been added.
     please see the PROXY/ and NO_PROXY/ prefixes for server names, the
     new -R command switch and the new -proxy option for both /server
     and /window server
  o  /wait without -cmd is no longer supported
  o  4 new /set variables have been introduced to specify various
     types of SSL certificate and keys: SSL_CA_CHAIN_FILE, SSL_CA_FILE,
     SSL_CA_PATH and SSL_CA_PRIVATE_KEY_FILE.  these can be used to
     use different certificates, chains and private keys than the openssl
     default
  o  add new "-e protocol level" option to set the default SSL level
     for individual protocols.  currently only supports IRC
  o  SSL support has been added for IRC.  new -ssl, -sslnocheck, and
     -nossl options to /window server and /server
     use the --without-openssl flag to ./configure to build if openssl
     is missing

Changes in ircII 20140317:

  o  support for $"..." prompting input has been removed.  please use
     the /input command instead
  o  support for /wait without -cmd is marked obsolete and will be
     removed in the next release.  please use /wait -cmd instead
  o  ircII now depends upon C99 compiler environment
  o  autoconf 2.69 is now used to generate ./configure
  o  support for Andrew Mail System has been removed
  o  support for non-POSIX signals has been removed
  o  /who with filter options, as well as /wait and other commands like
     /userhost should now work concurrently on different servers
  o  provide more error on failed connections in some cases
  o  make IRCHOST and irc -h <host> also take a :port, and also support
     [ip.v6.ad.dr] style addresses
  o  add some ./configure flags for developers
  o  fix some problems with /window add and /query on the same nick
  o  fix some deficiencies in the utf-8 support
  o  unfinished /stack command removed
  o  fix input scrolling when typing more than the screen width
     also remove excessive cursor movement for input
  o  bugs fixed in multi-screen support; wserv no longer exits upon
     a size change, and several potential fd-leaks plugged

Changes in ircII 20131230:

  o  re-add the utf-8 changes now that the scrolling is not slowed
  o  scrolling is much faster now
  o  fix compile time errors in on modern glibc systems
  o  add /nuser command
  o  wserv and ircio move into "libexec" dir.

Changes in ircII 20110228:

  o  /on channel_signoff works again
  o  try to split ICB messages at word boundaries
  o  disallow many IRC commands on ICB 
  o  /ping works on ICB
  o  revert the utf-8 changes for large lastlog performance reasons.
     there should be a re-implementation coming in the future.
  o  make /on nickname, /on channel_nick, $chanusers() and $onchannel()
     work with ICB.
  o  make /save save /ignore'd things

Changes in ircII 20060725:

  o  remove dead /set use_old_msg variable
  o  lex is no longer required for any part of ircII
  o  fixed /set irchost vs /set irc_encoding problem
  o  default status line now tells you when you are scrolled up
  o  new variables status_scrolled and status_scrolled_lines
  o  new status format modifiers %P and %s
  o  fixed a bug with the input prompt being overtaken
  o  /set translation has been removed.  all encoding support now depends
     on the existance of iconv(3) support, enhancing the capabilities and
     correctness of codeset conversion.  the translation and iso2022_support
     variables have been replaced with input_encoding, display_encoding
     and irc_encoding
  o  /msg -server <servergroup|servername|number> <target> <message>
     now works to send message on specific servers ie, other than the
     current window's server
  o  support new $IRCSERVERSFILE that overrides $LIBDIR/ircII.servers

Changes in ircII 20040820:

  o  /msg . now works for ICB mode as well
  o  /topic now works by default for ICB
  o  fix building on SunOS4 with GCC

Changes in ircII 20040216:

  o  various documentation updates
  o  ircii now requires an ANSI C compiler (such as GCC) to compile
  o  new /set switch_to_quiet_channels that allows switch_channels binding
     to ignore "quiet" channels.
  o  fixed the --without-emacs-meta-keys option to really be the default
  o  /hush support in ICB
  o  new example script ``multichan'' for maintaining multiple server
     and channel configurations.
  o  renamed /ON ICB_MOTD to ICB_CMDOUT and fixed it as well
  o  removed old "SED" useless encryption
  o  add /ON TOPIC support for ICB
  o  builds on solaris out-of-box again

Changes in ircII 20030709:
  
  o  turned on SO_REUSEADDR for most connections
  o  /DCC RAW works when disconnected again
  o  several bugs fixed
  o  new /set dccport and /set bind_local_dcchost variables to give
     the user full control over how dcc requests are sent.
  o  new /on os_signal to give user-access to receiving UNIX signals
  o  /set beep_on_msg now works for ICB messages and groups (public)
  o  the --without-emacs-meta-keys configure option is now the default
  o  the emacs meta key bindings for M-b and M-d were fixed

Changes in ircII 20030315:

  o  fixed several display and status bugs introduced in 20030314

Changes in ircII 20030314:

  o  server's added by /server are no longer removed if they fail to connect
  o  SEVERAL REMOTE HOLES FIXED in ctcp, status & other code
  o  fix ICB /msg to names starting with a /.  you can now /msg \/oink to send
     a message to "/oink".  if you previously were able to /msg \oink you now
     have to /msg \\oink
  o  arithmetic "|" now works properly
  o  fix ICB /msg with a user the same name as the channel
  o  fix ICB group's and user's with comma's in them
  o  /notify and /timer always go to level crap now
  o  fix nickname response lossage
  o  fix $connect() which was broken recently
  o  fix "irc -h" which was broken recently
  o  fix "dcc close raw" which was broken recently

Changes in ircII 20021103:

  o  fix random bugs
  o  fix a problem with new ICB group name changes message format
  o  new /on icb_who and /on icb_motd
  o  all high control chars should be now properly filtered avoiding
     pretend output
  o  fix help page bugs
  o  fix meta5, meta6, meta7 and meta8, which behaved as if you had always
     hitten them once you had (ie sticky forever)
  o  avoid crashes in /help

Changes in ircII 20020912:

  o  /join group can now move an ICB group to a different window
  o  add ICB support for /join -force and /join -invite
  o  echoing bold / inverse / underline chars immediately after one
     another now works properly in all cases
  o  DCC and IPv6 now works.  ircII can DCC CHAT via IPv6 with irssi
  o  new /set dcchost to change the dcc source host.  this changes what
     the -H flag sets at start up
  o  IPv6 support split into pure-IPv6 and new socket API support, with
     replacements for the latter being provided if they do not exist
     PLEASE NOTE: this may cause ./configure or build failures due to
     gethostbyname(), getaddrinfo(), getnameinfo(), freeaddrinfo(),
     inet_pton() or inet_ntop() lossage.  please report via ircbug
  o  /dcc talk, /dcc summon, and /dcc tmsg are no longer supported
  o  /on ctcp_reply, /on notice, /on encrypted_notice and /on flood all
     now provide the target of the /on as $1.  PLEASE NOTE: this will
     affect old scripts.  use if (V > 20020902) to check for the new
     behaviour
  o  nearly all reported bugs fixed
  o  /xecho -level should now work for channel traffic as well.  PLEASE
     NOTE: this will probably cause some messages to go to a different
     window now than they used to - possibly a bug!  please report any
     such changes that do not seem correct
  o  connections to multi-homed hosts not listening on all IP addresses
     now works in all cases
  o  new /setenv & /unsetenv commands
  o  /log core dump fixes
  o  help file fixes
  o  new `fkeys' script to make it possible to bind function keys
  o  irc -t is now the default.  use -T to get ti/te sequences
  o  long ICB messages are now always split up correctly
  o  various minor bug fixes
  o  2.8script/newaway/default scripts "n.o" alias unified

Changes in ircII 20020403:

  o  new /on dcc_list hook, for /dcc list output
  o  /dcc list bug fixed
  o  status clock gets very slow bug fixed
  o  fix /window new server foo.com channel #foo,foo
  o  fix build problem on BSD/OS 4.3
  o  new --disable-non-blocking to turn off non blocking connects
  o  new /load autoquery, to automatically create a new query window
     when /msg'ing.  apparently like mIRC
  o  /whois works on ICB again
  o  multi-server connections should work much better now, including
     when loaded from a script
  o  new help file for /window where, missing since forever
  o  server "." refers to the last connected server in this window, eg
     `/window server .' and `/server .'

Changes in ircII 20020322:

  o  fix a severe bug in several window information functions

Changes in ircII 20011210:

  o  /save -all works properly now
  o  new server server groups can be listed in $IRCSERVER by prefixing
     :group: to the server name, eg, IRC/:lamenet:irc.lamenet.org:666
  o  fix /set status_voice
  o  add /server -group, allowing proper multi-network configuration
  o  fix tabkey for people who join channels
  o  fix many $functions() to work properly in multi-server context, and
     no longer use the current window
  o  enhance $ignored()
  o  add missing docs for /set tab, decrypt_program, show_stars and
     iso2022_support
  o  new /on window_list for /window list output hookery
  o  /window create now takes -xterm and -screen flags to force either a
     xterm or screen window to be created, rather than forcing the choice
  o  /on flood support for ICB
  o  fixes for server passwords
  o  fix for linking on solaris
  o  don't send notices that are flooding as if they are public notices
  o  bug fix to keep track of my own nickname
  o  /on foo will now show fuzzy matches again "foo" instead of complaining
     about ambiguity
  o  /window create should work properly now, no i really mean it this time
  o  random bug fixes
  o  /window create windows now have input buffers that do not interfere
     with each other
  o  new $filestat() function
  o  /timer is now sub-second aware
  o  raw DCC core dump bug fixes

Changes in ircII 20020321:

  o  new /on raw_send
  o  new /exec -filter option
  o  fixed mIRC colour code handling
  o  enhanced redirection to multiple targets
  o  bug fix for $mid()
  o  bug fix for when resizing to a smaller window
  o  other bug fixes

Changes in ircII 20010612:

  o  dcc source address can be edited (usable with masquerade)
  o  japanese support (ISO2022_SUPPORT)
  o  new /set star_prefix to replace the standard "*** " prefix
  o  new $windows(), $screens(), $notify() and $ignored() functions
  o  fixes for /nick problems
  o  new /set status_voice variable associated with new status_format
     modifier %v, and voice on the current channel
  o  many bugs fixes
  o  /me support for ICB
  o  new AES/rijndael cipher (CBC mode) available
  o  ircII is now version as YYYYMMDD only
  o  new command line option -t to disable termcap ti/te sequences
  o  new /window nostatus for no status line at all
  o  new /set hide_channel_keys variable
  o  new /set {fore,back}ground_colour variables
  o  new /set xterm_geomoptstr variable
  o  no more (insecure) ``priviledge port'' support
  o  scrollback no longer goes beyond the end of the lastlog history
  o  new /cat command
  o  new $chatpeers() function
  o  new /set make_notice_msg variable
  o  /encrypt -showkeys option added
  o  lastlog level HELP added
  o  more bugs fixed
  o  additional /bind-able metakeys: meta5_character,
     meta6_character, meta7_character, meta8_character
  o  forward and backward scroll *really* works!
  o  scrolling directly to the start also works!
  o  most /ignore requests are now honoured by the ICB mode
  o  new /set no_ask_password variable added
  o  new /set xterm_path variable added
  o  new /set irchost variable added
  o  IPv6 [se:ve:er]:port support added
  o  translation table support in dumb mode
  o  new $wincols() and $winrows() functions which return the
     number of columns and rows in this window
  o  /set auto_unmark_away fixed after many years
  o  bunches of bugs fixed
  o  if /dcc get fails due to local permissions, the offer is not
     removed any longer, allowing the problem to be fixed
  o  +c (colourless) and +R (registered users only) channel modes
  o  IRC 2.10 !channels supported
  o  vasprintf(3) support
  o  aliases of dynamic sizes!
  o  channels *really* should stay attached to windows properly
     and hang around after reconnects, etc
  o  /join bug is gone
  o  new /on window_swap that is triggered when you swap windows
  o  /window bind has original behaviour; stick to windows not
     channels
  o  ICB support extended
  o  IPv6 support has been integrated
  o  added hasvoice() and dcclist() functions. See help
  o  .ircquick file support for separate files to be executed
     between and after connection to server
  o  standard GNU configure --srcdir and object directory support
     has been added
  o  many more bugs have been fixed
  o  $servertype() function has been added, which returns ICB or IRC,
     including server version
  o  SOCKS version 5 support has been added
  o  ICB support had been added
  o  CAST-128 support has been changed from EBC mode to CBC mode,
     which makes it incompatible with interium releases of 4.4-Lite
  o  bugs fixed all over the place
  o  colour support added
  o  bugs in crypto code fixed.  now works without crashing
  o  /exec -target ($T) works
  o  "window query" works
  o  new functions winvis() and querynick()
  o  allow "window channel #chan,key" to work
  o  various flash-style attacks have been fixed
  o  /timer, and several variables are now aware of the current
     server context
  o  several translation tables have been updated and added
  o  broken servers are handled better
  o  long nick names are supported
  o  many bugs have been fixed
  o  support for irc2.10 has been added
  o  messages typically always go the right window now, rather than
     just most of the time
  o  the paranoid may now easily turn of returning information
     about oneself to various ctcp commands with --with-paranoid
  o  several enhancements to the encryption system:
     - the old external program interface is changed to not leak
       information via the command line
     - a CAST-128 implementation has been added to provide strong
       encryption for both normal IRC channels, messages, and also
       DCC chat connections
     - several bugs fixed
  o  ircII is now under a BSD-style copyright.  thanks to troy rollo
     and mike sandrof for helping this process so much, so quickly!
  o  fix core dumps in /queue
  o  documentation enhancements
  o  new script `nocolour' for dealing with mIRC-style colour codes
  o  fix several configuration time problems
  o  fix the "encryption_program"
  o  expand ctcp to dcc.  queries only, no replies.  dcc send, actions,
     ctcp UTC, etc. work.  prints more information when connecting
  o  fixes stupid "channel leave" bug
  o  add new configure switch `--paranoid' which turns of then uname
     and finger information returned in ctcp version and finger replies
  o  avoid buffer overflows in dcc chat code, as noted on bugtraq
  o  fix problems with ctcp encryption
  o  setting the logfile will expand `~user' expressions
  o  fix the $rindex() function

Changes in ircII 4.4:

  o  tabkey works with nicknames with \'s in them
  o  muchly updated /window server and /window channel system
  o  more robust autoconfiguration
  o  lots of bugs fixed
  o  `idle()' functions returns idle time
  o  `/dcc rename -chat old new' renames a dcc chat connection
  o  `/set same_window_only' places channels in windows more often
  o  `&' is expanded in GCOS fields, as per BSD
  o  ctcp flood handling done in a more sane manner
  o  non blocking connects (use -DNON_BLOCKING_CONNECTS).  ircII will
     attempt to figure out if this is available or not automatically,
     when configuring
  o  new window commands `addgroup', and `delgroup'.  these allow you
     to define a group of windows, such that they are always connected
     to the same server
  o  new `ircbug' shell command for reporting bugs
  o  SOCKS support
  o  new `imap' script
  o  new log level `BEEP'
  o  dcc works with `/server localhost', again
  o  `/set HELP_PATH' now works with ~user expansion
  o  lots and lots and lots of bug fixes
  o  new `undernet' script to make ircII understand undernet.org extras
  o  a bunch of general bug fixes.  most of the submitted-via-ircbug (the
     correct way!) have been fixed, or at least closely analyzed
  o  DYNAMIC_SLIP is not longer available, due to ircII simply handling
     the case properly now
  o  `/window create' might be stabler.  really this time
  o  removed `/set help_service' support from ircII
  o  added `help' script to replace `/set help_service' support
  o  almost all gcc -Wall warnings on a sane system fixed
  o  help files are once again distributed with ircII
  o  windows now default to having level of `NONE'
  o  better error reporting in some circumstances
  o  renamed `ircserv' to `ircio' due to continued believe that `ircserv'
     was actually an IRC server
  o  `/server .' should reconnect to the server last connected in this
     window
  o  fully prototyped source tree
  o  each window can have two status lines, using `/window double', and
     the new `STATUS_FORMAT1' and `STATUS_FORMAT2' varaibles
  o  new variable `SAME_WINDOW_ONLY' that controls how disconnected
     channels are placed (if at all) in other windows
  o  ircII no longer use lex/flex in the build process
  o  `/notify' can be more verbose
  o  `irc -b' loads the .ircrc before connecting to a server.  beware
  o  irc 2.9 support
  o  many many new translation tables, polish, russian, etc
  o  hopefully more consistant message levels
  o  `/window server', `/server', then `IRCSERVER' variable, and command
     line server lists all support the server:port:password:nickname
     format
  o  `/window sticky <on|off>' to control whether channels follow server
     changes, etc
  o  new `/squery' and `/servlist' commands, for ircd 2.9.x
  o  annoying bug in `/server -delete' fixed
  0  several more bugs fixed
  o  window scroll now works better
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
