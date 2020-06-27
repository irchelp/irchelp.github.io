---
tttie: IRC Command Cosmos
layout: default
redirect_from:
  - /irchelp/misc/ccosmos.html
---

**Ed. note:** This guide is intended for advanced users, others should first
check out our many introductory [help files](/faq/new2irc.html). As the author
pointed out, this guide is primarily for
[Undernet](https://www.undernet.org/), but much of this information also
applies to other networks as well. This file is mirrored with permission of the
author.
{% comment %}
see also his [frames-enabled version](http://www.student.uib.no/%7Est01369/ccosmos/ccosmos.html).
{% endcomment %}

* * *

The IRC Command Cosmos, an advanced guide to IRC commands.

Edition 2.2, August 2002

Up to date as of u2.10.11.rc.1

* auto-gen TOC:
{:toc}

The IRC Command Cosmos, an advanced guide to IRC commands.

Edition 2.2, August 2002

Up to date as of u2.10.11.rc.1


{:#sec1}
#  1 Introduction 

{:#sec1-1}
##  1.1 Why this guide?

The average IRC-guides around tend to teach only the basics or they'r
hopelessly outdated and mix IRC-commands with the IRCII 1) client commands.
New features (last 10 years!) are downrigh hard to find documentation for,
scattered as they are in releasenotes, newsletters or plainly undocumented.


If you are new to IRC, I suggest you go for the other guides first,
([http://www.irchelp.org/](http://www.irchelp.org/) or
[http://www.undernet.org/](http://www.undernet.org/)) but if you're fairly
familiar with IRC and want to fetch some interesting and often usefull
commands, ([2.6](#sec2-5) and
[3.7](#sec3-7) beeing highlights) you've come to the right
guide! :-)


1) IRCII: The first client for IRC networks. mIRC is the most common client
today.


{:#sec1-2}
##  1.2 What does The IRC Command Cosmos contain?

An explanation for every command on the IRC network **Undernet** or other nets
using the latest **ircu** software 1), except service-commands 2) and those
commands restricted to IRC-Operators only.


What you can do on IRC depends on what software the irc-network is running.
Over the years, this software has been split up into several different
programs, maintained separately by different irc-networks. Beeing an Undernet
user by chance, finding their software-development interesting and knowing
several other nets to be using their software, I aim to completely document
their version. I can't keep up with development on the other nets like EFnet
and IRCnet, but even if you use these nets, you may find this guide helpfull,
the nets still got a lot of in common. 3)


The guide should make sense for any client, even if my examples might be a bit
skewed towards mIRC. You may need to replace /raw with /quote in my examples.
This edition of the guide should be complete and up to date, as of version
2.10.11.rc.1 of ircu. (**August 2002**) The guide is updated once or twice a
year, depending on the upcoming changes.


1) ircu: The server-software developed by Undernet and also used by several
other networks. See <http://coder-com.undernet.org/>
for the most recent version. Some networks have developed
their software starting from earlier versions of ircu. A former developer
started his own branch of ircu,
(<http://ircu.sourceforge.net/>) claiming this
to be the "real" ircu. This guide however, choose not to deal with specifics
for this or other branches of ircu. Still, much in this guide will apply to
them as well.


2) For example X, nickserv, channelservice e.t.c


3) While the nets have drifted apart, people are using the same clients on all
nets and the specifications for a client havn't changed over the years, so
they need to display a minimum of uniformity for your dear mIRC, Pirch, amIRC
e.t.c to work at all. The client protocol is more or less defined in RFC1459,
a document that defined the "original" IRC. There exist other documents, like
RFC2812, but 1459 is the only one who can claim authority among all the
various nets, even though it itself is outdated. See ISUPPORT messages
([7](#sec7)) for another way to bridge the divide.

{:#sec1-3}
##  1.3 Is my net using ircu?

Many of the smaller IRC networks are using various versions of ircu. To test if
your net does, log into IRC and type /version. if the reply starts with
u2...e.t.c, it's using a version of ircu, e.g 2.10.10. If it dosn't, you could
also type /info and see if it mentions Undernet or ircu. Some nets run software
based on an ircu version, but with their own tweaks and additions which /info
ought to tell you about.

{:#sec1-4}
##  1.4 Hiding the Undernet

Early in 2001, Undernet was struck with a massive Denial Of Service-attack,
bringing down the channelservice and prompting several servers to leave the
net. This sped up the development of a replacement for the old X and W and led
to proposal CFV-165 (nicknamed HEAD_IN_SAND in the ircu code) being passed by
the owners of the servers. It were decided to hide all non-essential
information from users, disabling non-essential commands and generally hide
all information that could be misused, as g-lines and networkstructure. The
proposal took effect from ircu2.10.10.pl14


These commands are disabled:


Every /STATS ([5](#sec5)) except P, u and W

/map ([4.1.2](#sec4-1-2))

/links ([4.1.3](#sec4-1-3))

/trace ([4.1.5](#sec4-1-5))

+s, +w and +g nickmode ([2.5](#sec2-5))


the names of irc-servers are hidden in /who
([2.14](#sec2-14)), /whois
([2.4](#sec2-4)), /whowas
([2.10](#sec2-10)) and in netsplits and forced modechanges.
Remote /whois dosn't depend on knowing the server and is still allowed. _All
other remote queries are or will be disabled_.


Each act of hiding is a configuration choice in the software, so other nets
using ircu will be able to choose which of these, if any, they will adopt.
This guide will keep the undernet-disabled features, as other nets still use
them and may still choose to do so.


CFV-165 is an internet-sociologists dream. Even though the most common
complaint about CFV-165 is that it makes it harder to choose the right server
so as to minimize lag between yourself and your friends, perhaps the
underlying issue is how this somehow degrades irc into a confined webchat
experience. It has been pointed to the well-known tendency to sacrifice
freedom for security when times are tough, though you may claim someones
freedom were sacrificed for the security of others (the owners of the servers)

Does less information lead to less choice which leads to less freedom? Whether
this makes IRC an anarchic, feudal or technocratic society (The idea of
Internet as an anarchy has passed its best-before date, has it not?) is an
interesting question or the bloated whineing of script-kiddies, depending on
your viewpoint. :-)

(Hey kids! A project on this may give you the grades to get YOU into the
college of your choice! Visit your local library today!)


**Help to selfhelp**
With /map gone,
<http://www.undernet.org/servers.php>
keep a list of servers on undernet, minus the dedicated routing servers. In
addition, there's still a few commands left for the eager scripter-soul to
exploit:



  * before 2.10.10.pl15: Remote /admin ([4.2.3](#sec4-2-3)) tests if a known server is connected to the net and support wildcards which return first matching. Maybe something about the network structure can be deduced from who's _first_?


  * before 2.10.11: Another way to check if a server is in the net without connecting to it is doing a remote serverping by its full name: `/raw ping servername` will return `PONG from yourserver yournick` if the server is connected, and `PONG from yourserver servername` if it's not. Apparently the ping never goes remote but is checked against the list of servers nontheless.

  * The extended /msg syntax ([2.2](#sec2-2)) allow for a quick brute-force search determining which server a nick is on. In ircu2.10.11.rc1 it will not send any message but amazingly still triggers a "no such nick" if you write in a non-existing servername. I have, for the lack of netsplits, been unable to check if the name is looked up in the list of connected servers or merely the static list of Undernet-servers that every server keeps locally. (anyone more versed in C out there?)


The tricks above suppose that the full servername (e.g
oslo.no.eu.undernet.org) as seen by a user connected to it is the same name as
the one propagated on the network. We shouldn't be surprised if, after the
latest removals, beeing able to refer to a remote servers' name turns out as a
non-essential feature in itself.

The servers already refer to themselves by shorter nicks
([4.1.2](#sec4-1-2)) when communicating between themselves,
only translating for the users using a local list of names. As remote
servernames don't get displayed anymore, renaming the servers in this list
would stop the above exploits with no changes in the code. This however is
impractical, so these tricks ought to be around up to some given ircu-version.



  * The simplest and best tool is still ping ([6.3](#sec6-3)). With users in a channel running some script, a usefull lag-map could still be constructed among those in a channel, giving suggestions of lesser lagged servers, regardless of the underlying network structure. There must be a script for this around already?
If we suppose that servers with lagged connections are seldomly hubs in the
network, ([4.1.2](#sec4-1-2)) it follows that changing to any
other server will get you past its lagged connection, and so there's little
need to consult the tree-structure. In June 2001, 17 out of 25 servers visible
in /map were leafs, and some of the hubs were dedicated ones not allowing
client-connections. (today, all hubs on Undernet are, far as I gather,
unavailable to users)

  * The difference between clients and users in /lusers ([4.1.1](#sec4-1-1)) will tell you how many connections your server has to other servers and from that if it is a hub or purely a leaf.

  * The propagation of the /silence settings ([2.12](#sec2-12)) leave a trail across the net from the sending server via every intermediary to the receiving one. As we are allowed to see the propagated parts of other users' silence-settings, one could traverse the servers winding up the thread like some cyber-Ariadne. Together with the information from /lusers and imposing the necessary tree-structure, ([4.1.2](#sec4-1-2)) it shouldn't be too hard to get the overview again. Almost as good as /map and twice the fun. :-)



    In addition there's littered with smaller glimpses of servernames in /kill, /who, /quit, /whowas netsplits, the use of local channels e.t.c in serverversions between ircu2.10.10 and 10.11. Should any of you implement the tricks above or find other loopholes yourself in 2.10.11, why not drop me a mail? (Well, to keep it to yourself and stop the ircu-coders from fixing it, but how does such secrecy fit with a hacker-mentality?)


{:#sec1-5}
##  1.5 Changes in this edition of The IRC Command Cosmos

Since edition 2.1, the following sections have changed, mostly due to changes
in ircu between 2.10.10.pl14 and 2.10.11.rc.1


[1.4](#sec1-4): Updating the self-to-selfhelp to reflect
ircu development

[2.5.1](#sec2-5-1): +w, along with +g and +s are not allowed
on Undernet. (and has been disallowed for a while)

[2.5.1](#sec2-5-1) and [3.5.1](#sec3-5-1):
Nickmodes +r, +x and channelmode +r introduced for upcoming channelservice
upgrades and added security through host-hiding (we've been waiting for this
one! :-D)

[2.6](#sec2-6): Individual servers may choose to hide the
idletime in a remote /whois

[2.9](#sec2-9): An elaboration on the difference between
/userip and /dns

[2.12](#sec2-12): beeing able to see other users' /silence
list is not a bug, it's a feature!

[2.14](#sec2-14): extended /who didn't display both @ and +
if a user were both op and voiced in the same channel

[3.2](#sec3-2): bugfix for /invite to local channels

[3.5.1](#sec3-5-1): Changing into a banned nick while in
channel now properly ban you and the modes +b and +m now stops you from
sending to the channel from outside, even if it is -n.

[3.5.2](#sec3-5-2): the propagation of topics is now less
noisy

[3.11](#sec3-11): Daniel Corkill solved the /wallchops vs
/notice inconsistency

[4.1.4](#sec4-1-4): A new /list stop feature added (Why didn't
anyone think of it before? A Coloumbi-egg)

[4.2.7](#sec4-2-7): A new but uninteresting serveroption in
/version

[6.9](#sec6-9): A problem with characters and banning.
Luckily only of academic interest.

[7](#sec7): Updating information about the ISUPPORT
messages and adding rumours about a novel use of the passworded login

[8](#sec8): Addes some more weblinks and channels


The STATS section does not reflect recent changes in the ircu code after
Undernet barred access to them, but I may get back to these if I find an ircu-
network where they are actually viewable by users or I get around to compile
ircu on my computer. Until then I must refer to 
[the coder-com website](http://www.coder-com.undernet.org/).



{:#sec1-6}
##  1.6 Getting the latest version and contacting the author

The latest edition is always available at `http://www.student.uib.no/~st01369/
ccosmos/` A mirror is available
at <http://www.irchelp.org/irchelp/misc/ccosmos.html>.
The last URL is probably the most permanent.

If you wish to be notified of new editions, please visit
`http://www.topica.com/lists/ccosmos`
register. (No, I won't use your e-mail address for anything else and I won't
give it out to anyone. :-)

Feel free to contact me `http://www.student.uib.no/~st01369/indexe.html` with
your corrections, suggestions or comments. As for quoting and noncommercial
distribution: Go ahead, as long as the guides' name and a link to its original
location is kept and the text isn't altered substantially without stating so.
If you'r mirroring the guide, drop me a note and I'll include a link to it.




{:#sec2}
#  2 People

{:#sec2-1}
##  2.1 nick

Sets your nick. Syntax: /nick yournewnick The maximum nicklenght on Undernet
is 9 characters. See NICKLEN in chapter [7](#sec7) for
the length at your net and [6.9](#sec6-9) for legal
characters in a nick.


There's a "nickchange too fast" floodstopper in ircu. A person could flood a
channel with his nickchanges while for the same reason beeing hard to kick.
You can not change your nick more than once in 30 secs, or twice if it's been
unchanged for 60 secs already.

You can't change your nick if you'r in a channel where you'r banned, see
[3.7](#sec3-7)

{:#sec2-2}
##  2.2 privmsg

Syntax: `/privmsg receiver text`

If the receiver is a nick, this equals talking to someone in a private window.

If the receiver is a channel and you'r in it, it equals typing something in
the channel. also see the sister-command /notice
([2.3](#sec2-3))

/msg as it is called in mIRC, could also be used for external messages. (See
+n [3.5](#sec3-5)). When you send a message to a channel
from outside with /notice, mIRC and other clients will treat it correctly,
while an external /privmsg will appear as if an invisible nick suddenly raised
its voice. According to some this is still the correct way, according to
others it violates the graphical user interface. Might make for a nice trick
anyway..


If we take advantage of the underlying machinery, we can send one message to
several destinations. Here's an example:

"`/raw PRIVMSG Sabeltann,Timo,#ruminants :The grass is greener on the other
side, lets move!`"

Or just: "`/privmsg nickorchan,nickorchan text`". (Works in mIRC) Note that
since we're overriding mIRC, the text you send isn't displayed in the
channelwindow. You will have to /echo that in yourself with your script.

(Maybe an idea for suppressing display of text your script send to a channel.
Didn't some IRC-virus implement that already?)


PRIVMSG is also taking care of the /me statements. See
[6.3](#sec6-3)


The /raw (or /quote) command is how you bypass aliases and your clients
interpretation of commands. Sometimes, you pass the command directly, like in
/map, a command mIRC has no "idea" about what means, while in multiple sending
above, we used /PRIVMSG , as /msg is a command in mIRC that it translates
according to its own rules, before passing it on as PRIVMSG to the server.


Up to ircu2.10.10, there were an extra secure syntax on the form:

/msg nick[%host]@server

where host is the optional address of the nick and server the irc-server it
resides on. This syntax were intended for sending your password to the
channelservice bots, so that you wouldn't mistakeingly send it to someone else
posing as them on another network. On Undernet, you could never change your
nick into typical service-nicks anyway. (see
[5.2.2](#sec5-2-2))


Example:

The nick Timo has the address "\*.surfers.org" and is using the irc-server
"Oslo-R.NO.EU.Undernet.org"

`/msg Timo%*.surfers.org@Oslo-R.NO.EU.Undernet.org Hi there! You won't see
this if you don't match my criteria`


This feature isn't of much use as authentication of normal users, for that
refer to authentication via the channelservice bots. As of 2.10.11, it does
not longer send the message, but curiously enough, will give a "no such nick"
if you get the host or server wrong.

Together with the list of servers available from www.undernet.org, this supply
us with a brute-force way to find a persons' irc-server.




{:#sec2-3}
##  2.3 Notice

Syntax: `/notice receiver text` where receiver is nick or channel.


The reason for NOTICE according to RCF1459, is to define a way to send
messages that should _never_ generate an automatic reply. The object is to
avoid loops of responses between scripts/bots, for example this quite
repeating conversation:

Bot1: Please send afile.txt

Bot2: Sorry, I'm turned off.

Bot1: I don't understand the command "Sorry, I'm turned off".

Bot2: Sorry I'm turned off.


A ping Query/Reply between users ([6.3](#sec6-3)) is a good
example of an automated PRIVMSG/NOTICE pair.

NOTICE-messages may be treated slightly different than PRIVMSG when displayed
in mIRC, both in color and which window they'r displayed in. Just as PRIVMSG,
you may msg both channels and person. You may send a notice to the channelops
alone with: `/notice @#channel text` ([3.11](#sec3-11))



{:#sec2-4}
##  2.4 Whois

Syntax: `/whois nick1,nick2, ...`

Basic information about a nick. A central command in IRC and it pops up all
through this guide. Usermodes ([2.5](#sec2-5)), getting
seconds idle ([2.6](#sec2-6)) e.t.c Notice that the
channels in the whois reply are sorted with the channel the nick joined first
as the rightmost.

The full internet-address for the user is shown in the whois, also see
[2.9](#sec2-9). Some nets hide the first part of the
address, as an attempt to combat attacks which involve the users' address, e.g
portscanning and pinging. Then only IRC-operators may see the full address.
(something like this is in the making on Undernet, see
[2.5.1](#sec2-5-1)) Others will send an IDENTD request to
verify the username. mIRC usually handles that. For more information about
identd, see the IDENTD RFC. (RFC1413) or check the undernet homepage.


Example:

Debet is ~ted@modem68.johnsonconsulting.com * Accountancy RULEZ

Debet on @#spreadsheet-newbies

Debet using \*.undernet.org The Undernet Underworld

Debet End of /WHOIS list.


The ~ means that no IDENT has verified the username ted and Debet is an op on
\#spreadsheet-newbies.

The network does not hide his internet-address modem68.johnsonconsulting.com
but it hides what IRC-server he is using, an ircu2.10.10-something feature.




{:#sec2-5}
##  2.5 Usermodes

{:#sec2-5-1}
###  2.5.1 All the modes for a nick

Here's all the modes available for a nick.


Syntax: `/mode <nickname> {[+|-]mode(s)}`

i
: Makes you invisible. See "Note on invisibility"
([2.7.4](#sec2-7-4))

s
: Receives server notices. You receive various information sent between servers.
Mostly kills and G-lines, but also nickname collisions, invalid usernames,
splits e.t.c See [2.5.3](#sec2-5-3) for masks for this
command. (ircu only)

w
: Receives wallops. The IRCops broadcast messages with this, you might even
catch an IRCop-conversation! (Almost like tuning in on the police-radio, eh?
:-P ) As for the moment, "uworld.undernet.org", that is the X service on
Undernet, uses the Wallops too. ircu2.10.10 has the option of disabling this
for regular users

g
: [New in ircu2.10.04] You receive "HACK wallops". After a desynch of the net,
servers would start mending it and creating large amount of these wallops.
This tended to flood the user and desynchs were even created to do just that.
Therefore these wallops were moved to beeing "DESYNCH messages", displayed as
wallops to the user if he were +g

d
: Deaf in all channels. Ircu only. You won't "hear" a thing that's said in the
channels. Private messages get trough though. Primary reason is making the job
easier for service bots that dosn't want to process channel messages. Makes
logging of changes in chan easier too, and would suffice as an overly brute
channel-flood stopper.

x
: On a network where everyone runs ircu2.10.11 or above, you will be able to
turn on this mode _after_ logging into X on Undernet or whatever service your
net would be running. setting this mode hides your hostname (your internet
address) in the /whois reply and elsewhere. The hostname
"modem44.londonpark.com" used by the registered user WinstonC would be masked
as "winstonc.users.undernet.org", so these users are still fully banable, even
though their ISP can't be tracked down.


Hiding your hostname will shield you against several types of attacks often
carried out on IRC, but be aware that taking part in a DCC chat or
filetransfer will reveal your IP-address, so turn off automatic acceptance of
these if you want to use +x.

Also see use of passwords during logon ([7](#sec7))


In addition, there's the operator flag, (+o) that indicates an operator, the
zombie-flag "!" used halfway in mending a netsplit, +k that's used by the
channelservice. And +r to signify a logged-in service account, a prerequisite
to set +x. (See [3.5.1](#sec3-5-1) for details on +r)

No one can kick or deop +k clients from a channel, and they may also message
any channel from outside, regardless of any restriction. You may /msg +k users
regardless of target-restrictions. ([3.10](#sec3-10),
[7](#sec7)) Lastly, a whois on a +k won't show the
channels it's on.


Note that Undernet do not let ordinary users see w, g and s messages. The
ability to disallow that has been around since ircu2.10.10. (see
[1.4](#sec1-4))





{:#sec2-5-2}
###  2.5.2 Finding peoples modes

You'll spot a +d in the who and whois reply.

Example:

"/Who mowgli" returns: `mowgli Hd\* mow@ppp-21.treetop.jungle.br :3 Baloo-Bot
TM`

Hd means the user is _H_-ere (as opposed to _G_-one, i.o.w
away([2.11](#sec2-11)) and that mode d (deaf) is on. The *
tells us he's an IRCop. :3 means the hopcount is 3.
([4.1.5](#sec4-1-5))

In the /whois reply, a +d is spotted by a - after a channelname.

Example: `mowgli on -@#Junglechat` (+d mode and op on the channel.)

+o is spotted in whois by "nickname is an IRC operator"

+i is spotted by doing "/whois \*nickname" and seeing if the right person pops
up. If he/she dosn't, the nick is invisible.

+w and +s can't be seen by normal users. (+w due to a recent Undernet patch)



Note:
: For address and away, also see /userhost ([2.9](#sec2-9))



{:#sec2-5-3}
###  2.5.3 Server notice masks

From version 2.10 of the ircu serversoftware, a masking option of users s-mode
has been implemented, so you can decide which types of notifications you'r
interested in. +s is disabled for users of Undernet though.

This section is based on documentation supplied by Ghostwolf.


Syntax: `/mode <nick> +s [+/-][mask]`

|---------------+--------------+--------------------------------|
|       **Mask**|      **Name**|                 **Description**|
|:-------------:+--------------+--------------------------------|
|              1|    SNO_OLDSNO|           unsorted old messages|
|              2|  SNO_SERVKILL|  server kills (nick collisions)|
|              4|  SNO_OPERKILL|                      oper kills|
|              8|     SNO_HACK2|                         desyncs|
|             16|     SNO_HACK3|               temporary desyncs|
|             32|    SNO_UNAUTH|        unauthorized connections|
|             64| SNO_TCPCOMMON|     common TCP or socket errors|
|            128|   SNO_TOOMANY|            too many connections|
|            256|     SNO_HACK4|      Uworld actions on channels|
|            512|     SNO_GLINE|                          glines|
|           1024|   SNO_NETWORK|             net join/break, etc|
|           2048|SNO_IPMISMATCH|                   IP mismatches|
|           4096|  SNO_THROTTLE|host throttle add/remove notices|
|---------------------------------------------------------------|
|**Operators only:**                                            |
|           8192| SNO_OLDREALOP|          old oper-only messages|
|          16384|  SNO_CONNEXIT|             client connect/exit|
|---------------+--------------+--------------------------------|

If you want more than one of the masks, you simply add the numbers. To later
add or remove a mask from your s-mode, use + and -.


**Examples:**

To be notified upon net join/breaks, you would type `/mode yournick +s 1024`.

Later you'r eager to be notified when your server fills up, so you type `/mode
yournick +s +128`.

Now you are notified both about "too many connections" and "net join/break"


Another day, you'r feeling bored, and want to watch new g-lines
([5.1.2](#sec5-1-2)) in addition.

You type `/mode yournick +s 1664`. (Since 1024 + 128 + 512 = 1664)

But this is too much, so you drop the g-lines with `/mode yournick +s -512. `
(`/mode yournick -s +512` works fine as well)


`/mode yournick +s 8191 `let you have it all


Standard if no mask supplied: SNO_OPERKILL, SNO_GLINE and SNO_NETWORK.

`/mode yournick +s` will give you kills done by operators, G-lines and
netsplits/joins




{:#sec2-6}
##  2.6 Getting seconds idle

The idle time is how long the nick has been silent towards its IRC-server. In
other words being quiet. Only the server that the nick is connected to "knows"
this. Knowing the idle-time is usefull if you wonder if the person has left
the keyboard without putting on an away-message, or might just be ignoring
you. It could also be used successfully as a "silent ping" as it can give you
the lag from you to the nicks' server. Just count the seconds it takes from
you send the command to you receive the reply, and divide with 2. That's how
many seconds it take for a message from you to reach the persons server.
(another approach outlined in [4.1.5](#sec4-1-5))


Syntax:

`/whois nick nick` or `/whois fullservername nick` where fullservername is the
nicks server.

the first syntax is available from ircu2.10.00, the second works only below
2.10.10.pl14. What technically happens, is your everyday whois-request beeing
transmitted to a remote server.


Examples:

Xerxes is on stlouis, we're some other place: `/whois
stlouis.mo.us.undernet.org Xerxes`

We get a whois with Xerxes' idle-time:

`Xerxes is johnbg@ppp52.netomania.com * John Bertram Garfunkel`

`Xerxes on #Creedence #Japanese.baseballcards @#old_boats`

`Xerxes using StLouis.MO.US.UnderNet.org StLouis' Gateway to the UnderNet`

`Xerxes has been idle 50min 12secs, signed on Thu Aug 1 15:35:23`

`End of /WHOIS list.`


Note:

* If you and the nick is on the same server, a common /whois will do the same.
* The chatting in a DCC-chat dosn't go through the IRC-network, and so is not detected by idle-time. An alternative "ping" could be to use the CTCP finger (/ctcp nick finger) as atleast mIRC supplies an idletime for the whole program in the reply; but this isn't "silent".
* It's standard to only nullify idle-time when nick uses PRIVMSG. That is, sending a message to a nick or a channel. /notice does not qualify. See server options ([4.2.7](#sec4-2-7)) to determine if the server is using the standard setting.
* away-messages arn't broadcasted when a netsplit is mended. You must do a remote whois to see it.
* admins have the option from ircu2.10.10 and onwards, to hide the idletime when requested remotely.


{:#sec2-7}
##  2.7 Searching for people

{:#sec2-7-1}
###  2.7.1 Searching by address

Example:

`/who \*.fiddledep.gov`

This lists all visible nicks using the Fiddle Departments' internet-
connection. The command is usefull for finding people from your own host and
geographical area and finding people who tend to change their nicks often.


Example:

Your ISP gives people from your area DNS-addresses ending with
"smalltown.wasanet.se" for example modem30.ppp.smalltown.wasanet.se Typing
`/who \*.smalltown.wasanet.se` may then reveal people from your area.



{:#sec2-7-2}
###  2.7.2 Searching by nick

You can use wildcards like * and ? in a whois-query also. Here are some
examples:

`/whois *sam*` will give you nicks like Samantha, Sam47, Sam or Tarsam.

`/whois ??`. This displays everyone with a nick of 2 letters, like Ma and V2.

Undernet will not give you more than 251 nicks back from one query to stop you
from flooding yourself.



{:#sec2-7-3}
###  2.7.3 Searching it all

The first line in a whois-reply might look like this:

`Xerxes is johnbg@ppp52.netomania.com * John Bertram Garfunkel`

using wildcards, we're able to search for anything in that line. _Even the
Namefield._

`/who *garfunkel*`, `/who *netomania*`, `/who *xerx*`, `/who john*`
and `/who *funk*` will all reveal his name if he is visible.

`/who fullservername` lists people using that irc-server. (wildcards
allowed) so if he's on sandiego.ca.us.undernet.org, `/who *diego*` would
reveal him and others as well. (Use /lusers with servername, as described in
[4.1.1](#sec4-1-1) if you'r just going to count people on a
server.)


**Note:**

This shows that beeing visible and writing "I'm from Essex" in the namefield
might not be such a good idea if some jerk is mass-messaging everyone that
matches `/who *sex*`. Again, be aware that the namefield IS searchable.

See section [2.5.2](#sec2-5-2) (Finding peoples modes) for
explanation of details in the "/who nickname" output. Also note that "/who"
searches each of the "information fields" (nick, login, real name, host name
and server name) _separately_ so you can't filter simultaneously, you must do
an individual search for each field.

That means if you'r looking for jane in sweden, you'll have to look at the
outputs of `/who *jane*` and `/who *se*`.

`/who *jane* *se*` would ignore \*se\* and `/who *jane*se*` would search one
and one field and match on the namefield `I'm Janet, now go stare at someone
elses whois!` but would NOT match username janet with address \*.se



{:#sec2-7-4}
###  2.7.4 Note on invisibility

Invisible people won't show up when searched for with /who, /who #chan and not
on /whois with wildcards, unless you can see them already by sharing a
channel.

The intent is that no one is to find you if they don't know your exact
nickname.

I believe that in the future the searchmethods described here might become
practically obsolete, as some servers already have the policy of putting
people automatically on +i, (which do save the clients a lot of trouble). You
can hide by changing nick, people can't mass-message everyone on your ISP and
your' not visible from outside a channel. Today roughly half the nicks on
Undernet and most on Efnet is set invisible.


Note: If a nick is on a secret channel ([3.5](#sec3-5))
they won't show up on a wildcard /whois, even if they arn't set invisible

{:#sec2-8}
##  2.8 Finding an IRCop

An IRC operator is a person with +o mode. ([2.5](#sec2-5))
The op goes around fixing channelops, kicking users and maintaining the net.

Don't expect help if you'r banned from a channel (Atleast that's Undernet
policy)

The standard way to find an operator is to type `/who 0 o` (zero o). This
lists all non-invisible opers on the net.

Before you message them, check their idle-time.
([2.6](#sec2-6)) Most of them idles for days.


If this dosn't work, the operators of your server might list themselves in the
/motd ([4.2.1](#sec4-2-1)), possibly with e-mail.

By now, you have found everyone who _wants_ to be found, proceed on your own
risk:


/stats O ([5.1.4](#sec5-1-4)) reveal the nicks of operators
on your server. (Ofcourse they could just change nicks after logging in)


/trace ([4.1.5](#sec4-1-5)) has a loophole that reveals
online ops.


Local channels are sometimes used by operators on your server.
([3.2](#sec3-2))


Join typical oper-hangouts and do the /who 0 o again. The +i dosn't apply when
you share a channel. (please observe channel rules)


Apropos operators

A common question we get in helpchannels is: How do I become an IRCop? At
Undernet, you'd have to be a friend or co-worker with a server administrator
or start your own server to get op. Starting your own Undernet server is out
of the question unless you work at a big ISP. This also applies to other big
networks.

Whatever the reason for your hunger for power is, be it fame, revenge,
groupies or tax deduction, you'd have a better chance at one of the really
small networks. Then again, who in their right mind would give op to a total
stranger who comes in and just ask for it? As a last resort you can always
start your own network! ([8.2](#sec8-2))



{:#sec2-9}
##  2.9 userhost / userip

Returns a nicks hostaddress or IP and if it's away or not.

Syntax: `/userhost nick nick ...` (max 5 nicks)

Example:

sending: `/userhost RAmona Sssala`

reply: `RAmona=-mummy@crypt.pyramid.eg Sssala=+snake@cage.zoo.com` where -/+ =
away / not away

sending: `/userip RAmona` gives the reply: `RAmona=-mummy@994.193.192.24`


Why UserIP:

Userip were implemented in ircu2.10.01 because more and more users have
"virtual hostnames", that allow the person to use any sort of hostname
withouth a common domain. E.g modem5.snowbiz.com one day and
modem5.snowwomen.org another day, making it harder to ban these people. A ban
by IP-adress would have been very effective in this case, and that is exactly
what has been implemented. The ban-code has been changed so that you can ban
an IP-adress even if the server has resolved his/her address as a hostname.
The IP-ban has also taken effect for SILENCE
([2.12](#sec2-12)) and K-lines
([5.1.1](#sec5-1-1))


Example:

123.321.254 is the IP of the DNS-name "m5.camping.com". Before 2.10.1, you
could ban the users' IP, but if it was resolved by irc- server to the DNS-
name, the person would slip through. Not so anymore.


But ofcourse you need to ban the ISP. Using a dialup-account, he gets slightly
different IPs every time he logs on.

So what's the IP of the ISP? /dns in mIRC tells me that m1.camping.com has IP
123.321.250 and it seems to end at m200.

I set the bans to 123.321.\* ,123.322.\* and 123.323.\* knowing I've banned the
ISP, hoping I havn't banned others. Banning an ISP to stop a person is a brute
approach anyway if it's a large ISP, and most people that are banned give up
withouth putting much effort in getting around the ban, so I havn't bothered
finding more elegant ways to do this, but I think you can use regular IP-masks
in this ban. (If you know a more accurate way to ban an ISP, i hope to hear
from you)


Isn't /dns in mIRC and /userip practically the same? Usually so, but not
necessarily. When a user connects, the irc server first gets the IP-address of
the user and uses it to resolve the DNS-address which it puts in the /whois
reply. When queried with a /userip request, it will reply with the original
IP-address. mIRC on the other hand, takes the DNS-address it finds in /whois
and tries to translate it back to an IP-address. By that time, the records
mapping IP-addresses to DNS-addresses could have changed, or your client and
the IRC server receives different replies to a DNS-lookup for some obscure
reason. In short, you risk getting the wrong IP-address, so use /userip for
added reliability.


Also see +x ([2.5.1](#sec2-5-1)) for the upcoming ability to
ban a user when logged in on the channelservice

{:#sec2-10}
##  2.10 Whowas

Syntax: `/whowas nick [count]`

If someone just left IRC or changed their nick, and you didn't get their
address, the server keeps a buffer with the nicks that disappeared the last
seconds. Count is how many nicks it should return. Every matching nick if not
supplied. No wildcards are allowed so the count were only usefull in special
cases. For how many nicks the server keep in whowas, see /stats z
([5.3.5](#sec5-3-5))

{:#sec2-11}
##  2.11 away

Syntax: `/away [insert cunning remark about doing laundry here]`

Sets an away-message that will be displayed in your /whois reply and shown to
people who try to contact you.

See chapter [7](#sec7) for the maximun lenght of your
away-message (It's 160 by default on Undernet)

See [6.5](#sec6-5) for the issue of netsplits and
[2.5.2](#sec2-5-2) and [2.9](#sec2-9) on
spotting the mode while missing the cunning remark.

{:#sec2-12}
##  2.12 silence

mIRC has a very customizeable command called /ignore that will filter out
everything coming from certain nicks or addresses. What it dosn't do though is
stopping the noise from coming through your connection. This means you could
be flooded off even with ignore on. Therefore, Undernet has implemented the
/silence command. When it is used, the network won't even send you the
unwanted data.


Syntax:

`/silence [+/-]nick!name@host.host.dom (nick or host alone allowed)`


Example:

`/silence +uglyguy!~jacktr@modem54.styx.net` silencing nickname uglyguy with
matching address.

`/silence +*!*@modem54.styx.net` Anyone from his address. (In case of clones)

`/silence +*!*styx.net` Anyone using his ISP. (For repeated attacks.)

when +/- are omitted, + is asumed. A setting is removed by "/silence
-setting". E.g: `/silence -*!*styx.net`.

`/silence `will display your silence settings. `/silence nick `will display
the known silence-settings of that nick. That is a feature, not a bug in fact.


You don't get an error-message if you message someone that has silenced you,
but if you suspect you've been silenced, type /silence nick and you may find
yourself listed.


When Alice is silenced by Bob, but Alice tries to message Bob nontheless, the
message reaches Bobs server, which then replies to Alices' server that Bob has
silenced Alice, and that there's no need to relay further messages from her.
Every server from Bobs to Alices including now knows about the silence, and
those on those servers who type /silence Bob will see his silencing of Alice.

This openness means that people on the same server as Bob sees ALL his
silence-settings.


On Undernet, you have a maximum of 15 lines of silence-settings. Doublecheck
with your logon in chapter [7](#sec7)

Overlapping silences are removed. Example: `/silence +*.dadaism.net` will
remove silencing of `*modem4.dadaism.net` since it is now reduntand. Beware
that `/silence -*.dadaism.net` would also remove the modem4 silencing.

Removals are propagated immediately to other servers.


Silence settings must be set every time you log on. This can be done
automatically with your client. For more information about flooding and how to
defend against it, see the undernet website or the helpbot in #class on
undernet.


See [2.9](#sec2-9) (userhost / userip) for how to silence
people with virtual hostnames.



{:#sec2-13}
##  2.13 ISON

ISON is the command used for the notify list in mIRC.

Syntax: ` /ISON nick1 nick2 nick2 ... `

The server replies with `ISON: nicksthatexist`

One string of nicks sent should be no longer than 512 bytes.


Example:

you send: `/ISON Susanne MadMex Martha29 ZyGoT` and users with the nicks
Susanne and Zygot is online.

reply: `ISON: Susanne Zygot`




{:#sec2-14}
##  2.14 WHO with advanced parameters

/who gives part of the same info as /whois.

ircu2.10.02 gave the WHO command a new look and in ircu2.10.05, even more
adjustments were made.

As an example, the extended WHO will let you count people away in your channel
and how many servers away they are, with a single command to the server.
Searching and filtering are also more customizable than before, but still
keeping backward compatibility.


Syntax:

`WHO <mask1> [<options> [:<mask2>]] `

Which gives:

`WHO <mask> <options> ` or `WHO <some garbage> <options> :<mask>`

The second syntax will allow a space, and is therefore good for matching the
infotext. Case is not significant anywhere.



**The mask:**
It defines the search criteria. I'll get back to what you'r searching _in_.

There are two ways to define it:



  * A comma separated list of elements.
The elements will be assumed a nick or a channel name.



  * With a single mask, possibly using * and ?.
This could be used to search any field


Note:

If you'r not familiar with masking, * means "any string, even of zero lenght"
and ? means "one character". the mask "ge\*" would match both "get" and
"geronimo!" while "l?ve" matches "love" and "live", but not "legislative".

"i??\*" matches "inventory" and "inn", but not "is".


In the case of IRC atleast, "0" works as a \*.


If you wish to match IP-numbers in the single mask, there's 3 ways to do it.

(This part is quoted from the WHO documentation in the ircu2.10.05 release
notes, which you can find at <http://www.coder-com.undernet.org>)



  * Make a usual mask using * and ?


  * An IP-mask on the form a.b.c.d/e.f.g.h as used in most firewalls and system configurations, where what is before the / are the bits we expect in the IP number and what is after the / is the "filter mask" telling which bits would be considered and which should be ignored.


  * An IP-mask on the form a.b.c.d/bitcount, where bitcount is an integer between 0 and 31 inclusive. The matching will be for the IPs whose first "bitcount" bits are equal to those in a.b.c.d


**Options:**

Syntax:

` [<flags>][%[<fields>[,<querytype>]]]`


**Flags:**
The flags define which parts of the available data you'd like to search in.

Each flag is one letter. First, the various userinformation:



n
:	Searching nicknames to match.

u
:	UserID. (As in nick!user@host)

h
:	Hostname. (Still as in nick!user@host)

i
:	Numeric IP.

e
:	Servername. (The canonic name of the IRC server a person is using) Use /links
(4.1.3) if you'r unsure about canonical names

r
:	Info text. (Formerly known as "realname" )


If you don't specify any of these flags, the default "nuhs" is used.
(Everything except the numeric IP and realname)


In addition, it's possible to search for for usermodes, (overview in
[2.5.1](#sec2-5-1)) but there's only support for one of them:

o
:	Operator (Yup! the same as in [2.8](#sec2-8))



**Fields:**
When the WHO-command has found a bunch of persons, then this tells it which
fields

of the userinformation should be returned to you.


c
:	Include the last channel the person joined, or first common, if the person
is +i.
(If no common channel exist among you, a +i user won't be shown.)

d
:	How many servers away the nick are. (hopcount, also see 4.1.5)

h
:	hostname

i
:	Numeric IP

n
:	nick

r
:	Info text

s
:	servername

u
:	userID (with eventual ~)


f
:	Include all the flags you passed on earlier

t
:	Include querytype in the reply (see below)


The fields are always returned in the same order.



**Querytype:**
Usefull for scripts. The querytype, an integer, is passed on with the WHO. If
you specify t in Fields, the lines in the reply will start with this number
(query or request type field of the output). Works like a note to itself. "Oh!
This is my who-query, do so and so with it."


Note to scripters: If no %fields are specified, the who reply are in numeric
352. If %fields are specified, numeric 354 are used instead, because a non-
standard 352 tended to confuse clients.


A WHO-query could end up matching everyone and flood you off with the reply or
exhaust the server. To avoid this, the maximum number of lines in the reply is
2048/(n+4) where n is the number of Fields you've specified. A default query
gives max 186 lines.


**The reply:**
Beside the nick in the reply we will gett various letters indicating:

H / G
:	Here or Gone, indicating if the nick is set /away or not

*
:	The nick is an IRC-operator

@
:	The nick is a channel-operator on the last channel it joined and still is on

+
:	The nick is voiced on the last channel it joined and still is on

!
:	The nick is zombie on a channel

d
:	The nick is set deaf


**Examples:**

We send: `/who 0 o%fn` to get a list of operators. The reply is this:

```
Napoleon H*
McMini H*
Sodapunk H*@
Tordivelen G*@
Aquagirl H*
Q-Beck G*
End of /WHO list.
```


Each line presents one nick and the corresponding flags. Tordivelen is both
gone and a channel-operator in the last channel he joined.


`/who #Luggage_Claim %dct,9` could return this:

```
9 #Luggage_Claim 3
9 #Luggage_Claim 3
9 #Luggage_Claim 1
9 #Luggage_Claim 3
9 #Luggage_Claim 3
9 #Luggage_Claim 5
9 #Luggage_Claim 3
```


"9" is the query type field, The rightmost numbers are the hopcount for each
nick. Most of the folks seem to be 3 hops away.



**Note:**

If you'r using a mIRC copy older than 5.3, you'll have to send channel-whos as
"/raw who #e.t.c..."

On EFnet and possibly other nets but not Undernet "/who \*" lists everyone on
the last channel you joined and still is on (the first channel in your whois-
reply) If you'r on no channels or on Undernet, "/who \*" will flood you.


If you'r say, swedish and joins a channel, you may want to type "/who #channel
\*.se" to list every swede in the channel.

This a mIRC feature but works fine on non-ircu nets. However, with newer ircu
you must a script to do this filtering manually as the extra parameter messes
up the /who at the server.


Before ircu2.10.11, the extended /who did not correctly display the + if a
user were both Op and Voiced in the same channel.





{:#sec2-15}
##  2.15 /quit

Waves goodbye to the net. See [3.4](#sec3-4) for the
quitmessage.



{:#sec3}
#  3 Channels

{:#sec3-1}
##  3.1 join

Syntax: `/join #channel1, #channel2, ...` or `/join channel key`.

Separated with a comma, you can join several channels at once, saving you some
typing. (But if you want to save typing, perhaps IRC isn't the right place?
:-) On Undernet, you'r limited to beeing on 10 channels at the same time. (See
[7](#sec7) for the limit on your net)

See [6.9](#sec6-9) for allowed characters in a channelname
and [3.5.1](#sec3-5-1) for keys. The maximum lenght of a
channel is 89 characters plus the #.

{:#sec3-2}
##  3.2 Local channels

A channel with the "&" prefix instead of "#" (e.g &chat) is a channel that is
local to your server. People from other IRC-servers can't join, can't find it
in the channel-listing and can't spot you'r in it, unless they retrieve a
remote whois. ([2.6](#sec2-6))

This feature might have been usefull when a server served a geographically
limited userbase exclusively, for instance a specific university, but today
you can connect to most servers in a net regardless of where you are.
Operators on a server might stick around in a &channel, since LOCOPS and OPERS
have equal powers over it, (see [4.2.7](#sec4-2-7)) and
operators can toy around with the channel directly while the ability to toy
with global channels would have messed up the security. There, they have to go
through Uworld. (A service on Undernet) Don't be surprised if this feature
disappears one bright day in the middle of the night. In ircu2.10.11, you can
no longer send an invite for a local channel to someone on a remote server.
(That makes sense :-)

Prior to ircu2.10.11, there were also a bug making the server propagate the
topic of a local channel to other servers. If a local channel with the same
name existed on a server directly linked to the first one, there may have been
"leaks", but this is unconfirmed

{:#sec3-3}
##  3.3 The modeless channel. Equality by simplicity

As of ircu2.10.02 you can start a "modeless channel" This is a channel with
the prefix "+" instead of #. (e.g +chat)

Such a channel can't have any channel operators and its mode is always set to
+nt.

From this, "no topic", "no /invite", "no external messages" and "no bans"
logically follows.


The purpose for this invention is "to create an enviroment where all users are
equal and not tempted to fight about ops". Flooding should be dealt with by
either leaving the channel or using /ignore or /silence.
([2.12](#sec2-12)) Making it topic-free and non-invite is to
avoid flooding by topic-changing or mass-invite, or any gibbering over what
todays topic should be.



{:#sec3-4}
##  3.4 /part and /quit with comments

You can put a comment along when you quit irc which is visible to fellow
channelmembers, with the command /quit, and as of ircu2.10.02 you can send a
comment along when you /part a channel too. Perfect for getting the last word!
:-)

Syntax:

`/quit comment `

`/part #channel comment or /part #channel1,#channel2, ... `


The maximun lenght of a quit-message is governed by TOPICLEN in chapter
[7](#sec7), and is 160 characters by the time on
Undernet.

A part message could be a maximum of 65 letters and truncated with a '...' at
the end if it's longer.

When a message to the channel wouldn't have been allowed to be sent, as in
cases of ban or moderated channel,

these message won't be sent either. See [3.5](#sec3-5)
(moderated) and [3.7](#sec3-7) (ban) for more about this.


A client-independet way to leave all channels at once is "/join 0".


Quitting with a linebreak "//quit char$(13)" drops the parenthesis.
u2.10.11.rc.1 does not display them anyway unless a reason has been specified.





{:#sec3-5}
##  3.5 Channelmodes

{:#sec3-5-1}
###  3.5.1 All the modes for a channel

First, a quick summary of the channelmodes:


syntax: `/mode <mode> [parameter]`

`b <mask>[<reason>]`
:	To ban someone and display the reason.

`o <nick>`
:	To op someone

`v <nick>`
:	Voice someone (Speaks through ban and moderations and get a nice + by their
nick)

`I`
:	Channel is invite-only

`l <limit>`
:	Channel is limited to <limit> participants at the same time

`n`
:	No messages/notices is allowed to be sent to the channel from outside.

`m`
:	Channel is moderated. Only ops and voiced people can talk.

`t`
:	Noone but the ops can change the channeltopic

`p`
:	Channel is private

`s`
:	Channel is secret

`k <key>`
:	Set a password-key (any text) necessary to get into the channel.

`r`
:	ACCOUNT-limited channel



You are probably more than familiar with these already, so I'll just summarize
my comments on them:



b:
:	See [3.7](#sec3-7) for novel use. The maximum number of
	simultaneous bans in a channel on Undernet is 30. See MAXBANS in chapter
	[7](#sec7) for the limit at your net. You can easily
	clear a banlist by typing "/mode #channel +b-b *!*@* *!*@* ?"


	Before ircu2.10.11, a nick-ban (e.g slobodan!*@*) wouldn't take effect if the
	user changed into the nick inside the channel. Also, a ban did not stop
	external messages from a banned person from entering a -n channel.

n:
:	Most channels should set +n to have total control on who's talking in the
channel, ircu prior to 2.10.11 let outsiders slip through +m and +b

p and s:
:	See [3.5.3](#sec3-5-3) for the difference between these two



m:
:	"only ops and voiced people can talk". Before ircu2.10.11, +m didn't stop
	messages from outside, now +m equals +mn


	As with +b, +m censors your optional /part and /quit comments in the channel.
	(See [3.7](#sec3-7)) (ircu specific) and beeing in a +m
	channel without a voice, "censors" your quitmessage from every other channel
	your on too.

	If that sounds confusing remember you'r quitting the net not just the channel,
	so sending two quitmessages about you to a person that shared two channels
	with you (say one +m and one not) would be like saying: "He left the net, and
	then he left the net _again_ without beeing there." It wouldn't make sense.



v and o:
:	You can have voice and op at the same time, but then mIRC and extended /who
prior to ircu2.10.11 will only display the op @, not the voice +.



k:
:	If you are not a channeloperator, the key will from ircu2.10.10.pl15 be
displayed as * when you try to retrieve it from inside the channel.

r
:	+r on a user, though you can't see that it's set, signifies that the user has
	logged in with his/her account name and password on whatever service the
	network supports. For instance Undernet's channelservice "X".

	+r on a _channel_ means it's restricted to users having usermode +r, that is,
	beeing registered at the channelservice.

	The +r usermode together with a hidden character string persist as long as
	you'r connected to the IRC server, so that the channel service can recognize
	you even if your server splits off and rejoins the net. No need to login to X
	all over again.


The account name were for a short while visible in /whois, but this were
discontinued. It is still easy to receive by "/msg X verify nick" though. A +r
channelmode can be overridden with an invite, in fact +r is equivalent to +i
if there's no +r enabled servicebot around. (X were not +r enabled by August
2002, but it's coming up.)



{:#sec3-5-2}
###  3.5.2 /Topic and retrieving channelmodes

These commands retrieve the same info as you get when you doubleclick in the
channelwindow.


/mode #channel Retrieves the modes (Also when it was created when using ircu)

/mode #channel b the bans (Prohibited when you'r outside the channel)

/topic #channel the topic (Prohibited when you'r outside a +s channel)


What information is available varies from net to net. The channel-limit is
shown from ircu2.10.01 and above and topic-retrieval

outside channel is also a fairly recent addition. Now it also displays when
the topic were set and by whom

The key is ofcourse not available from outside. If you'r inside the channel,
you probably already know the key, but it won't be displayed unless you have
op. If not, someone could fetch it by sneaking into a channel during a
netsplit. But since the synchronization during a netjoin will remove a
channelrider's op, he won't see the key.


The maximum length of a topic on Undernet is 160 characters, the maximum for
your net can be found by the variable TOPICLEN in chapter
[7](#sec7). For the issue of topics and netsplits, see
[6.5](#sec6-5)


**Tip:** If you just want to know if a channel exists, please do a /mode #chan,
instead of quick join/part visits.


**Note:** As of ircu2.10.11, topics beeing set without beeing changed is no longer
displayed to the client. It should make the topicsetting of X on Undernet less
annoying. It is still done behind the scenes, as topics are not automatically
refreshed when the net reconnects after a netsplit.



{:#sec3-5-3}
###  3.5.3 Difference between +p and +s

A channel can have +p (private) or +s (secret) mode set. The difference isn't
obvious:


"Secret" means Top Secret. Its existance is secret (not present in any
listing), and you beeing in it is secret. (It dosn't show up in a whois on you
and you can't take a /names #chan on it) As an extra secrery, a wildcard whois
won't return you. (see [2.7.4](#sec2-7-4))


"Private" means privacy for you. The channel shows up in the channellisting,
but people can't tell you'r in it, unless they'r in the channel themselves.


p and s are mutually exclusive. Trying to send mode +ps will thus result in
+s, +sp will result in +p.

Prior to ircu2.10.10, +s channels _could_ show up in /list on rare occasions.
The bug has been fixed from that version.




{:#sec3-6}
##  3.6 /invite will find a way

syntax: `/invite nick #channel`

Invites a person to your channel. It is nessecary to invite the person if the
channel is set "invite only" ([3.5](#sec3-5)).

You need to be an op in the chan to do it.


Applying to ircu2.10 and above:

When you invite a person into a channel, you'r overruling the channel limit
and any ban. Give him a voice (+v) and he can speak through the ban too.


Applying to ircu2.10.10 and above:

Typing /invite with no parameters lists the channels you are currently invited
to


Up until ircu2.10.11, you could invite people into non-existing #channels. The
bug has been fixed

{:#sec3-7}
##  3.7 "Shutting their mouth." Powerfull chanops-feature

(Partly ircu specific.)

This feature is IMHO an important one, but not widely known. The feature is as
follows:


If you ban a person in your channel, but dosn't kick him, two things take
place:


1: the nick looses his/her freedom of speech in your channel. The nick can't
speak in the channelwindow, and neither do a channel-notice nor a channel-
ping. Even the optional /part and /quit comments are censored.


2: He/she is unable to change nick as long as beeing in your channel. This
hinder nickchange-flooding. (also see [2.1](#sec2-1))


This is usefull for a number of things, and could improve protection-routines
of scripts and ops. You can have "auto-ban on flood" turned on in your script
without beeing afraid of kicking a friend that's playing some ascii-art to the
chan. Another idea is to implement it as a "last warning" before getting
kicked, or a nice way of stopping peoples annoying /timer messages when they'r
away from the keyboard, but still letting them stay.


And if you have some annoying person in your channel, you have the ability to
shut his/her mouth, letting people get on with their chatting, or talking back
if they feel like it, and the person, his right of babbel taken away and now
ignored by everyone, leaves the channel himself. :-) In some way, it's better
than to give them the attention of a kick.


NB: Any ban is overridden by a +v (see [3.6](#sec3-6)) and
the /quit comment is censored for all channels
([3.5.1](#sec3-5-1))

A ban will not stop a person from sending external messages to the channel,
use a +n mode for that.

Atleast up to ircu2.10.10.pl14, if you set a ban on a nick (bannednick\*!\*@\*)
then if somebody entered and changed their nick into bannednick, they would
slip past the ban. If bannednick were an op however, the ban would kick in
immediately if he were deopped. I suppose this is a bug.



{:#sec3-8}
##  3.8 kick

Removes a person from your channel. (need to be op in chan to do it) You can
put a reason along if you like

Syntax: `/kick #channel person [reason]` The maximun lenght of the reason is
160 characters on Undernet. See KICKLEN in chapter
[7](#sec7) for the lenght at your net




{:#sec3-9}
##  3.9 names. Listing the inhabitants

Displays a list of nicks in a given channel.

Syntax: `/names #channel1,#channel2, ...`


Examples:

`/names #soap.opera,#talkshow`.

Displays everyone in #soap.opera and #talkshow, and all _visible_ nicks
([2.7.4](#sec2-7-4)) if you'r not in the channels.


In ircu, it is processed as two /names queries, and will show a person twice
if in both channels.

`/who #soap.opera,#talkshow` ([2.14](#sec2-14)) however,
lists the person only once.

The list of names will be sorted according to when they joined the channel,
with the newest member at the beginning.


Notes:

Wildcards dosn't work. Sending the query to a remote server, (/names #chan
server) is prohibited on Undernet, but is mentioned in RFC1459, so others
might allow it. (Practical use related to "local channels"
([3.2](#sec3-2)) )

"/names 0" floods you off trying to list every channel on the net. prior to
ircu2.10.11, typing /names were enough to do this.




{:#sec3-10}
##  3.10 Cnotice/Cprivmsg. A "too many targets" exception

New in ircu2.10.02, +v ability added in 2.10.05

Syntax:

`/CNOTICE <nick> <channel> <message text>`

`/CPRIVMSG <nick> <channel> <message text>`


What and Why:

Undernet implemented an anti-flood measure in ircu2.10, so that you can't
message more than so and so many people in a short interval. (20 per 2 minutes
on Undernet but 10 immediately when you logon). This caused problems for those
that NEED to do this, for instance bots in gaming channels. Because of this,
CNOTICE/CPRIVMSG were implemented. If you'r a channel operator or has voice
(+v) you can mass-message people in your channel using CNOTICE and CPRIVMSG
without getting the "too many targets" error.

The restrictions on number of targets should not be confused with the
restriction on how much data that is allowed to pass to and from the client in
a given time before it starts lagging or the client-server connection is
dropped altogether. To avoid this, your bot should somehow pace the
information it sends out, not pushing a hundred lines of text at once.


Note: Regardless of your status in a channel you can always /msg +k services
without worrying about running out of targets
([2.5.1](#sec2-5-1))

Also see /wallchops ([3.11](#sec3-11)) and the logon
procedure ([7](#sec7))



{:#sec3-11}
##  3.11 Wallchops

From version 2.10 of ircu, this early attempt at an ad-hoc solution to a
special case of the problem mentioned in [3.10](#sec3-10)
were added.

This sends a mass message to every channeloperator in a channel. It is
supposed to replace any "message the ops" script you might have.


Syntax:

`/raw wallchops #chan ` or `/notice @#chan ` Sending a NOTICE in both cases.


These are two ways to send the same command. Restrictions apply as for any
/notice. But if you'r using mIRC and type /wallchops directly, you are in fact
using mIRCs _own_ wallchops. mIRC will demand that you'r an op in the channel
for you to use it.

Thanks to Daniel Corkill for pointing out this to me.



{:#sec4}
#  4 The net

{:#sec4-1}
##  4.1 Network structure and overview

{:#sec4-1-1}
###  4.1.1 lusers

/lusers lists basic global and local info.

Example:

```
There are 9450 users and 8163 invisible on 44 servers
37 operator(s) online
2 unknown connection(s)
10025 channels formed
I have 692 clients and 2 servers
```


The first line should be read as 9450 visible and 8163 invisible, making a
total of 17613 users online.

The number of operators includes local ops that won't show up in /who 0 o and
invisible ops.

You may filter /lusers by servername:


Examples:

`/lusers sandiego.ca.us.undernet.org` (when beeing on sandiego) could return:

`There are 301 users and 391 invisible on 2 servers`

`[...] I have 692 clients and 2 servers`

`/lusers *.no.eu.Undernet.org` when beeing on sandiego could return:

`There are 355 users and 237 invisible on 1 servers`

`[...] I have 0 clients and 0 servers`

Meaning 355+237 users on the 1 \*.no.eu.undernet.org server currently online.
Ofcourse none of those users is then on the sandiego server, hence "I have 0
clients".

`/lusers *.eu.undernet.org` or just `*.eu.*` shows the total number of
european users.





{:#sec4-1-2}
###  4.1.2 map

An ircu-only command that gives a nice view of how the servers is connected to
each other. Blocked on Undernet

Syntax: /map


Example:

Part of the net as seen from Oslo-R:

```
P:Oslo-R.NO.EU.Undernet.org (0s) [2050 clients]
|-Y:Oslo1.NO.EU.Undernet.org (5s) [875 clients]
`-F:Gothenburg.Se.Eu.Undernet.org (0s) [4 clients]
 |-Q:Amsterdam-R.NL.EU.Undernet.org (57962s) [1 clients]
 |-7:Graz.AT.EU.Undernet.org (1s) [2535 clients]
 |-D:Caen.FR.EU.Undernet.org (3s) [921 clients]
 `-O:Flanders.BE.EU.Undernet.org (0s) [1710 clients]
  `-AN:Brussels.Be.Eu.Undernet.org (4s) [40 clients]
```


Same part of the net as seen from Caen:

```
D:Caen.Fr.Eu.UnderNet.org (0s) [924 clients]
`-F:Gothenburg.Se.Eu.Undernet.org (0s) [4 clients]
 |-Q:Amsterdam-R.NL.EU.Undernet.org (57959s) [1 clients]
 |-7:Graz.AT.EU.Undernet.org (12s) [2764 clients]
 |-O:Flanders.BE.EU.Undernet.org (0s) [1704 clients]
 | `-AN:Brussels.Be.Eu.Undernet.org (1s) [39 clients]
 `-P:Oslo-R.NO.EU.Undernet.org (0s) [2051 clients]
 `-Y:Oslo1.NO.EU.Undernet.org (0s) [873 clients]
```


Oslo1 is connected to Oslo-R, lulea is connected to Oslo-R and Amsterdam.
e.t.c

It is possible for a server to be configured so that it won't show up on /map.

The letters before the servername correspond to numeric nicks in the server-
server protocol, and dosn't tell us anything worthwile. That however does the
ping-time and the number of clients following the servername!


Notice the tree structure. There is only one path between two given servers
and no loops. Those with more than one connection to other servers are called
hubs, the others leafs. The tree is a fundamental property of irc networks as
we know them. It makes them less robust then the internet it's on top of but
is advantageous for propagating messages. other structures may be more robust
and but we risk loosing the common "world" in which all users and channels
reside, and then we may as well sit around in our own private microsoft
network-chatrooms. ([http://www.msn.com/](http://www.msn.com/)) For a
discussion of the disadvantages of the tree or star topology, see
[http://www.newnet.net/nnmeshed.html](http://www.newnet.net/nnmeshed.html).



{:#sec4-1-3}
###  4.1.3 links

LINKS displays the same information as map, but in another format, and with
extra sauce.. uhm extra data! LINKS is a common IRC-command. The server mask
option can sort out hosts like \*.eu.undernet.org (all european hosts) Blocked
on Undernet

Syntax:

`/LINKS [[<remote server>] <server mask>]`


Example:

`/LINKS *.nl.eu.undernet.org` displays every server in Netherland.


An output of /LINKS in mIRC might look like this:

```
SanDiego.CA.US.Undernet.org (0) P10 CONNECTnet UUnet/MCI server
 Dallas-R.Tx.US.Undernet.org (1) P10 Dallas Undernet Hub
 Dallas.Tx.US.Undernet.org (2) P10 [127.0.0.1] Dallas Metroplex IRC Client Server
 Los-Angeles-R.CA.US.Undernet.Org (2) P10 [198.245.27.2] Internet Chat Systems IRC Server
 los-angeles.ca.us.undernet.org (3) P10 [198.245.24.80] Decade Communications IRC Server
 Uworld.undernet.org (3) P9 [198.245.24.240] Cordinator
 auckland.nz.undernet.org (3) P10 [202.14.100.6] Internet Company of New Zealand
 protocol.undernet.org (3) P10 [198.245.24.190] [protocol.undernet.org] Software 
 Chicago-R.IL.US.Undernet.org (2) P10 [206.54.224.160] Nap Net Chicago IRC Hub
 ann-arbor.mi.us.undernet.org (3) P10 [irc.cic.net] "Use the source, luke"
```

The number in parenthesis is the hopcount, P10 is the current server-server
protocol and Sandiego was the server that replied to LINKS. The tree-structure
is depicted by preceding spaces, probably making links output easier to handle
for a script than maps' output. ([4.1.2](#sec4-1-2))



{:#sec4-1-4}
###  4.1.4 list, with extensions

Syntax: /LIST gives you a list of the channels on the net and let your client
to the filtering

Ircu has implemented an extended list-command that let you filter in ways the
built-in lister in mIRC and other clients won't let you. Help for this command
is brought up with "/raw list help" and I quote:


`Usage: /QUOTE LIST parameters`

Where parameters is a space or comma seperated list of one or more of:

\<max_users 
:	Show all channels with less than max_users.

\>min_users
:	Show all channels with more than min_users.

C\<max_minutes
:	Channels that exist less than max_minutes.

C>min_minutes
:	Channels that exist more than min_minutes.

T\<max_minutes
:	Channels with a topic last set less than max_minutes ago.

T>min_minutes
:	Channels with a topic last set more than min_minutes ago.

Example: `LIST <3,>1,C<10,T>0`  2 users, younger than 10 min., topic set.


Example:

`/raw list >20,C>120` will bring up channels that have existed more than 2
hours and has more than 20 users. When it's finished, you would in mIRC
rightclick in "channels", apply match and hide parameters, and press "apply".
We see that ircu does not support filtering on channelnames or topics, that is
a purely client-side feature.


u2.10.11.rc.1 and above supports "/list stop". This aborts a listing in
progress. "/raw /list" while listing will have the same effect.



{:#sec4-1-5}
###  4.1.5 trace


**With parameter:**
`/TRACE nick` is used to look at the path between you and another nick.


Example: Beeing on the Oslo-server, typing "`/trace Concord`":
```
Link u2.10.00.bans3 Concord lulea-r.se.eu.undernet.org
Link u2.10.00.bans3 Concord Amsterdam.NL.EU.undernet.org
Link u2.10.00 Concord Regensburg.DE.EU.undernet.org
Link u2.10.00 Concord Baltimore-R.MD.US.Undernet.Org
Link u2.10.00 Concord Chicago-R.IL.US.Undernet.org
Link u2.10.00 Concord ann-arbor.mi.us.undernet.org
User 5 Concord[quail-2.slip.uinb.edu] 18
```


What it shows is that a message from me to Concord has to go through 6 server-
server connections, before getting to his server. (giving hopcount=6) The last
line tells he's in class 5 on his server, and beeing idle 18 seconds.
(u2.10.00 is the servers' ircu-version)

Compare with the "`/who Concord`" reply: "`Concord H
conc@quail-3.slip.uinb.edu :6 Cristopher Watson" :6` means he have a hopcount
of 6, relative to you.


Note that each line is sent from its respective server and this is a great way
to hunt down _where_ the lag in a connection between you and your friend is.
Say if the Regensburg line is shown, and it takes a long time before the
Baltimore line is printed, it means the connection between Regensburg and
Baltimore is lagged. Then you consult /map
([4.1.2](#sec4-1-2)) to find a server away from the
Regensburg-Baltimore link. If this dosn't turn up the lag, it could be sitting
between him and his server, in case the difference between a "/whois nick
nick" ([2.6](#sec2-6)) and a ping would give you his lag.



**Without parameter:**

Typing /trace with no parameter will give you something on the form:

`Serv <class> <nS> <nC> <name> <ConnBy> <last> <age>`

Possibly displayed on more than one line.


Where:

class
:	Class the server is in

nS
:	Number of servers reached via this link

nC
:	Number of clients reached via this link

name
:	Name of the server linked

ConnBy
:	Who established this link

last
:	Seconds since we got something from this link

age
:	Seconds this link has been alive


Example:

Beeing on sandiego, the start of the /trace reply look like this:

`Serv 10 41S 20227C Dallas-R.Tx.US.Undernet.org[208.145.192.1]
*!*@SanDiego.CA.US.Undernet.org 1 250589`


The connection is in connection class 10 (See Y-lines
[5.1.5](#sec5-1-5)) 41 servers are reachable via this link,
resulting in 20227 reachable clients.

The link is to Dallas and was established by Sandiego itself. It's 1 second
since we heard from the server and the link has been active for 250589
seconds. (About 3 days)


The rest of the output will be likewise lines for other server-server
connections (if any) possibly followed by

lines identifying operators. (`Oper 1001 TNTgal[some.address.here] 6,` would
mean operator TNTgal in class 1001 idle 6 secs)

Buggy as it may be, people in the action of logging in on the server shows up
too.

The latter part of the /trace output may seem awkward, but it helps to know
that an operator typing /trace would list all people on his server, we're just
watching the censored edition.





{:#sec4-2}
##  4.2 Specific server

{:#sec4-2-1}
###  4.2.1 motd

Brings up your servers' "Message Of The Day". (The text you get each time you
log in) As of ircu2.10.05, the server _could_ be configured not to send the
MOTD by startup, but who wouldn't want to?

"/motd fullservername" brings you the MOTD of a remote server. On Undernet,
there is supposed to be a small MOTD

on every server that is sent when it receives a _remote_ MOTD-query. This is
done to preserve bandwidth.

It's easy to show different MOTD to different people according to their
address. For instance one in the native language. In ircu2.10 you may also do
this according to their connection class ([5.1.5](#sec5-1-5))



{:#sec4-2-2}
###  4.2.2 time

Shows the time, according to the servers' clock, and hours away from GMT

Syntax: `/time [servername if remote]`

Example: `Thursday July 27 2000 -- 17:57 -06:00`

This server is located 6 hours behind GMT. If you debug, you'll find that the
server also sends a line with a number in the unixtime format. as mentioned in
stats-g ([5.1.2](#sec5-1-2)) This isn't displayed in mIRC. If
your machines' timezone setting is correct, your script could use that line to
calibrate your systemclock.

{:#sec4-2-3}
###  4.2.3 admin

Returns administrative info.

Syntax:

`/admin <servername> `or just `/admin` for your own irc-server.

It could be used with wildcards, but returns only first matching server.


Example:
```
Administrative info about London.UK.eu.Undernet.org
Aladdin Internet's IRC server
Undernet IRC Server
sam@salabim.co.uk
```



{:#sec4-2-4}
###  4.2.4 help

Syntax: `/raw help`

This sends "HELP" to the server, giving a list of commands it will understand.

See [4.1.4](#sec4-1-4) for `/raw list help`



{:#sec4-2-5}
###  4.2.5 info

Version and copyright info, along with credits to those who have contributed
to the coding of the IRC-software.

`/INFO server` is disallowed but it's the same on all servers anyway.




{:#sec4-2-6}
###  4.2.6 version

Returns the version of the serversoftware running. Use `/version servername`
for remote queries.

It can include wildcards, but returns only first matching. Makes for a shorter
command. E.g `/version london*`.


Example:

`u2.10.10.09. SanDiego.CA.US.Undernet.org B9eEFfIKlMOopStUW`

This one is running ircu version 2.10.10.09 The letters at the end is its
server-options. ([4.2.7](#sec4-2-7))




{:#sec4-2-7}
###  4.2.7 Decoding serveroptions in "version"

Serveroptions are those letters at the end of a version-reply. They indicate
various settings. Few of them affects us, but it's nice to know what they
mean, isn't it? :-)


**Terms used**
An IRC-operator can be set to two levels, with the modes FLAG_OPER or
FLAG_LOCOP set. You can spot an OPER by the uppercase O in the /stats o
([5.1.4](#sec5-1-4)) reply, and a LOCOP by the lowercase. A
LOCOP dosn't get his mode propagated to other servers and so is not seen by
the rest of the net as an operator and therefore cannot act on clients
connected to other servers, e.g killing.

Local clients is both users and the connection to a nearby server in the net.

I will use the terms OPER and LOCOP so as not to confuse with "local operator"
which could mean any operator stationed on your irc-server. The term "remote
operator" in this guide means an OPER on a server other than yours.


**Valid Serveroptions in ircu2.10.11**

The meaning of the letters:
A
:	Assertion checks enabled

B or b
:	The size of the bufferpool.

C
:	CMDLINE_CONFIG is defined

D
:	DEBUGMODE is defined

e
:	LOCOPS can use /REHASH

E
:	Opers can use /REHASH

f
:	Operators can set modes on local channels

F
:	Operators bypass the no. of channels limit

H
:	HUB is defined

i
:	Show operators invisible users local to the server

I
:	Show OPERS all invisible users.

k
:	Opers can use /KILL on local clients.

K
:	Opers can use /KILL on any client

l
:	Operators can walk through modes on local channels

M
:	IDLE_FROM_MSG is defined

O
:	server has defined USEONE

p
:	Oper passwords are crypted

P
:	Link paswords are crypted

Q
:	/stats M works

q
:	Server does memory allocation/dealloation checks

R
:	RELIABLE_CLOCK is defined

s
:	LOCOPS can use /RESTART

S
:	Opers can use /RESTART

t
:	OPER_REMOTE is defined

U
:	Server uses poll()

v
:	VIRTUAL_HOST is defined

W
:	BADCHAN is enabled

x
:	local BADCHAN is enabled

Y
:	Server uses syslog()






When followed by [OUTDATED], it means ircu has thrown the setting overboard.
It is kept here as a reference for other networks.


Assertion checks enabled **A**


Bufferpool **b/B**

If BUFFERPOOL is less than a million bytes, you get **b**. If it's more, **B**
is used.

After that, it divides the number so that only the two first digits are shown.


For nets with older ircu, here's how it was done prior to ircu2.10.7:

---------[OUTDATED]-------------------------

MAXSENDQLENGTH **M**[0-9>][0-9]

Specifying 0.1Mb up to 9.9Mb of MAXSENDQLENGTH, shown as ">" when larger than
9.9Mb Default value of the "max senq. lenght" in Y: lines
([5.1.5](#sec5-1-5)) and used for deciding RAM-allocation.


INT_BUFFERPOOL **B**[0-9>]

The digit represents BUFFERPOOL/MAXSENDQLENGTH and represented by ">" when
larger than 9.

BUFFERPOOL = Max RAM-size of all the sendqueues, all in all.


MAXSENDQLENGHT defines the max-size of each sendqueue, and INT_BUFFERPOOL a
number to multiply, giving BUFFERPOOL which is how much ram is reserved for
ALL the queues.

In our example, the version-reply says "M10B8". Which gives MAXSENDQLENGTH a
value of 1.0Mb and INT_BUFFERPOOL 8. INT_BUFFERPOOL * MAXSENDQLENGHT =
BUFFERPOOL

8 * 1.0Mb = 8Mb


It is only a multiplier for the RAM allocation, it dosn't tell us that there's
exactly 8 queues, but it tells the max of one single queue.

See "/stats l" ([5.3.2](#sec5-3-2)) for a queue


For the sourcecode sniffers: INT_BUFFERPOOL is gone, BUFFERPOOL is independent
and MAXSENDQLENGTH is renamed to DEFAULTMAXSENDQLENGTH in present ircu.



Chrootdir **c **[OUTDATED]

Server using Chroot(). Added security if running under root. All files
accessed must be in directory defined as DPATH.

Standard: Not set.


cmdline_config **C**

allow config-file to be specified on command line. (when running the server)

Standard: Undefined


Do_id **d** [OUTDATED]

Maybe a "server using identd" setting. Not used in ircu anymore, but lingers
on in the /version code.



Debugmode **D**

when having problems, the software is recompiled with this one defined. You'r
unlikely to get on a server in debugmode.

Standard: Not set.


Oper_rehash **E **(y)

Locop_rehash **e **(y)

If locop_rehash are set, locops are allowed to execute the REHASH command. If
only Oper_rehash are set, only Opers are allowed to do it. (This command can
never be done remotely). E and e could be set both at the same time)


OPER_MODE_LCHAN **f** (y)

Allow operators to set modes on local channels
([3.2](#sec3-2))


OPER_NO_CHAN_LIMIT **F **(y)

Allow operators to bypass the maximum no. of channels allowed for a client.



HUB **H**

Set if server is a hub in the network tree


Show local invisible **i **(y)

Show all invisible **I **(y)


If "i" then operators can see invisible users local to the server. If "I" then
OPERs can see invisible users on all servers.



OPER_KILL **K (y)**

Allow operators to KILL (disconnect) users.


LOCAL_KILL_ONLY **k**

"k" restricts OPERS to KILL users logged in on their own server.


Example:

With "k" set on sandiego.undernet.org, an OPER on that server is disallowed to
kill a nick logged in on chicago.undernet.org. He can only kill users that's
using sandiego. On the other hand, the chicago server might have "K" set,
allowing their OPERS to kill users anywhere on the net, including sandiego.

Some networks (not Undernet) demand "k" to be set for new servers. If you find
the unlikely configuration of no K-letter, it means this servers' operators
can't KILL anyone, not even on their own server.


Since a LOCOP isn't recognized as operator by the other servers, he/she could
never do a remote KILL anyway.



OPER_WALK_THROUGH_LMODES **l** (n)


    let operators walk through modes on local channels


Note: in previous versions, l meant "server checks for clones", with a number
following, indicating how many connections from the same IP were allowed. see
chapter [7](#sec7) and the I-lines
([5.1.3](#sec5-1-3))



Least_idle **L** [OUTDATED] (but not removed from /version code)

Looks for the least idle person logged in on the server. Used for SUMMON, that
can contact people on the same machine as the server. Syntax is 
`/SUMMON <user> [<server>]` but i assume it's operator-only and long gone from any net.


m4_preproc **m **[OUTDATED]

The server reads its configuration file via another program, instead of
reading it directly.

Standard: Not set.


Idle_from_msg **M**

Idle-time is nullified only from privmsg. (/msg and channelchatting) If not
set, all but the serverping (PING? PONG!) will reset your idle-time. /notice
isn't a privmsg.

Standard: Set.

Also see "Getting seconds idle" ([2.6](#sec2-6))



    NO_OPER_DEOP_LCHAN o (n)
    Prevent operators from beeing kicked or deoped on local channels.


USEONE **O** [OUTDATED]

The syntax in the I-lines ([5.1.3](#sec5-1-3)) were changed
in ircu2.10.05, removing the use of the token "ONE".

With USEONE defined, the server admin can keep using "ONE" in the
configuration, though it's not recommended.


Npath **N** [OUTDATED]

NPATH is a variable containing the path to a backup file for NOTE, a utility
that's not around anymore.


Crypt_oper_password **p**


    Oper passwords are encrypted

Standard: set


crypt_link_password **P**

Link passwords are encrypted (C-lines)

Standard: not set


Passwords are encrypted with makpasswd in UNIX (as used in the unix "passwd."
file) They are stored in the O and C lines, but won't be visible when you say,
do a "/stats O"


DEBUGMALLOC **q**


    Server does Memory allocation/deallocation checks. This is a kind of "memory book-keeping".


MEMLEAKSTATS **Q**

when both DEBUGMALLOC and MEMLEAKSTATS is set, we'll get "**Q**" and /stats M
([5.3.7](#sec5-3-7)) will be working.


RELIABLE_CLOCK **R**

The admin sees the machine's clock as reliable and ircu is asuming he's right.


Oper_restart **S **(y)

Locop_Restart **s**

Allow local OPERS and/or LOCOPS to restart the server. Setting S restricts the
command to OPERS. RESTART could never be done remotely. S/s is the same as R/r
in older ircu-code. (before 2.10.01) "s" would mean all operators on the
server, so a setting of S and s at the same time would be redundant and mean
the same as just s.


Oper_remote **t **(y)

When set, it allows operators to connect to the server and gain operator
status without beeing on "the same network" as the machine running the server,
which means an operator could log on from a dialup-account on the internet,
like any user.


IRCII_Kludge **u** [OUTDATED]

Controls whether or not \n is used to terminate lines.


Poll() **U**

Server uses Poll(). It depends on the system the server is running on if it's
chosen or not.


VIRTUAL_HOST **v**

Turns on some gear that's used when there are two or more servers on the same
machine.

Standard: not set


Valloc **V** [OUTDATED]

Use the valloc() function, which caused problems on some systems.

Standard: Not set.


BADCHAN **W** (y)

Without much ado, Undernet has added the capability of banning a channelname
in ircu2.10.10. Technically this is done by stopping people from joining it.

LOCAL_BADCHAN **x** (n)


    If this is set, any OPER can ban a channel. If it isn't set, only uworld can carry out the ban. (x is not allowed on undernet)


Trying to join a badchan'd channel will give you the same error as if you were
banned from it. The Badchan should somehow show up in the g-line list.


The Badchan feature were implemented to block channels used by viruses/trojan
horses to communicate with their creator. This relies on a fixed channelname
and could thus be easily overcome by the virus-writers. Blocking a channel is
accomplished in several other ways not requiring special settings, but this
feature may be appreciated in those networks with a policy on allowed
channels, a practical impossibility for larger nets.

Unixport **X **[OUTDATED]

a variable used to setup a Unix domain socket to connect clients/servers to.
Like port 6667 I suppose.

standard: Set.


Use_syslog **Y**

Server using syslog(). The server sends "vital" messages about the server
through syslog. Things like system errors and events critical to the server
beeing logged.

Standard: Not set.


v28PlusOnly **8** [OUTDATED]

Means the net has only 2.8 or higher server versions.






{:#sec5}
#  5 STATS. Query for retrieving various data and statistics

A command that gives you access to large amounts of information is STATS. How
is the load on the ports divided? who is banned and why? how many is away? and
many other things.

Syntax:

`/STATS [<query> [<server>]]`


Stats on remote servers are partly disabled, for that "sense of achievement"
in bandwidth saving. Undernet has also sadly disabled most of these locally,
to stop attackers from seeing the network structure and other weak spots.
Because of this, the information present about the stats replies here may be
inaccurate for newer versions of ircu



I refer to "lines". These are literally lines in a configuration file on the
server.

The data are all kept in the same format for programming reasons, so some
fields will be blank for some lines.

c, h, i, k, l, m, o, u and y queries are common for all networks, the others
are ircu implementations. Case sensitive only when stated.

In addition, ircu.2.10.10 started implementing F-lines, socalled feature-lines
to keep track of all the configuration and compile-time options and choices
ircu allow. These lines are also responsible for the oper-only commands /set
/reset and /get. Non-operators arn't allowed to view F-lines but I mention
them here to avoid confusion.



{:#sec5-1}
##  5.1 Who's allowed in and how.

###  5.1.1 k K-line
{:#sec5-1-1}

Returns a list of banned usernames and hostnames. (Kill-lines) Helps you
determine why someone can't get in.


`K:<host/IP mask>:<optional reason>:<username mask>:-1`

the optional reason can be entered plainly using quotes or, when preceded by a
!, be the path to a textfile that contain the reason.

(versions prior to 10.05 could only allow reference to a filename, without !)

As of ircu2.10.11, the <host/IP mask> field can filter on your infotext
(realname) when preceded by $R

The -1 is a field who should be a port by the standard syntax, set to -1 since
it dosn't make sense in this context.


Examples:

`K * user 0 -1`

`K *.ppp.some.mr Go_away ~tagger 0 -1`

anyone matching "user@\*" is banned. (guaranteed fake ID) anyone matching
~tagger@ppp.some.mr is also banned.


`K *.compuserve.com !klines/us * 0 -1`

Anyone from compuserve is k-lined, server looking up a file and replying with
its contents, say "Please use a us-server".


`K * K-lined because of clones ~victor`

anyone matching ~victor@\* is k-lined, just displaying the text "K-lined
because of clones"


`K $R*sub7* you are infected with a trojan * 0 -1`

Will k-line anyone with infotext (see [2.14](#sec2-14))
mathing *sub7*


If you happen to find a lowercase "k"-line, it works as other K-lines, except
it contains an IP-address that will K-line the user even if his IP happen to
resolve to a DNS address. This is part of the protection against "virtual
host" misuse, as described in "userhost/userip"
([2.9](#sec2-9))

`k 192.168.\* !klines/martians \* 0 -1`



Stats K has remote capabilities:

Syntax: `/stats k fullservername mask`

You have to pass along a mask, and you cannot force all lines "the wildcard
way". From ircu2.10.01 you can replace fullservername with a nick. (meaning
the nicks server)


Notes:

the ~ is added by the server when it wasn't able to verify your address.
(Which it does by IDENTD)

Ircu also performs checks on your username outside the k-lines. Mixed case can
trigger it

the 0 and -1 at the end are just unused fields.

In addition to all this, there's some fuzzy features. A server might add
G-lines to its K-line list automatically and allowing opers from other servers
to set its k-lines. It shouldn't make much difference though. There's also an
attempt at "timed K-lines" for balancing the load from near and abroad as the
peak-hours shift across the globe.





{:#sec5-1-2}
###  5.1.2 g G-line

shows G-lines.

They work as K-lines except that they ban for the whole undernet (Global-
lines) and they expire automatically after a given period of time.


Example:

`G **@fish.baccalao.com 970523933 [Super] large trout slapping [3]`

`G *timmy@grasshoppers.org 970574400 Banned due to clones.`


The format is simple: Address, number, reason. The number is based on a
startingpoint. the "epoch". It's a LONG number that tells the number of secs
since 01:00 1. jan 1970 GMT time. if you try /debug in mIRC you will find it
used in whois-replies. (signed on.. e.t.c) and also in pinging. For the whois,
your program automatically converts the number to your timezone and translates
it into readable format.

When the date/time specified by number is reached, the G-Line is lifted. A
G-line usually lasts for a few hours or a week, but could easily be set to
last forever. (Well, over 30 years atleast.) Also see
([6.5](#sec6-5))


Note that the number used will not be the same as the number used for
date/time in e.g Excel, because Microsoft chose another startingpoint. (There
were no Microsoft in 1970 :-)


Lacking a command to add k-lines on the fly, a form of g-lines not propagating
to other servers, socalled local global-lines (sic!) were made available. Then
in principle you could do away with the k-lines.



How do one translate the LONG number to a normal date/time format? I got this
handy alias for mIRC from Rainman:

First make this an alias: `/unixtime /echo $active $$1 = $asctime($$1) `and
then you type say, `/unixtime 970574400` and get the output: `970574400 = Tue
Oct 03 14:00:00 2000` You may type `//echo $asctime(970574400)` if you don't
know how to make aliases.





{:#sec5-1-3}
###  5.1.3 i I-line

A list of the hosts that is allowed to connect to the server as a client.



`I:<IP mask or garbage text to force resolving (e.g NOMASK)>:<digit>:<hostmask>:<port>:<class>`


Example:

`I nomatch * *@*tea-house.com 0 4`

`I *@*.se * *@*.se 0 20`

`I *@*.fi * *@*.fi 0 20`

`I *@*shoeshop.com 5 *@*shoeshop.com 0 20`

`I *@* * Unresolved 0 1`

`I *@* * *@* 0 1`


On the last two lines, you can see that the server will in general allow
anyone. Even if the server can't get your DNS address (Unresolved) But In the
K-line list, your host or domain might be k-lined because you should use a
closer server. (European clients will experience this a lot on us-servers and
vice versa.)


Take notice of the 2. field from left \<digit\>. In versions earlier than
ircu2.10.05, "ONE" here meant that only one connection were allowed in from
the same IP-address, when sorted under this I-line. From 10.05 they can put a *
to mean unspecified, or a digit, 1 to 9, to limit the number of clients
connecting. In the example above, shoeshop.com are allowed to have 5
connections from the same IP-address, where the connections are counted
_globally_. (Its total number connections to the IRC-network) The old "ONE"
only looked for clients connected to this very server.

To ease it for lazy server-admins, ;-) one can compile ircu to still accept
"ONE" in the I-lines. If so is done, a "O" shows up in the /version reply.
([4.2.7](#sec4-2-7))

At the same time, the <digit> field is the field to put in the password for
operator connections. That won't be displayed ofcourse :-)


The <port> field is usually empty, hence the 0. But it's not port 0. If in
use, it probably restricts the connection to use only the specified port.


Example:

Your favourite server has got the following line and you are under the \*.de
domain: "I *@*.de 2 *@*.de 0 20"

If you already had two connections to Undernet, possibly on other servers,
this exact server would not let you in. Another server with a different setup,
might still let you in.


Q: What if I match more than one I-line?

A: If the administrator has put the lines in the right order, you should be
matched to the I-line with the most specific mask. ("\*.yourprovider.com" is
more specific than "\*.com")


Q: Don't I and K lines "collide" sometimes?

A: As a thumbrule, the leftmost, or most specific identification can override
the other.


This depends on the admin setting up the lines correctly


Example:

A European server might K-line the whole \*.edu domain, but put
\*.someuniversity.edu in I-line. Someuniversity will then get in, so the
"someuniversity." inclusion is overriding the .edu exclusion.

A `*!*someperson@someuniversity.edu` K-line will in turn override the
universities' general I-line.

Also the common `*!~user!*@*` K-line will override the common `*!*@*` I-line,
that allows anyone in general in.

If a server has the same mask in both an I and a K line, the K override the I.


I-lines can be fetched remotely. Same syntax as for k-lines
([5.1.1](#sec5-1-1))





{:#sec5-1-4}
###  5.1.4 o O-line

This one returns a list of hosts from which normal clients may become
operators.



Example:

`o *@*.sol.no * discotom 0 10`

`o *@*.sn.no * discotom 0 10`

`O *@*.online.no * McSyrup 0 10`

`O *@*.sol.no * McSyrup 0 10`


Big O in the list means a global op, small o means a local op. Local ops can't
act outside the server, and on Undernet they can't use Uworld. Ops can also
see invisible people, but the "local ops" can only see those invisible on
their own server. Your local "local ops" (locops for short) is shown in the
"/who 0 o" command, along with the global operators.

The ops listed in the example are put in connectionclass 10.
([5.1.5](#sec5-1-5)) the * is for the hidden password, 0 is
just empty.


see [4.2.7](#sec4-2-7) for more about the Op-status.



{:#sec5-1-5}
###  5.1.5 y Y-line

y shows Y (Class) lines from server's configuration file

These classes are used to decide how many are allowed to connect from
different places on the internet. A european server for example, might allow,
say a maximum of 100 us-users, and would therefore put all *.com *.edu *.net
and *.org users in a class with a maximum of 100. Another use, is putting the
operators in a dedicated class, so that they'r sure to get in, even if the
server should be full.



The syntax is:

`Y:<class>:<ping freq>:<connect freq>:<maximum links>:<sendq size>:<current
no. of links>`


Example

`Y 0 120 600 1 2000000 1`

`Y 70 200 120 10 4700000 3`

`Y 20 180 0 300 400000 60`

`Y 10 180 0 100 400000 4`

`Y 5 180 0 50 400000 25`

`Y 4 180 0 400 400000 368`

`Y 3 180 0 200 200000 153`

`Y 2 180 0 200 400000 200`

`Y 1 180 0 400 400000 42`


In this example, class 1 can take up to 400 users, with a max sendque of
400000. But has only 42 users. The ping-frequency is allowed to be as high as
180. ping-frequency is how long you can be silent before a ping is sent. If
all classes were filled up, this server would have 2370 clients. I choose to
call the possible clients in a class "seats". We might guess that class 70 and
0, both with few seats, special ping-frequency and high sendq size, is
dedicated to server-server connections.

In O-lines ([5.1.4](#sec5-1-4)) we read that for this server,
class 10 is where the operators are placed.


Where the classes are saved:

Who goes in which class is defined in the I:lines. here's an example from a
norwegian Undernet-server:


`I *@*.org * *@*.org 0 3`

`I *@*.net * *@*.net 0 3`

`I *@*.edu * *@*.edu 0 3`

`I *@*.com * *@*.com 0 3`

`I *@*.se * *@*.se 0 20`

`I *@*.fi * *@*.fi 0 20`

`I *@*.dk * *@*.dk 0 20`

`[...]`


All americans are grouped in class 3, while people from the neighbouring
countries goes in class 20. According to the y:lines above, the neighbour-
countries has 300 "seats" dedicated to them, and us-citizens 200.

Further down we find:

`I NOMATCH * *@*.telepost.no 0 4`

`I NOMATCH * *@*.online.no 0 4`

`I NOMATCH * *@*.telenor.no 0 4`

`I NOMATCH * *@*.sol.no 0 2`

This means 600 "seats" are reserved for these hosts. (see y-lines) (NOMATCH
forces the address to be resolved. The server dosn't want to be fooled)
_Coincidentally_, these are domains belonging to the ISP running the server!
;-)


To Determine your class: use `/trace yournickname`.

Example: "`User 3 Napoleon[modem15.lePPP.eifelnet.fr] 30`" means nickname
Napoleon belongs to class 70, beeing idle 30 secs.





{:#sec5-2}
##  5.2 Server-server connections

{:#sec5-2-1}
###  5.2.1 c

Returns a list of servers which the server may connect to or allow connections
from.


Example prior to ircu2.10.10:

`N *@130.240.16.107 * Lulea-R.SE.Eu.Undernet.org 0 80`

`C *@130.240.16.107 * Lulea-R.SE.Eu.Undernet.org 4400 80`


Example, current ircu:

`C * * London.UK.Eu.Undernet.org 0 80`

`C * * Amsterdam-R.NL.EU.Undernet.org 0 80`

`C * * Oslo1.NO.EU.Undernet.org 0 70`

`C * * Gothenburg.Se.Eu.Undernet.org 4400 80`


Earlier servers had two lines "C" to connect TO, and "N" to accept connection
FROM.

These are merged into one today. The IP of the server is also masked, along
with the password ofcourse, for security reasons.

The two last numbers are unixport and class to connect to. You'll find the
same port in /stats y ([5.1.5](#sec5-1-5))

if the port is ommitted (0 as here) the server will not try to connect to that
server.

That means that the server in this example can accept connections from london,
amsterdam, oslo1 and gothenburg,

but will only try to connect to Gothenburg itself. This is part of defining
the tree-structure.





{:#sec5-2-2}
###  5.2.2 U (uppercase)

showing U:lines. Listing of servers allowed to act as "services". Uworld is
running x on Undernet

Example:

`U Uworld.undernet.org Uworld,X,NickSvr,NickSaver,NickServ,LPT1,LPT2,AUX * 0
-1`

`U Uworld2.undernet.org
UWorld2,W,ChanSvr,ChanSaver,ChanServ,COM1,COM2,COM3,COM4 * 0 -1`

`U Uworld.EU.undernet.org EuWorld,E,protocol,StatServ,NoteServ,Undernet * 0
-1`

As of ircu2.10.05 U-lines accept "nick jupes". In effect, noone but uworld can
use the above nicks.

This includes W and X, but most of the nicks are "juped" to stop various nasty
exploitations by users taking the nicks.




{:#sec5-3}
##  5.3 Statistics-related commands

{:#sec5-3-1}
###  5.3.1 m (lowercase)

Gives you a list of commands supported by the server, number of times they've
been used, and the bytes consumed by the command.

For commands that havn't been used, type /raw help


Example:

`PRIVMSG 4752355 184344091`

`NICK 848063 49075863`

`QUIT 580331 17961034`

[...]



Example:

Sending a PRIVMSG between servers. Toma2 speaking in #SoupConspiracy.
Everything before PRIVMSG is prefix

`:Toma2!MisterL@ppp54.conspir.gov PRIVMSG #SoupConspiracy :The Soup has
arrived`

For more information about Privmsg, read the IRC RFC, (currently RFC1459) or
try out the /debug command in mIRC.


It's hard to guess the average message-lenght. PRIVMSG, as you can see,
consists of much more than the actual msg, but combined with the number of
users and the t, p and l-query, we _might_ guess out how much people talk and
if a servers' users tend to talk to each other mostly, or is chatting around
"out there", because a long prefix is only added while sending outside the
server.


You may also use /quote help ([4.2.4](#sec4-2-4)) to list
available commands

{:#sec5-3-2}
###  5.3.2 l

Shows a table with server-server connections and some people in the act of
logging in.


Sample:

`Connection SendQ SendM SendKBytes RcveM RcveKBytes Open since`

`baltimore-r.md.us.undernet.org 121 166840 6592 1043968 49922 000004536`

`0 1 0 2 0 000000002`

`0 2 0 3 0 000000025`

`NickJagger 0 1 0 2 0 000000009`


The 2nd line is a server-server connection, the 3 last are people logging in.
(USER and PONG havn't been carried out yet)

ircu previous to 2.10.08 would also show statistics for the ports on your
server:

`[...]`

`SanDiego.CA.US.Undernet.org[*.6666] 0 7809826 743927 998848 45499 001529427`

`SanDiego.CA.US.Undernet.org[*.6667] 0 287381731 24655221 30384980 1297028
001529427`

`[...]`

The 2. line would be the sum for all ports. You can get much of the same info
from /stats p ([5.3.3](#sec5-3-3))

On even older ircu, port 6667 wasn't shown, but you could easily find its
values when you subtracted the other ports from the sum.


Explanation:

Send M/Q

Sent/Qued messages

Send/Rcve M

Sent/Received messages

Send/Rcve KBytes

Kilobytes sent/received

Open since

Number of seconds it has been open. The other numbers are counted from this
moment.



{:#sec5-3-3}
###  5.3.3 p

Show you the ports this server accepts connections on, and how many is on
each. A must when choosing ports :-)


Sample:

`[...]`

`P 6670 8 C active`

`P 6669 41 C active`

`P 6668 148 C active`

`P 6667 354 C active`

`P 6666 25 C active`

`P 6665 30 C active`

`P 6664 23 C active`

`P 6663 30 C active`

`P 6662 23 C active`

`P 6661 9 C active`

`P 6660 227 C active`

`P 31337 0 C active `

`P 7777 144 C active`

`P 7000 113 C active`

`P 4000 0 S active`

`P 1025 0 C active`

`P 10321 0 C active`


C = open for users.

S = open for server-server connections only.


This servers MOTD said ports 6660 to 6670 were open for users. In addition,
mIRC lists port 6668, 7000 and 7777 as valid ports for this server. 6667 is
the standard IRC port. Sure lagging against the server isn't a big problem
usually, but it's something appealing about the luxury of having a port all by
yourself. :-)


From ircu2.10.10 there's an option for hiding a port from this listing, so
don't be suprised if the admin keeps the good ports to himself. Ports can also
be reserved to ops by setting password on them. (Port 31337 in this example
rings a bell?)


stats p can be done remotely:

`/stats p servername [mask]` will return the 3 first matching ports, or 3
first if no mask.




{:#sec5-3-4}
###  5.3.4 t (lowercase)

Various statistics about the server.


Example:

`accepts 1622557 refused 1590021`

`unknown commands 17031 prefixes 84`

`wrong direction 54 empty 660`

`Client Server`

`connected 28292 4`

`bytes sent 2425789.450K 423214.786K`

`bytes recv 189255.273K 506019.371K`




{:#sec5-3-5}
###  5.3.5 z

shows memory usage and count data structures. What it means to us: More
statistics! :-D And many of these are global statistics too. Here you can
count how many is set away, number of bans, number of users in whowas-buffer
e.t.c. The format is "number(bytes used)"


Example:

`Client Local 284(260144) Remote 14619(2865324)`

`Users 14858(1664320) Invites 7(140)`

`User channels 31169(623380) Aways 1042(46145)`

`Attached confs 285(5700)`

`Conflines 598(40307)`

`Classes 9(252)`

`Channels 9661(2451957) Bans 9990(428434)`

`Channel membrs 31169(623380) invite 7(140)`

`Whowas users 810(90720) away 11(489)`

`Whowas array 1000(80000)`

`Hash: client 26669(106676) chan 16001(64004)`

`Dbuf blocks 426(867336)`

`RES table 4096`

`Structs 81920 IP storage 24624 Name storage 55151`

`Total: ww 171209 ch 3503911 cl 5465153 co 40307 db 867336`

`End of /STATS report`


Output from /lusers at the same time:

`There are 7932 users and 6926 invisible on 42 servers`

`30 operator(s) online`

`9661 channels formed`

`I have 274 clients and 1 servers`


Explanation for the statistics:

If you summarize local and remote clients, you get 42 more than the number of
users. This is due to the server-server connections beeing counted as clients,
but not as users. Conflines and attached confs are configuration lines. the
nine classes-lines are the ones retrived with the y-query.


away-messages:

The example above says 1042 people is marked as away, but note that this is
slightly misleading, as away-messages isn't exchanged during a rejoin after a
netsplit. (Not up to and counting ver 2.10.10 atleast). So sometimes, to find
a persons away-message, you need to direct the whois-query to his server,
[2.6](#sec2-6).


User channels and Channel members:

This is about datastructures, or relations between channel and user.


An example:

You have two users, Nat and Tim. Nat is on channel #a and #b, Tim beeing only
on #b. This gives us three user-channel "relations":

"Nat on #a", "Nat on #b" and "Tim on #b". You could also say that the number
is the sum of occurences of "user X on channel Y".

These relations are contained in two separate lists, the "User channels"
beeing a list of channels the user is on and "Channel members" constituting a
list of users the chan has.

Simplified, the lists might be like this:

User channels list: Channel Members list:

NAT #a (Nats' relations) #a NAT (The relations of channel a)

NAT #b #b TIM (The relations of channel b)

TIM #b (Tims') #b NAT


sum: 3 sum: 3

The sum should usually be the same for both.

The lists are used to "channel" data between the users, hence the name
channels.

NAT says something in #b, "User channels" verifies she can speak there, the
server looks in the "Channel Members" list, sees that TIM is also on #b and
channel what NAT said over to TIM.

(I suppose that data like "#b is a secret channel, has this and that topic" is
kept in a separate list, and not copied for every member of it, and ditto for
the modes of a nick.)


Fun with statistics:

We have 14858 users, 9661 channels and 31169 occurences in each list

This tell us that each user is on average on 2.1 channels at the same time
(31169/14858 = 2.1) and that each channel has on average 3.2 users.
(31169/9661 = 3.2)


(Yes, the numbers can be different. Imagine an extreme case of a net with
thousand channels and 2 users, where one of them has joined all channels, the
other is on none. You get "on average there is 1 person on each channel" and
"on average a person is on 500 channels")



{:#sec5-3-6}
###  5.3.6 w

Access statistics from main served domain.


Example:

`-Oslo-R.NO.EU.Undernet.org- Minute Hour Day Yest. YYest. Userload for:`

`-Oslo-R.NO.EU.Undernet.org- 6.00 6.0 7 0 0 sol.no clients`

`-Oslo-R.NO.EU.Undernet.org- 565.91 610.3 675 0 0 total clients`

`-Oslo-R.NO.EU.Undernet.org- 500.36 534.8 640 0 0 total connections`


This server is run by the sol company, so they like to keep some statistics
about their own users.



{:#sec5-3-7}
###  5.3.7 M (uppercase)

Various memory-leak statistics.

{:#sec5-3-8}
###  5.3.8 r and x

Two queries available when the server is in DEBUGMODE. r shows resource usage
reports, x shows usage of lists

Not to be confused with R-lines which ircu does not support.



{:#sec5-3-4}
###  5.3.9 u (lowercase)

Telling you how long the server has been up (since last reboot)


Example:

Server Up 1 days, 7:09:21

Highest connection count: 1087 (1085 clients)







{:#sec6}
#  6 Discussions

{:#sec6-1}
##  6.1 A look under the hood 

You might want to see what is transmitted between you and the server to better
understand what's going on. mIRC has the command /debug on|off that saves a
log in debug.log. In the log you will encounter "numeric replies", those
numbers at the beginning of the lines. They are for example used in the /whois
replies to identify the contents of each line. The common numeric replies are
listed in chapter 6 in RFC1459, but I'd advice you to instead have a look at
this webpage:
[http://mirc.stealth.net/download/](http://mirc.stealth.net/download/) which
contains a helpfile for numeric replies, also network-specific for Undernet,
Dalnet and Efnet and give you good examples on ways to use them in scripts.



{:#sec6-2}
##  6.2 Privacy and anonymity on IRC

As a thumbrule you shouldn't trust irc or internet for that matter when it
comes to your privacy and anonymity.

Some networks can send invisible listeners into any channel, some even record
everything you say and do. Never trust a network that dosn't give out their
sourcecode. Personally I wouldn't trust a network that put restrictions on
what you can talk about either, as that easily justifies "violations" of
privacy. It's easy to eavesdrop on internet conversations and irc in
particular. You may use DCC chats to bypass the irc-network, but if privacy is
of great importance for the conversation at hand, consider a substitute for
IRC, preferrably one with heavy encryption.

As for anonymity, I'd say you are anonymous if people can't track down your
true identity. Your identity could be revealed by your IP address. This is the
address of your computer when it's on Internet, and can be translated into a
corresponding DNS address. (Say modem50.ppp.village.net) Some nets mask your
ID for other users, but on most nets you can see peoples address in the /whois
reply. Even if your net masks it, they themselves have access to it, and could
possibly hand it out. When you accept a DCC chat or filetransfer, you also
reveal each others address. When someone has gotten your address, they ask
your internet provider "who used that address at that time?" and if the ISP
comply, your true identity is revealed. If IDENTD is used, your userid at your
provider may be shown in a /whois, and a simple finger at your provider may
reveal your identity. If you'r chased by lawyers, secret service or ECHELON
itself, expect to be tracked down in more sofisticated ways.

<http://www.user-com.undernet.org/newsletter/archives/2000/newsletter03-00.html#bouncers>
features an article on "bouncers", relay-servers that you can route your IRC
chat through, making it appear on IRC like you originate from that server and
not your machine. Much like anonymous mail forwarding. On the other hand,
bouncers are a golden chance at listening in on IRC conversations. How far can
you trust the bouncers, or to rephrase: How far can you throw Manhattan?


**What can the operators see according to current ircu?**
Operators can not see messages between users, they can not monitor the talking
in a channel without joining it and they can not join a channel without beeing
seen. 1)

Apart from that, you should assume that the operators can join any channel
regardless of restrictions, find you regardless of +i mode
([2.5.1](#sec2-5-1)), see the secret channels you are on and
who is in there with you. 2)

If you have a special operator in mind, the version-reply
([4.2.7](#sec4-2-7)) should give you sufficient information
about his powers.


But, that's when we're all playing by the rules. Perhaps the admin has tweaked
ircu? perhaps he is packetsniffing his own machine? Tapping IRC chats are
easy, and it isn't harder with ircu than any other serversoftware.



  1. I once were on a net where it was said they had a bot that could join a channel "invisibly", and monitor for indecent words.

  2. The ability to see inside +s/+p channels were added in ircu, but I guess other nets could have opted for this too.



{:#sec6-3}
##  6.3 What's a ping? Meet CTCP and DCC

A ping files under what we call CTCP (Client To Client Protocol) commands.

Essentially, sending a PING to a nick is an everyday PRIVMSG and the reply
sent back is a NOTICE. A PRIVMSG is a message to a nick or a channel, so /ping
#channel is a valid way to ping everyone in that channel.

The time and IP is determined with a LONG-number, (see
G-lines([5.1.2](#sec5-1-2))), and the PRIVMSG/NOTICE line
also contain some special characters. The /me command is also a CTCP command.
(Called ACTION)

You may convert between regular and long IP in mirc by typing `//echo 2
$longip(IP-address)`


The DCC (Direct Client Connection) is initiated via CTCP but has its own life
after that.

For more information, have a look at
<http://www.doco-com.undernet.org/>, they have both the DCC
and CTCP RFC with good explanations. (Believe me, how CTCP work isn't hard to
grasp at all) Type `/ctcp nick clientinfo` to see what commands the nick will
respond to.

Beeing on a LAN or using a firewall, you may have run into problems with DCC.
This [ICS and IRC FAQ](../security/ics.htm) discuss the problem and possible
solutions.


A small trick:

Typing `/raw PRIVMSG BlondeBunny :DCC CHAT chat 413460262 8888 `will trick
BlondeBunny into initiating a Telnet session with the roleplaying server
furry.org on port 8888. The character is 01 in hex, (most easily retrieved by
copying from the debug.log in mirc) This could have been used for say,
checking your mail via mIRC, but alas! Several clients disallow
attempts/accepts of connections lower than 1024, stopping those with malicious
intents. You may manage to connect to port 25 on a mailserver via mIRC, but a
port 23 telnet dosn't seem to work (Anyone out there who managed this through
mIRC? Please drop me a mail)


Note:

Typing "/raw ping garbage" does a serverping. That's the ping that makes those
"PING? PONG!" lines in the status-window, checking to see if you'r online.
It's not related to the CTCP ping. The serverping before ircu2.10.11 had a
"remote" capability, see [1.4](#sec1-4).



{:#sec6-4}
##  6.4 What's lag and bandwidth?

Bandwidth is about how much data the servers manage to squeeze in on their
lines. If there's much data passing through, its going slow. The result is
lag, that it takes a long time before you see what people typed. The easiest
way you can reduce your lag when you'r chatting with someone, is to initiate a
DCC chat. The text is then passed directly between you, not through the irc-
network. Also, you won't be affected by a netsplit in DCC-chats

For channels, you may want to use close servers.
([4.1.2](#sec4-1-2)) The source of the lag can be traced down
using /trace ([4.1.5](#sec4-1-5)) and a remote whois
([2.6](#sec2-6))

{:#sec6-5}
##  6.5 Desyncs after a netburst

A netburst is the "reconnection" of the network after it has had a split.

During the netburst, most information in the network like who's on which
channel is synchronized. A timestamp as the one in the g-lines
([5.1.2](#sec5-1-2)) is used to decide between conflicting
information. If for instance, two people have the same nick, the one who got
it first keep it, the other one is kicked off the net. This is exploited by
services like X on Undernet by setting the timestamp to 0 (1. january 1970)
thus overriding all other settings withouth violating any IRC protocol.

As of P10 ([4.1.3](#sec4-1-3)) the away, silence, topic and
invite information is _not_ synchronized, to save bandwidth. Silence
([2.12](#sec2-12)) has its own synch-system and common sense
tell people to do the invite ([3.6](#sec3-6)) over again.
The average channelservicebot will synchronize the topic as well. To get hold
of the away-message after a split without joining the persons server, you'd
have to use a remote /whois ([2.4](#sec2-4))

{:#sec6-6}
##  6.6 Obscure commands

I believe that most commands in this guide can be usefull or interesting to
someone out there. The commands below however, is absolutely uninteresting.
But, this guide should contain every command reachable by the user, so here
goes:

**/raw dns: **Displaying Something about DNS-caching data. (Hurray! it's gone in ircu2.10.10 :-D)
**/hash:** I don't even know! Grrr.. (Drat. The bugger is still around in 2.10.11 :-[ )
But ofcourse, you can pretend for your friends it's something much more
interesting. Use your imagination and mail your ideas to me, I'll add the best
to the guide in the next edition.

{:#sec6-7}
##  6.7 What's Uworld, X and Cservice?

uworld is a service running on undernet. Acting as a server, it can set modes
for a channel and by that helping opers fix channels more easily. It also
helps administering g-lines. It has no services for regular users, but if you
ping or msg it too much, you might set off its G-line floodprotection.
Cservice is another service running. It's the one responsible for the X
channelbots you've probably encountered if you frequent Undernet.



{:#sec6-8}
##  6.8 Summary of Undernet anti-flood measures.

A network will want to minimize the number of ways people can harass others on
it. A common loophole were to take advantage of net-splits to gain op in
channels and cause "nick-collisions", to kick people off the net. This
loophole has been eliminated on Undernet with the use of "timestamps", but
flooding, the most common way to cause a DOS (Denial Of Service) or just
causing annoyance prevails. Flooding is to send a lot of unwanted data to
something, so that their connection is lost, their channelwindow is filled
with garbage or they'r otherwise harassed.


I've mentioned the floodstoppers throughout the guide, Here's a summary of how
other people and the server is stopped from flooding you:

  * Stops flooding in channel by nickchanges
  * /Who and /names limit how many lines they send back to you
  * A ban of a user already in channel shuts his mouth
  * You can msg only a given number of people in a short time interval. (userhost/userip and wallchops works around it)
  * ircu command "silence" is better than "ignore" as a floodstopper
  * Clones are limited, and many connections from the same address in a short timespan might G-line you. ("reconnecting too fast, throttled") Connecting 3 times in a row to the undernet within 20 seconds will get your IP throttled for 20 seconds.
  * Somehow, getting the channellisting always floods me off EFNet, while it works just fine on Undernet.

Apart from this, the net takes action against you flooding _it_, by
restricting remote calls to servers and hiding the network structure. Cservice
also has floodstoppers built in.



{:#sec6-9}
##  6.9 Characters on IRC

For chatting in channels, anything that can be translated to ASCII gets
through. (ASCII is a standard way to express characters) Note however, that
since the parts of the ASCII table may be country-specific, your ASCII-art may
not turn out as well for others. Fancy fonts will only show up on your own
computer. You can use character map (charmap.exe) in windows to view the ASCII
table.


Channelnames: After the initial #, & or +, all characters except NUL (\0),
BELL (\007), CR (\r), LF (\n) a space or a comma

Colons in channelnames are valid for ircu but may be reserved for other
purposes on other nets.


Nicks: The allowed characters are a to z, A to Z, 0 to 9 and [ ] { } [ ] { } \
| ^ ` - _

This is the same as saying that '-' and the characters '0' to '9' and 'A' to
'}' in the ASCII table are allowed.

The first character in a nick cannot be a '-' or a number.


The characters { } | ^ are considered the lower case equivalents of [ ] \ ~
respectively. This is said to be because of IRCs scandinavian origin, but
while scandinavians will notice that Æ,Ø,Å is forced lowercase in
channelnames, Å and Ä is not equivalent with each other or with any of { } |
^. This bear the mark of a backward-compatible ircu feature, and how non-
american letters are treated on IRC may vary between nets.


A weird side-effect happens when trying to ban people with these characters in
the name.

Trying to ban the nick "ac\dc", \*|\*!\*@\* will work where \*\\\*!\*@\* fails.
\*ac\dc\*!\*@\* works just fine too.



{:#sec7}
#  7 The logon procedure

Connecting and beeing on IRC is nothing but a telnet session. The telnet
address being the servername and the portnumber for example 6667. Here's what
to do if you want to try an unpolished tour on IRC:

You connect to the address, with the right portnumber, using a telnet client.
("telnet.exe" in windows works fine) Follow these steps:


On undernet this may scroll up:

NOTICE AUTH :\*\*\* Looking up your hostname

NOTICE AUTH :\*\*\* Found your hostname, cached

NOTICE AUTH :\*\*\* Checking Ident


If mIRC, and not your ISP handles IDENTD requests, it might be necessary to
have mIRC running at the same time. (see [2.4](#sec2-4) for
IDENTD) or the server, if it is more forgiving will still let you in, only
putting a ~ before your username in the /whois reply.

Regardless of whether the lines above came up or not, we continue:


First you type: `NICK yournickname`

Then you'll get a line saying: `PING :somenumber`, answear with: `PONG
samenumber`. (If you don't get a PING, procede with USER)

The PING-PONG that you may have seen in your status-window while online is the
server checking to see if you'r still logged in, while this initial Ping-Pong
is to stop IP-Spoofing. The machine the server sent the PING to must be the
same as the one who sent a PONG back, since it knew the number. It also stops
a few attacks by assuring the server that it's someone who wants to do IRC at
the other end, as IRC supposingly is the only protocol going PING-PONG in this
way.

In fact, to somehow stop people abusing web-proxies, sending the command POST
to ircu2.10.11 during login will disconnect you.


Now follow up with the command: `USER username "hostaddress" "someservername"
:Yourname` (Keep the ".)

The username will be overridden by the IDENTD username if available,
hostaddress and someservername is ignored but must be present. After that,
various information scrolls up. (Some ircu specific here)


Irc operators or administrators would here issue their password for special
access. There are talks about using the password to log into the
channelservice (X on Undernet) and set yourself +x
([2.5.1](#sec2-5-1)) before you fully enter the net, so that
your address is not visible to anyone during even a brief moment of the logon,
but this is somewhat in the future. (2003 or later).


If you'r connecting to undernet and using a firewall on your machine, the
firewall may alarm you at this moment that someone in pinging your ports. This
is not related to the IDENTD but is Undernet checking for malconfigured
Wingate and Proxy servers (see
[http://help.undernet.org/proxyscan/](http://help.undernet.org/proxyscan/))


Time to be greeted:


`Welcome to the Internet Relay Network Alex`

`Your host is irc.clockworkorange.co.uk, running version u2.10.11.rc.1`

`This server was created Fri Jun 23 2002 at 13:28:57 MET DST`

`irc.clockworkorange.co.uk u2.10.11.rc.1 dioswkg biklmnopstv bklov`


After this warm welcome, some pearls for clients:


`WHOX WALLCHOPS USERIP CPRIVMSG CNOTICE SILENCE=15 MODES=6 MAXCHANNELS=10
MAXBANS=30 NICKLEN=9 TOPICLEN=160 AWAYLEN=160 KICKLEN=160 are supported by
this server`

`CHANTYPES=+#& PREFIX=(ov)@+ CHANMODES=b,k,l,imnpstr CASEMAPPING=rfc1459
NETWORK=UnderNet are supported by this server`


These ISUPPORT messages are an attempt at telling the client (mIRC, Pirch
e.t.c) more about the server they connect to, so that they can switch on or
off features depending on the net they'r on, instead of beeing bound to the
archaic IRC-protocol.

The first five indicate that these commands are available on this net,
followed by the maximum number of "/silence"s for one user, max number of
modes and channels for one user, max number of bans in one channel e.t.c

In ircu2.10.10, "TOPICLEN" also controls the lenght of your QUIT and AWAY
comment, as well as the operator's /KILL message. In 2.10.11 the length of the
AWAY messages were split off as a separate setting, while QUIT is still
controlled by TOPICLEN.

You may observe a channel having more bans than the "MAXBANS" limit. This is
purely an effect of merging after a netsplit.


CHANTYPES indicate the three types of channels, +modeless
([3.3](#sec3-3)), #ordinary and &local
([3.2](#sec3-2)). This only tells the client that these
three characters are in use as channel prefixes, they do not convey the
difference between these channels. PREFIX should be read as "o-mode in a
channel (channel operator) is shown by a @ beside the nick, v-mode (voice) by
a +." ([3.5.1](#sec3-5-1)). mIRC assume that these prefixes
are sorted according to the power they possess.

Chanmode is on the form CHANMODE=A,B,C,D where:

A = modes that take parameters and may add or remove nicks or addresses from a
list (the banlist for instance)

B = modes that change channel settings and take a parameter when they are set
or unset (setting the key for the channel)

C = modes that change channel settings, but which take a parameter only when
they are set (setting the limit for instance)

D = modes that change channel settings, but take no parameters and all
unknown/unlisted modes.


CASEMAPPING refers, far as I know, to the what character map should be used on
this network. rfc1459 refers to the "standard" for irc.
([6.9](#sec6-9))


Later on follows the output of /lusers ([4.1.1](#sec4-1-1))
followed by the server bragging about its personal record on connections,
before we move on to the MOTD and after its words of wisdom we're almost done:


`irc.clockworkorange.co.uk- on 1 ca 1(2) ft 10(10) tr`


where:

on = Number of globally connected clients including yourself from your IP-
number.

ca = Connect Attempts, You have tried once, after 2 sequential connects you
get throttled.

ft = Free Targets. This is how many different people you may contact at once,
also see [3.10](#sec3-10)

tr = Targets Restored. Your targets are kept for 2 minutes or until someone
else from your IP logs on. This stops you from "refilling" your free targets
by reconnection.


The example tells you that there's one connected client from your IP number on
the net, and this is your first connect-attempt in a while. You have 10 free
targets and no targets restored. (also see [3.10](#sec3-10))

People joining a channel on invite will receive an extra target


`Local host: dialup-1984.ppp.bb.gov (192.117.116.115)`

Informing you what the server believe to be your IP and matching DNS address.
Since ircu2.10.11, hostnames containing characters other than a-z A-Z 0-9 _ .
and - are disallowed. Allowing them could potentially mess up both clients and
scripts



A logon example:

`NICK LouiseL`

`PING :209491250 `

`PONG 209491250 `

`USER llane "ppp-21.metropolisnet.com" "irc.server.org" :Louise Lane`


What you specify in "someservername" dosn't seem to be crucuial, probably just
a leftover from archaic IRC standards.

When you want to get out, type QUIT. (A nice way to learn the commands needed
to chat, is using /debug [on/off] in mIRC.)


Note:

You get no text displayed the moment you connect and the server does not echo
the commands, so you will have to turn on local echo in your telnetclient.



{:#sec8}
#  8 Other resources


{:#sec8-1}
##  8.1 Undernet Channels



\#class
:	Holding classes to teach about IRC. (how to defend against flood, basics of
IRC, e.t.c) Several teachers are available for questions during the class.
When there's no class, there's a bot there with various helpfull textfiles.

\#opschool
:	School for operators using X.

\#cservice
:	Helping you with X and other cservice-related subjects.

\#ICMP
:	Teaching you how to avoid flood and other Denial Of Service (DOS) attacks like
nukes or ICMP attacks.

\#ZT
:	"Zero Tolerance." Helpchan for those suffering from channel-takeovers.

\#backorifice, #dmsetup
:	Good channels for help with irc viruses





\#help, #irc_info, #irchelp,
\#irc-help, #helpdesk, #userhelp, #userguide
:	Various english-speaking helpchannels, mostly on the subject of IRC itself,
but #help may help or redirect you on most issues.

\#hjelp
:	Help in norwegian

\#aide, #ircaide
:	Help in french

\#ircayuda
:	Help in spanish

\#irc_ajutor, #rohelp
:	Help in romana (from Romania?)

\#hjelp
:	Help in norwegian

\#destek
:	Help in turkish

\#mircscripts, #mirc-scripts, #scripters, #scripts
:	Making your own scripts in mIRC







{:#sec8-2}
##  8.2 Web resources


**General information**
<http://www.undernet.org/> is the startingpoint for
getting to the Undernet resources, among them 
`http://www.user-com.undernet.org/` Its "documents project"
has all kinds of documentation. The CTCP and DCC RFC, the old IRC RFC
(RFC1459) an IRC FAQ (old) and guides for the operator and channelservice
commands, which I havn't covered. Also Beginner-help, newsletters, e.t.c
Definitely worth a visit. If you want to dig deep in ircu, visit
<http://www.coder-com.undernet.org/>, the home of the
ircu serversoftware.


`http://www.user-com.undernet.org/documents/quitmsg.html`
A short and good FAQ about the
meaning of all kinds of quitmessages.


<http://www.irchelp.org/> Another source for FAQs,
help, e.t.c Its advantage is presenting the IRC as a whole,

As it cover the 4 main nets in the texts, (Dalnet, Undernet, Efnet and Ircnet)
you get a better sight of IRC

as a whole.


[http://www.irc.org/](http://www.irc.org/) An interesting site both for
general help and technical issues


When browsing the websites above, you'll run into outdated information now and
then. If some of the guides are confusing, it might be because they were
written for IRCII users. (The origianl unix client) and mix irc commands with
client specific commands.


Links to some major nets may be found at
[http://www.mirc.co.uk/servers.html](http://www.mirc.co.uk/servers.html).



**Setting up servers**

`http://www.ircdhelp.org/` Impressive site for those
interested in setting up and running irc servers

`http://serverwatch.internet.com/ircservers.html`
Reviews of irc serversoftware.

Imagine setting up your very own little net :-)


One server able to run on windows is
`http://www.wircds.com/`. The site also contain a
couple of helpfull things for the budding serveradmin like a configuration-
file generator and a list of DNS services.


`http://www.raptorircd.org/` is an open-source
ircd based on ircu. After reading this guide, you may find their
userdocumentation familiar. ;-)


Regarding encrypted traffic on IRC, UnrealIRCD at
`http://unreal.tspre.org/` is one server which has
implemented encrypted communication. Epic at
[http://epicssl.sourceforge.net/](http://epicssl.sourceforge.net/) is said to
be the first client to support server-side SSL connections.


One server that runs on IPv6 networks is IACD at
`http://trash.net/~reeler/iacd/`


Internet chatsystems at
`http://www.chatsystems.com/` has implemented a
server that only accepts connections through a web-interface.


A web-based client can be found at
[http://cgiirc.sourceforge.net/](http://cgiirc.sourceforge.net/). It supports
IPv6 networks and could be a workaround for restrictive firewalls.


Another web-based client can be found at
<https://chat.undernet.org/>



**Scripting and client issues**

`http://mirc.stealth.net/download/` is a
great resource for those interested in taking advantage of numbers in the
numeric replies. They'r listed and explained, and there's instructions about
how to make the numbers do lots of usefull things in your scripts.
([6.1](#sec6-1)) A must for advanced scripters


[ICS and IRC FAQ](../security/ics.htm) A discussion on how to deal with DCC
through LANs and firewalls
