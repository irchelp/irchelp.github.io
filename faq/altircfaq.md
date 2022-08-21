---
title: alt.irc faq
author: alt.irc
status: historical
summary: The FAQ from the Usenet group alt.irc
datechanged: 21 August 2022
layout: default
---


**Editor's note**: This is a classic help file dating back to the 1990s when IRC was very new. We still keep this file here for historic value, and also because the general information is still accurate. If you are interested in other, more up to date help files, see [IRC FAQs and Help Files](/faq/). 

Back then there was only 1 network (EFnet), now there are hundreds, each with
different people and channels. Nearly everybody used a shell IRC client such
as ircII, hence all the references to command prompts. Finally, few if any of
the specific information below such as download links, server/channel names,
etc. still work. See the above URL for other help files to get the current
information. _-Jolo_

# Internet Relay Chat FAQ

##  What is IRC?

IRC stands for "Internet Relay Chat". It was originally written by Jarkko
Oikarinen _(jto@tolsun.oulu.fi)_ in 1988. Since starting in Finland, it has
been used in over 60 countries around the world. It was designed as a
replacement for the "talk" program but has become much much more than that.
IRC is a multi-user chat system, where people convene on "channels" (a virtual
place, usually with a topic of conversation) to talk in groups, or privately.
IRC is constantly evolving, so the way things to work one week may not be the
way they work the next. Read the MOTD (message of the day) every time you use
IRC to keep up on any new happenings or server updates.

IRC gained international fame during the 1991 Persian Gulf War, where updates
from around the world came accross the wire, and most irc users who were
online at the time gathered on a single channel to hear these reports. IRC had
similar uses during the coup against Boris Yeltsin in September 1993, where
IRC users from Moscow were giving live reports about the unstable situation
there.

##  How is IRC set up?

The user runs a "client" program (usually called 'irc') which connects to the
irc network via another program called a "server". Servers exist to pass
messages from user to user over the irc network.

##  How do I use a client?

First, check to see if irc is installed on your system. Type "irc" from your
prompt. If this doesn't work, ask your local systems people if irc is already
installed. This will save you the work of installing it yourself. If an IRC
client isn't already on your system, you either compile the source yourself,
have someone else on your machine compile the source for you.

##  Where can I get source for the irc client?

You can anonymous ftp to any of the following sites (use the one closest to
you): **If you don't know what anonymous ftp is, ask your local systems people
to show you**

