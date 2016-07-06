---
title: IRCD Help (EFNet #ircd)
author: Networked
layout: default
---

##  IRCD Help (EFNet #ircd)

by Networked

  

First off, this won't solve all of your problems, nor help the problem of
world hunger, but hopefully it'll explain the main problems and Frequently
asked questions about ircd (Mainly Hybrid IRCD). If you have any other
questions or would like to add to this FAQ, please feel free to hunt me down
on EFnet in #ircd. My Nickname is usually Networked.


  * Where can I get Hybrid at?
  
[ftp.blackened.com/pub/irc/hybrid](ftp://ftp.blackened.com/pub/irc/hybrid)

This is the main distribution site and has the latest releases avaliable.


  * Well, now I want services for my hybrid!
  
[ftp.magenet.com/pub/hybserv](ftp://ftp.magenet.com/pub/hybserv)

and also at
[ftp.futureone.com/pub/hybserv](ftp://ftp.futureone.com/pub/hybserv)

These are the main distribution sites for **GREAT** Hybrid Services writen by
Sidewnder@EFnet.


  * Do they have ircd for Windows 95/98/NT???
  
We all seem to shutter when we hear this question in #ircd. The best thing I
can recommend is NOT running a windows server since most ports I have ever
used seem to be lacking any stability. You can however search on
[www.winfiles.com](http://www.winfiles.com/). Also, [conference
room](http://www.webmaster.com) is another option, but I have found the server
to be very buggy.

Recently FleetAdmi asked me to publish this site as well for windows related
ircd's.. [http://www.wircd.com](http://www.wircd.com)

  * How do I set it up??
  
Well, it's like this.... I can write an express setup protocol and have
everyone follow that, but people will still most likely run into certain
issues that won't be resolved here.

A) untar/gzip it.. this can be accomplished by doing (depending on the OS)
**tar -xzf myfile.tar.gz**

B) type: ./configure (note the ./ in front, which will cause the local one to
be run).

C) Edit the include/config.h file... NOW DON'T SKIP THIS STEP AND PLEASE LOOK
IT OVER COMPLETELY!! ESPECIALLY TAKE NOTE TO THE DPATH AND SPATH!

D) type: make install

E) change directory to the one specified in the SPATH and type: ./ircd

You WILL receive a notice about the FDLIMIT.. thats NORMAL unless you see
"PLEASE FIX MAXCONNECTIONS".. we'll talk about this problem later...


  * I CAN'T GET OPS ON MY SERVER IN A CHANNEL (no, I have this in caps for a reason)...
  
If you get this: "*** Notice -- Due to a network split, you can not obtain
channel operator status in a new channel at this time." It's an Easy fix... go
edit include/config.h and goto the #define NO_CHANOPS_ON_SPLIT and change it
to #undef NO_CHANOPS_ON_SPLIT then type: make clean ; make install then rerun
ircd.


  * waaaa, waaa, my server won't accept any clients....
  
REMOVE ALL OTHER I LINES and add this: **I:*@*::*@*::1** This will allow any
client to connect.


  * How do I link up 2 servers?
  
this is a bit more difficult to explain, so I'll do it by example. We have 2
servers with the following info:

1) irc.poop.org with IP addy 1.1.1.1

2) irc.dung.net with IP addy 255.0.0.0

irc.poop.org would have the Following C/N lines:

C:255.0.0.0:mystupidserverpass:irc.dung.net:6667:2

N:255.0.0.0:mystupidserverpass:irc.dung.net::2

irc.dung.net would have the following C/N lines:

C:1.1.1.1:mystupidserverpass:irc.poop.net:6667:2

N:1.1.1.1:mystupidserverpass:irc.poop.net::2

NOTE: the previous C/N Lines allow for auto connections..
meaning each server will retry to connect after a certain amount of time
specified in the Y lines in ircd.conf in this case, the Y:2 line will contain
this information.


  * awwwww man, my server won't let me oper up!!
  
Well, thats just too bad.. maybe you should look at the docs more.. bleh... I
recommend trying to (if you have a SECURE ircd box) #undef the
CRYPT_OPER_PASSWORD in the config.h and recompile. Or, retry the mkpasswd
utility. I've tried it twice in a row and have gotten different passwords,
sometimes they might not work, so retrying might clear up the situation. Also,
if you get an error like "Can't find yada yada Database" you should try to use
the ./mkpasswd command WITH theh "./" in the front.. otherwise it runs the
mkpasswd for the system and NOT ircd.

  * FIX MAXCONNECTIONS Problem...
  
This usually only occurs on Linux based systems.. it's another easy fix...
edit the include/config.h file and change the following:

#define HARD_FDLIMIT_ 1024

#define INIT_MAXCLIENTS 800

to

#define HARD_FDLIMIT_ 250

#define INIT_MAXCLIENTS 200

Then recompile with a: make clean ; make install and rerun ircd.

  * Can I link to EFnet?!?!@?#!@?%$~@#%
  
hardy-har-har.. I don't know I even included this one, but I guess I'm just
sick of people asking. HELL NO, you can't... most of EFnet's server are major
ISP's with enough bandwidth for all of Australia and North Africa Combined...
IN other words, NO, efnet doesn't want your 128k isdn box running linux 2.2.1
running apache and every other exploitable unix binary.

  * Know of any small Networks I can link to?
  
1) None off of the top of my head.. I know TAIN is always around...
irc.megabytecoffee.com

;2) Mode- informed me of a new network just starting out,
the hub server is irc.interave.net and the admins email is
[mode@kirenet.com](mailto:mode@kirenet.com). They are running Hybrid for their
servers.

##  Other links

1) [General IRC Help](http://www.irchelp.org), great place for all around irc
info.

2) [Info on hybrid irc](http://info.hybrid.net)

3) [This is the main server I admin irc for.](http://www.cybertrails.com)
Check us out at irc.cybertrails.com

4) [www.alleged.com](http://www.alleged.com) Thanks to John-Work for hosting
this.

5) [My page](http://users.nni.com/techno)