### UNIX client
 *  `ftp://cs-ftp.bu.edu/irc/clients`
    
 *  `ftp://ftp.acsu.buffalo.edu/pub/irc`
    
 *  [ftp.funet.fi /pub/unix/irc](ftp://ftp.funet.fi/pub/unix/irc)
    
 *  `ftp://coombs.anu.edu.au/pub/irc`
    
 *  `ftp://ftp.informatik.tu-muenchen.de/pub/comp/networking/irc/clients`
    
    
### EMACS elisp

 *  `ftp://cs-ftp.bu.edu/irc/clients/elisp`
    
 *  [ftp.funet.fi /pub/unix/irc/Emacs](ftp://ftp.funet.fi/pub/unix/irc/Emacs)
    
 *  `ftp://ftp.informatik.tu-muenchen.de/pub/comp/networking/irc/clients`
    
 *  `ftp://cs.hut.fi/pub/irchat`
    
### X11 client
    
 *  `ftp://catless.ncl.ac.uk/pub`
    
 *  `ftp://ftp.aud.alcatel.com/tcl/code`
    
    
### NeXTStep client
    
 *  `http://www-personal.engin.umich.edu/~premise/foundation/encircle/`
    
### VMS client
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/vms`
    
 *  `ftp://coombs.anu.edu.au/pub/irc/vms`
    
 *  [ftp.funet.fi /pub/unix/irc/vms](ftp://ftp.funet.fi/pub/unix/irc/vms)
    
 *  `ftp://ftp.informatik.tu-muenchen.de/pub/net/irc`
    
    
    
### REXX client for VM
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/rxirc`
    
 *  `ftp://ftp.informatik.uni-oldenburg.de/pub/irc/rxirc`
    
 *  `ftp://ftp.informatik.tu-muenchen.de/pub/net/irc/VM`
    
 *  `ftp://coombs.anu.edu.au/pub/irc/rxirc`
    
 *  [ftp.funet.fi /pub/unix/irc/rxirc](ftp://ftp.funet.fi/pub/unix/irc/rxirc)
    
### MSDOS
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/pc/msdos`
    
 *  [ftp.funet.fi /pub/unix/irc/msdos](ftp://ftp.funet.fi/pub/unix/irc/msdos)
    
### Microsoft Windows
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/pc/windows`
    
 *  `ftp://ftp.demon.co.uk/pub/ibmpc/win3/winsock/apps/wsirc`
    
 *  `ftp://ftp.demon.co.uk/pub/ibmpc/win3/winsock/apps/mirc`
    
    
### OS/2
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/pc/os2`
    
 *  `ftp://hobbes.nmsu.edu/os2/2_x/network`
    
    
### Macintosh
    
 *  `ftp://cs-ftp.bu.edu/irc/clients/macintosh`
    
 *  `ftp://mirrors.aol.com/pub/info-mac/comm/tcp`
    
 *  [ftp.funet.fi /pub/unix/irc/mac](ftp://ftp.funet.fi/pub/unix/irc/mac)
    
 *  `ftp://ftp.ira.uka.de/pub/systems/mac`
    
    

##  Which server do I connect my client to?

It's usually best to try and connect to one geographically close, even though
that may not be the best. You can always ask when you get on irc. Here's a
list of servers avaliable for connection:

  * USA: 
    * irc.bu.edu 
    * irc.colorado.edu 
    * piglet.cc.utexas.edu 
  * Canada: 
    * irc.mcgill.ca 
  * Europe: 
    * irc.funet.fi 
    * cismhp.univ-lyon1.fr 
    * irc.ethz.ch 
    * irc.nada.kth.se 
    * sokrates.informatik.uni-kl.de 
    * bim.itc.univie.ac.at 
  * Australia: 
    * jello.qabc.uq.oz.au 
  * Japan: 
    * endo.wide.ad.jp  This is, by no means, a comprehensive list, but merely a start. Connect to the closest of these servers and join the channel #irchelp 

## What is the port to use to connect to IRC?

In general, the port to use is 6667. Some servers listen to other ports (most
commonly in the 6660-6670 range), but *not* all. When in doubt, use 6667.

## What's the username and password to connect to irc?

I'm prompted for login: and I don't know what to type! Sometimes when I
try to connect to IRC it just says "connection closed by foreign host. What
gives?

If you see "login:" then you are trying to use telnet to connect to IRC. You
should go back up and read (3) and (4). Nowhere in this FAQ does it say you
should use telnet to connect to an IRC server. You *must* use a client. Read
(4) to find out where to get a client, and (5) to find out which server to
connect to.

"connection closed by foreign host" indicates that you're trying to telnet to
irc, just as in the paragraph above. Again, you HAVE to use a client!

##  OK, I've got a client and I'm connected to a server? Now what?

It's probably best to take a look around and see what you want to do first.
All irc commands start with a "/", and most are one word. Typing /help
will get you help information. /names will get you a list of names, etc. The
output is typically something like this-> (Note there are more channels than
this, this is just sample output).
    
    Pub: #hack      zorgo eiji Patrick fup htoaster 
    
    Pub: #Nippon    @jircc @miyu_d 
    
    Pub: #nicole    MountainD 
    
    Pub: #hottub    omar liron beer Deadog moh pfloyd Dode joek

(Note there are LOTS more channels than this, this is just sample output --
one way to stop /names from being too large is doing /names -min 20 which will
only list channels with 20 or more people on it, but you can only do this with
the ircII client). "Pub" means public (or "visible") channel. "hack" is the
channel name. "#" is the prefix. A "@" before someone's nickname indicates
he/she is the "Channel operator" (see #7) of that channel. A Channel Operator
is someone who has control over a specific channel. It can be shared or not as
the first Channel Operator sees fit. The first person to join the channel
automatically receives Channel Operator status, and can share it with anyone
he/she chooses (or not). Another thing you might see is "Prv" which means
private. You will only see this if you are on that private channel. No one can
see Private channels except those who are on that particular private channel.

##  Now I've picked out a nice channel. How do I join that channel?

And what do I type once I get there? And when I'm done, how do I leave a
channel?

To join a channel, type /join #channelname. That's it! Once you get to the
channel, you will see people talking. It will probably look like this:
 
 
    <Avalon> AUUG is on at the same time as LISA this year and is cheaper.
    
    <Barron> backhaul those DS3s to Virginia ;)
    
    <Barron> buy a farm
    
    <FlashPYR> so is .us going to start charging $50/domain, too?
    
    <Barron> or something
    
    <Tolim> oops
    
    

Note that you will often come in in the *middle* of a conversation. Unless
you're familiar with the channel you may want to sit and watch it for a minute
or two to see what the conversation is about. Often the channel name (for
instance, #Twilight_Zone) has nothing to do with what conversation goes on on
the channel (#Twilight_Zone does *not* have discussion about the TV show
"Twilight Zone"). So if you join #baseball, don't be surprised if you hear
about the SuperBowl picks or even the Rock-n-Roll Hall of Fame Museum!

To start talking, just type! And when you're done saying what you have to say,
just hit the [return] key. You can start with something simple like "hello!".
You don't have to type  hello! because IRC will insert  before all of your
channel messages.

When you choose to leave a channel, just type /part #channelname

##  What is a channel operator? What is an irc operator?

A channel operator is someone with a "@" by their nickname in a /names list,
or a "@" by the channel name in /whois output. Channel operators are
kings/queens of their channel. This means they can kick you out of their
channel for no reason. If you don't like this, you can start your own channel
and become a channel operator there.

An IRC operator is someone who maintains the IRC network. They cannot fix
channel problems. They cannot kick someone out of a channel for you. They
cannot /kill (kick someone out of IRC temporarily) someone just because you
gave the offender channel operator privileges and said offender kicked *you*
off.

##  What is a "bot"? How can I get one?

"bot" is short for "robot". It is a script run from an ircII client or a
seperate program (in perl, C, and sometimes more obscure languages).
_StarOwl@uiuc.edu_ (Michael Adams) defined bots very well: "A bot is a vile
creation of /lusers to make up for lack of penis length". IRC bots are
generally not needed. See below about "ownership" of nicknames and channels. A
bot generally tries to "protect" a channel (it should be noted that all bots
will fail at some point, so relying on them to keep a channel is not a good
idea) from takeovers.

It should be noted that many servers (especially in the USA) ban ALL bots.
Some ban bots so much that if you run a bot on their server, you will be
banned from using that server (see segment below on K: lines).

##  What are good channels to try while using irc?

\#hottub and #riskybus are almost always teeming with people. #hottub is meant
to simulate a hot tub, and #riskybus is a non-stop #game. Just join to find
out!

To get a list of channels with their names and topics, do /list -min 20 (on
ircII) which will show you channels with 20 or more members. You can also do
this for smaller numbers.

Many IRC operators are in #Twilight_Zone ... so if you join that channel and
don't hear much talking, don't worry, it's not because you joined, operators
don't talk much on that channel anyways!

##  What are some of the foreign language channels on IRC? What do they mean?

Some of the most popular foreign language channels include #42 (which is a
Finnish channel), #warung (which is a Malaysian channel. The word "warung"
means "coffeehouse" or "small restaurant"), #polska (a Polish channel),
\#nippon (a Japanese channel, note that "funny" characters are often seen here
-- this is Kanji. You will need a Kanji-compatible terminal program and Kanji-
compatible irc client to converse in Kanji), #espanol (a Spanish channel),
\#russian (a Russian channel). These are just examples -- a large percentage of
languages in the world is spoken on irc *somewhere*. If your language/country
isn't listed above, ask on #irchelp to see if there is a channel for it.

## Someone is using my nickname, can anyone do anything about it? 
## Someone is using my channel, can anyone do anything about it?

Even while NickServ registered nicknames, there are not enough nicknames to
have nickname ownership. If someone takes your nickname while you are not on
irc, you can ask for them to give it back, but you can not **demand** it, nor
will irc operators /kill for nickname ownership.

There are, literally, millions of possible channel names, so if someone is on
your usual channel, just go to another. You can /msg them and ask for them to
leave, but you can't *force* them to leave.

##  There aren't any channel operators on my channel, now what?

Channel operators are the owner(s) of their respective channels. Keep this in
mind when giving out channel operator powers (make sure to give them to enough
people so that all of the channel operators don't unexpectedly leave and the
channel is stuck without a channel operator). On the other hand, do not give
out channel operator to *everyone*. This causes the possibility of mass-
kicking, where the channel would be stuck without any channel operators. You
have one option. You can ask everyone to leave and rejoin the channel. This is
a good way to get channel operator back. It doesn't work on large channels or
ones with bots, for obvious reasons.

##  What if someone tells me to type something cryptic?

Never type anything anyone tells you to without knowing what it is. There is a
problem with typing a certain command with the ircII client that gives anyone
immediate control of your client (and thus can alter your account environment
also).

##  What was NickServ? Is NickServ ever coming back?

NickServ was a nickname registration service run in Germany. It was a bot that
told people who used a registered nickname to stop using that nickname.
NickServ has been down since the Spring of 1994.

It is not likely that NickServ will be back. Remember, nicknames aren't owned.

##  What does **"Ghosts are not allowed on IRC." mean? What does"** You are not welcome on this server." mean?

On IRC, you cannot be banned from every single server. Server-banning exists
only on a per-server basis (being banned on one server does not mean you are
automatically banned from another). "Ghosts are not allowed on IRC" means that
you are banned from using that server. The banning is in one of three forms:

  * You are banned specifically, you yourself. Only you can be responsible for this (if you are using a shared account, this obviously does not apply). Thus the responsibility lies completely with you and you have noone to complain to. 
  * Your machine is banned. Chances are it wasn't you who committed the wrongdoing. Try using another machine on campus and seeing if you can use that particular irc server then. 
  * Your whole site is banned (where "site" == "school", "company", "country"). This almost certainly wasn't your fault. And chances are you won't be able to get the server-ban lifted. Try using another server.  The most general answer is "use another server", but if it bothers you, try writing to the irc administrator of that site --> /admin server.name.here -- plead your case. It might even get somewhere! 

##  What does "You have new email." mean? What does it mean when I see "[Mail:5]" in my status bar?

IRC does not have its own mail. However, if your client tells you that you
have new email, it simply means that you have received mail in your account.
Leave irc (either by suspending it or quitting it), and read the mail.

You might also see "You have new email." when you start irc. IRC does not keep
track of email between sessions, so when you start irc and have something in
your mailbox, irc will tell you you have new email.

The "[Mail: 5]" in your status bar tells you how many email messages you have
in your mailbox. Again, to access them, leave irc and read them using your
normal mail reader.

##  I've just tried typing /list but it scrolls by so fast! How can I slow it down to something more my pace?

The standard ircII client (for UNIX) has an option called "hold mode". To
activate it, type: /set hold_mode on -- then you will be able to hit return
after each screen's worth of data.

##  I've done a /whois on myself and other people, but I notice that my real name shows up in parentheses -- I don't like this! It doesn't show up in other people's parentheses. How can I change it?

In UNIX, there are two way of changing your IRCNAME and it depends on which
shell you are using. If you are using csh or tcsh (the more popular UNIX
shells, when in doubt, try this first), type this before you start irc:

setenv IRCNAME "what you would like to appear"

If you don't want to type that every time you log in, put the line exactly as
it appears above into your .cshrc file.

If you are using sh, ksh, or bash, type this before you start irc:
IRCNAME="what you would like to appear";export IRCNAME

Or insert that line into your .profile

In VMS, you must put this line in your login.com file: DEFINE IRCNAME "what
you would like to appear"

##  What is a netsplit?

What does it mean when I see: `***Signoff NickName (*.bu.edu eff.org)`? Why
does NickName keep signing off?

Netsplits are (unfortunately) a routine part of IRC life. What the above
message means that NickName, who you were on a channel with, was on a
different server from you. This server split off from the part of the net you
were on.

Note that netsplits are all from a point of view of the user. After a netsplit
rejoins people might say to you "where did you go?" -- because from their
perspective, *you* split off.

The only thing you can do during a netsplit is wait for the net to mend
itself. Changing your server during a netsplit is a Bad Idea, because you are
likely to get nickname collided. By changing servers, you may also be
contributing to the lag.

As long as you don't quit your client, any DCC chat or send will still work,
even during a netsplit (unless the netsplit is because of a specific rare
hardware problem).

##  Where can I find GIF archives of irc people?

GIF archives of irc people are available:

* `ftp://ftp.funet.fi/pub/pics/gif/pics/people/misc/irc`
    
* `ftp://ftp.informatik.tu-muenchen.de/pub/comp/networking/irc/RP`
    

##  Where can I learn more?

The best, basic, irc user's manual is the IRC Primer, available in 
[web page form](/faq/ircprimer.html), 
[plain text](/historic/ircprimer/IRCprimer1.1.txt) ,
[PostScript](/historic/ircprimer/IRCprimer1.1.ps.Z), and
[LaTeX](/historic/ircprimer/IRCprimer1.1.tex.Z). You can also join various
IRC related mailing lists.

* **operlist**

"operlist" is a list that discusses current (and past) server code, routing,
and protocol. You can join by mailing _operlist-request@kei.com_ with Subject:
subscribe

* **ircd-three**

ircd-three@kei.com, exists to discuss protocol revisions for the 3.0 release
of the ircd, currently in planning. Mail _ircd-three-request@kei.com_ with
Subject: subscribe

Those looking for more technical information can get the IRC RFC as a 
[web page](/protocol/rfc/rfc.html  ) or 
[plain text](/protocol/rfc/rfc1459.txt) or 
`ftp://cs-ftp.bu.edu/irc/support/rfc1459.txt`.

##  Where can I get an updated copy of this FAQ?

this FAQ is available from several sources:

* `ftp://cs-ftp.bu.edu/irc/support/alt-irc-faq`
* `ftp://ftp.kei.com/pub/irc/alt-irc-faq`

You can also look at this FAQ on the web, at:
`http://www.kei.com/irc.html`

##  What do I do if I'm still confused or have additions to this posting?

email `hrose@kei.com`
or ask for help (in #irchelp) on irc.

