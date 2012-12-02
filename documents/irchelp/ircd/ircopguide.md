# IRC Operators Guide

by Aaron Brinton aka aaronb v1 8/97

HTML translation by Joseph Lo aka [Jolo](/~jyl/mail.cgi) 9/97

> Ed. note: This guide offers a fascinating glimpse into the "Twilight Zone"
world of IRC operators, also known as IRC ops or opers. This has very little
to do with channel ops or the maintenance of a chat channel. The guide is
written by an oper ostensibly for other opers, but its real audience is the
average user. For other help files regarding IRC ops or running servers, see
the [IRCd server directory](/irchelp/ircd/). -Jolo

* * *

The objective of this document is to provide some basic operator notes from my
perspective. I've found that asking opers questions usually results in nothing
more than smart-ass answers, which I think is a little sad. I'm a relatively
new operator (under two years), so please understand that I'm not an ordained
expert on this material, and that some of the information may only apply to my
network (EFnet). If you find errors in here, either typographical or
conceptual, please let me know.

Note: There will be personal views in here, but I'll try to keep them to a
minimum.

* * *

## Contents

    
    
       I. Interacting with Users and Other Operators
      II. Using KILL and KLINE
     III. Bots and Bothunting
      IV. Cloners, Flooders, and Spoofing
       V. Why Operators (Usually) Don't Get Involved In Channel Affairs
      VI. Dealing with "How Does One Become an IRC Operator?"
     VII. IRCD and Associated Files
    VIII. Server Information Commands (TRACE, STATS, LINKS, and HTM)
      IX. Server Routing and Connectivity
       X. Other Server Commands (REHASH, RESTART, and DIE)
      XI. Operator Communications (WALLOPS and OPERWALL)
     XII. Linking New Servers
    XIII. Attitude and Perspective
    

* * *

## I. Interacting With Users and Other Operators

This is the most important aspect of "opering". It will make or break you as
an operator. There are a lot of politics that go on in the irc operator
community and, whether you like it or not, these politics are here to stay.
Fighting this and complaining about it will get you nowhere.

From what I've seen, most opers look down on users, make fun of them, and
ignore them. Try to avoid this ego trip side of opering. Answer private
messages, unless it is someone just sending you a hate message. Opers would
get a lot less crap from users if they would be a little less egotistical.
Something I might suggest is that you spend an hour or two every couple of
weeks helping the newbies out in #irchelp or whatever equivalent you may find.

One thing to be wary of is that users will frequently try to manipulate you
into helping them takeover channels. Very rarely will a user simply report a
bot without a reason. Generally this will be because a bot tookover a channel
or a user is flooding them. Fairly regularly you'll get these requests from
users who want someone killed off the server so they can take control of a
channel. Because of this, request the channel in addition to the nickname so
you can see what's going on before you kill or K-line.

Frequently, you will get requests from other operators to kill or K-line a
user. Opers should be trusted unless you've had problems with someone in the
past. You should always require a reason before killing or placing the K-line.
If it's in the least bit questionable, add "requested by <oper>" or something
similar to the K-line reason.

If you are being harassed by a user on the network, handle it like a user
should handle it, not like an oper has the capability of handling it. The
temptation of killing a user for flooding you is something that pretty much
all of us give into on occasion, but it's generally not the right response. If
we are going to expect regular users to simply /ignore flooders, then we
should do the same. Though I have to admit, a user must be pretty stupid to
flood an oper...

On occasion, opers have their disagreements. There is a bit of a pecking order
that exists in the oper ranks, usually with hub admins and opers being more
"powerful" than leaf admins and opers. It's generally not a good idea to try
to win an argument with the people who are providing your connectivity to the
IRC network. For that matter, it's generally not a good idea to try to win any
argument at all. If you do have a serious problem with another oper, and can't
resolve it directly with him/her, go to your admin about it. Your admin can
then approach the issue with the other oper's admin, and if that goes nowhere,
with their uplink admin. This is a quick way to make enemies, so make sure
it's important to you before doing it.

* * *

## II. Using KILL and KLINE

The KILL and KLINE commands are as follows:

> KILL nick :reason

KLINE nick :reason

KLINE username@hostmask :reason

In my K-lines, I always use "reason [aaronb MM/DD/YY]" so that the user knows
when and by whom they were K-lined, and also so that I am accountable for my
K-lines.

Generally, whatever you do on your local server really is not a big deal.
Different servers have different policies on using KILL and KLINE, but if you
are doing global kills (killing a user on a different server), you need to
make sure you understand what the IRC network's guidelines are.

Users tend to have one of two reactions to kills. Occasionally you'll get the
user to cool off and realize that they need to fix whatever they are doing.
More often, they will want to argue the point with you. Try to explain it to
them, but if they don't seem to be willing to follow the server guidelines,
just K-line them. After they get K-lined from a few servers, they'll figure it
out.

You probably want to avoid K-lining users unless it's really necessary. A
K-line means that you don't want that user on your server, for whatever
reason. Depending on the server, K-lines may be cleared after a week or two, a
few months, or maybe never. It might be wise to have a "permanent" section of
K-lines, and then the rest can stay or go at anyone else's discretion. For
clearing K-lines, generally it's a good idea to talk to the person who placed
it before doing so. With access to ircd.conf (to remove K-lines), you can be a
lot less cautious about placing them.

The best guideline for doing global kills is to ask yourself "Is this really
necessary?" You can usually find an oper on the server the user is on to
handle an issue for you instead. If an oper on the server won't do it, then
probably they wouldn't like you killing the user off their server either.

Frequently it seems that opers are just looking for a reason to kill. Probably
if you are in that mood, it would be a good time to deoper and go find
something else to do for a while. Killing like that looks bad for both you and
for your server.

It's a wise idea to keep logs of everything you do. I have yet to see a client
that doesn't have the capability of logging. If a user or another oper
challenges your kill (usually to your admin, since they typically don't have
the guts to talk to you), you can provide them. You will most likely be
accused of abusing your O-line, and threatened by users to get it taken away,
on a regular basis. Logs are your best defense.

* * *

## III. Bots and Bothunting

A "bot" generally refers to any automated program or client that doesn't have
a person sitting behind it, not just a program that is called one. If a client
is idle for several hours and is behaving like a bot, it's usually considered
one.

There are a couple of reasons why bots are frequently considered to a problem.
First, they take up resources on IRC that could be used for regular client
connections. The primary reason, though, is because bots are frequently used
to flood and harass users. You'll want to check what your server's policies
are regarding bots, but an abusive bot should never be tolerated.

Finding bots generally isn't that difficult. Many have ctcp responses that
don't match what you would expect, or have bogus idle times (in their ctcp
finger response). Also, there are a couple of good portscanners that can help
you check hosts for bots (eggdrop bots usually listen on a port for incoming
telnet connections).

You probably aren't going to find all the bots being run by hardcore
botrunners. They generally find out quickly about whatever new bothunting
methods we come up with and spread the word. With these, your best bet is to
wait until someone complains about it, and then monitor its behavior.

Here is a short description of a few of the bots out there, and a couple of
tips for finding them:

  * eggdrop - this is the most common bot that you'll run into. Typically you'll see "/msg botnick hello" in the gecos field (the description line in the whois information) if the bot is poorly configured. Additionally, by default, these bots PRIVMSG #lamest for invite/ops. They also join #botcentral by default. 
  * johbot - these bots PRIVMSG blahb1ah on a regular basis. If you change your nickname to that, you can sit and wait for them to find you. Additionally, if you enter the channel a suspected johbot is in, and do a fake netsplit quit (/quit irc.blah.com irc.something.net), the johbot will automatically change its nickname. 
  * combot - these are a comstud creation. I have never found one myself, which either means there aren't many around, or they just hide really well. I've heard that doing a /ctcp botnick source will generate a reply with "Combot" followed by the version.  There are other methods of finding bots, but they change far too regularly for this document. Also, we don't need to be giving the masses out there all of our secrets. Keep in touch with other opers on this stuff. 

* * *

## IV. Cloners, Flooders, and Spoofing

Clones are multiple clients from the same person. Most servers define this as
multiple connections from the same hostmask (matching user@*host.tld). If it's
obvious someone is running multiple clients from different domains, they are
also considered clones.

Generally, cloning itself is not all that bad (just taking up connections).
Frequently when you see clones, however, they are being used to flood users or
takeover channels.

The best approach to take with clones is to kill them, and see if they return.
If you do this a couple of times, and the user insists on keeping them on,
it's time for a K-line. Unless a user is consistently a problem, clone K-lines
should be relatively temporary (a few weeks is sufficient).

You'll see two forms of flooding on IRC. The first is CTCP flooding, which
attempts to get a user to flood the server with CTCP responses, tripping the
server's flood protection, and terminating the user with the message "Excess
Flood". Many bot networks ("fludnets") use this type of flood. Flood
protection scripts may prevent this from being very effective, but the real
problem is the impact on the network. If 20 bots flood a user for 10 seconds,
sending five 100 byte CTCP requests per second, that is 20 * 100 * 5 =
10k/sec, or 100k of data total over the 10 seconds. When a network that is
maintaining 30000 users, this sort of activity is not at all acceptable.

The second type of flooding, which is not related to IRC (but is frequently
the result of conflicts on IRC), is ICMP flooding. This is usually done from a
reasonably fast link (ISDN or higher) and consists of flooding a user or
server with ICMP packets (such as ping). This is considered a "Denial Of
Service" attack, and is against the law.

There are many flooding scripts out there right now, and a couple of these
have supposedly "random" nicknames they use for CTCP flooding. A trick to use
is to set a couple of those nicks in your notify. Some flooding scripts also
have the clones join specific channels (e.g. #srfloodclones).

DNS spoofing is a relatively new hit these days on IRC. You'll generally find
spoofs one of two ways - you're watching the connections (usermode +c) and an
unusual hostmask appears, or a user reports one. The first thing to do is to
get the user's IP address (/stats L nick), and check to see if the DNS lookup
matches the IP address. If it doesn't, you know you have a spoof. With this
information, you can KILL the spoof, and when it reconnects, see where the
real host is and issue a K-line (which won't stop them from spoofing again,
but will prevent them from signing on *without* spoofing). Some servers have
the capability of D-lines, which allow you to ban by ip mask. A D-line will
prevent the client from connecting at all, regardless of whether they try DNS
spoofing or not. If the server supports the DLINE command, you can do /dline
ipmask :reason.

* * *

## V. Why Operators (Usually) Don't Get Involved In Channel Affairs

The primary function of opers is to maintain the servers and the network, not
to deal with channels. The main reason the general policy is for opers not to
get involved is because it is frequently difficult to determine who really
should be controlling a channel. There are a lot of deceitful users out there
that will ask you to help them get their channel back when it is not their
channel in the first place. Even if you do know who the regular ops are, oper
involvement is questioned and challenged, so many opers will ignore channel
issues entirely just to save the grief.

In practice, you'll find opers defend their own channels, and turn their backs
on others. It's a little pathetic, but after you get harassed enough by users
saying "why are you getting involved? I thought opers weren't supposed to get
involved in channel affairs" you'll start to understand the cynicism.

* * *

## VI. Dealing with "How Does One Become an IRC Operator?"

Most users have no comprehension of what opering involves, and really have no
place becoming one. This does not mean, however, that they deserve an abusive
answer or to be blown off when asking how to become an operator. It's easy to
set up a simple alias to provide an automated response to this question.

For example, use an alias like "Becoming an IRC Operator requires not only a
strong working knowledge of IRC and this IRC network, but also a working
relationship with hub admins and other opers. Opers are selected when there is
a need, and never given based on who is asking for it."

The thing to remember is that there are always going to be more people that
want to be an operator than there are openings. If you really want to help the
network, the best way to do it is by answering new user questions on channels
like #irchelp and #help.

* * *

## VII. IRCD and Associated Files

IRCD is the server daemon process. The large IRC networks will only allow
unix-based servers, because they are the only ones proven to perform
adequately on a large network (and because the current set of operators are
mostly unix bigots... including myself to some degree). EFnet uses
modifications of the 2.8.2 version; IRCnet uses modification of the 2.9.x
versions.

The installed file structure varies from server to server, but you should have
at least these two primary files:

    
    
    	ircd			the IRC server daemon (main program)
    	ircd.conf		the server configuration file
    

The configuration file has various configuration items in it, which are in a
format beginning with a letter and a colon. This file is read and processed
backwards, so when you do STATS commands (described later), you'll see the
information in the reverse order of the entries in ircd.conf. This file has
the following configuration lines in it:

A:Company/Institute Name:Server Description:Admin Name <email@address.com>

    This configures the administrative functionality of the server, which is returned when a user does /admin on your server. The fields are completely up to the administrator of the server, but what I put above seems fairly standard. This is a mandatory field.

B:hostmask::nick::

    This line indicates a permitted bot. The server has built-in bot checking for certain known instances of bots, and will refuse the connection if it detects one. If the bot has this line in the config file, the server will not refuse the connection.

C:server hostname:password:server name:port:connection class

N:server hostname:password:server name:hostmask:connection class

    C/N-lines are connections to other servers. The C-line defines what servers your server can connect to, and the N-line defines what servers your server allows incoming connections from. I have never seen one without the other, and according to the sample ircd.conf, they must be used in pairs. The server hostname, password, and servername are fairly self explanatory. The port is used to identify which port your server will try to connect to automatically; if the port field is blank, your server will not automatically attempt to connect to that server. I have never seen the hostmask used (nor do I really understand what it does). The connection class is numeric, and defined in the Y-lines.

D:ipmask:reason:

    This line is used to ban a block of IP addresses. If a system administrator has control over several domains, he/she may attempt to avoid bans by changing the reverse DNS lookup on the host (a perfect example of this is smartec.com, who has several domains and several machines all on one Class C). With a D:line, you can ban 205.230.73.* (smartec) and nobody from that address space can connect, regardless of DNS lookup.

E:hostmask::username

    The E-line protects certain users from server bans (K-lines). Generally operators use them to protect themselves from accidental K-lines, but in some cases, a server run by an ISP will also use them to protect their customers.

H:remote servers permitted::hub server

    This defines a hub server, which is a server that may have other servers connected behind it. The "remote servers permitted" is usually "*" or may have a hostmask to limit the remote connected servers to within that mask.

I:address mask:password:domain mask::connection class

    I-lines define what clients are allowed to connect to your server. Additionally, they define what connection class (defined by Y-lines) the client is placed in. The password is usually left blank.

K:hostmask:time:username

    Most people already know what a K-line is, but for the record, it's simply a ban from the server. I have never seen a K:line with a time field, but it allows you to define what times a client is allowed on the server. Generally, K-lines are added with the KLINE command on the server, and the reason is stored as a comment in the config file.

L:restricted servers::connected server:depth

    This is used to identify leaf depth behind a server. The restricted servers field is a hostmask for what servers to not allow behind the connected server (usually this is blank). The depth is what depth of servers may be connected behind it.

M:hostname:*:server description:default port

    This line sets the basic information for your server. The fields are pretty self-explanatory. This is a mandatory field.

N: <see C:>

O:ident@hostname:password:nickname:connection class

o:ident@hostname:password:nickname:connection class

    These lines define the operators on the server. The lower case o-line identifies a local operator, who can do local server KILLs and KLINE, as well as SQUIT and CONNECT their server from/to an uplink server. The upper case O-line is a global operator, who can additionally do global KILLs (killing users off other servers) and SQUIT and CONNECT any server on the network. The connection class is as specified in the Y-lines.

P:hostmask:::port

    These are the ports that your server listens for connections on (in addition to the default port set in the M-line). The hostmask is an optional field that allows you to specify which users may connect to that port.

Q::reason:server

    The Q-line specifies a server that will not be allowed to link to the network at all (all servers must have identical Q-lines according to the sample config file). I have never seen this used.

R:hostmask:program path:username

    Allows you to process access control through an external program (provided by the server admin). Whenever a client connects, the server calls this external program with the user information. The program then responds based on whether or not the user should be granted access to the server. I've never seen this used either, and is probably impractical for any server with a large client base.

Y:class id:ping frequency:connect frequency:max connections:max sendq

    The Y-line defines a connection class. The class id is a number that identifies the class, and is used in I-lines and C/N-lines to identify which Y-line to use. The ping frequency is the time (in seconds) between ping requests (to verify that the connection is still alive). Connect frequency is the time between automatic connection attempts for server connections (should be zero for client connection classes). Max connections is self explanatory. The "sendq" is the amount of data (in bytes) that is allowed to be pending going out to a connection in that class before the server will close it (with a message such as "Sendq exceeded").  
On the 2.9.x versions of ircd, the connect frequency is replaced with an
identifier to handle cloning. If it is a positive number, it identifies how
many clients can connect from the same hostmask. If negative, it identifies
how many clients can connect from the same username@hostmask.

I would recommend reading the example.conf file in the ircd distribution. It
has samples of most of these, as well as descriptions that are probably better
than mine.

* * *

## VIII. Server Information Commands (TRACE, STATS, LINKS, and HTM)

There are a few commands that you can use to get information from a server to
help with opering:

TRACE [server|nick]

    The TRACE command is used to trace the path from your current server to the specified server or user.

When the destination is a server, TRACE will also return information about
current server and operator connections, incoming connections (with negative
class numbers), and the number of users in each class. The oper connections
contain the connection class, the nickname, and user@hostmask for the oper.
For server connections, it shows the connection class, the number of servers
behind it (followed by "S"), the number of clients on and behind it (followed
by "C"), the server name, and what was responsible for connecting it.

When the destination is a user, TRACE shows the connection class, nickname and
user@hostmask for that user.

STATS [letter]

    The STATS command returns server information. These tend to vary by server version, and are sometimes case sensitive. Here are a few that I know or use regularly:
    
    
    	?	Server connection statistics
    	b	B-lines
    	c	C/N-lines
    	d	D-lines
    	e	E-lines
    	h	H/L-lines
    	i	I-lines
    	k	K-lines
    	l	Data transfer statistics by connection
    		The numeric fields are as follows:
    			sendQ (outgoing message queue)
    			sendM (protocol messages sent)
    			sendK (total kilobytes sent)
    			receiveM (protocol messages received)
    			receiveK (total kilobytes received)
    			time in seconds since the connection was created
    	L	Same as STATS l, except shows IP address instead of host
    	m	Command statistics
    	o	O/o-lines
    	p	Current opers online
    	t	General server statistics
    	u	Server uptime
    	v	Server link information
    	y	Y-lines
    	z	More server statistics
    

If you are not currently an oper, I don't recommend going through and testing
these all at once. Multiple STATS requests are usually viewed as a threat to
the server (some people have been known to flood a server with STATS requests
to fill up the server's sendq and cause network splits).

LINKS [server mask]

    This shows the structure of the irc network, and is a bit useless if you don't have a script or client that formats it for you. Each line contains the server name, its uplink name, the number of hops from your server to the server, and the server description.

HTM

    The HTM command is used to view and set the high-transfer mode threshold. Additionally, it shows the incoming data rate, which is useful when monitoring how you are doing when relinking to the network.

* * *

## IX. Server Routing and Connectivity

I'll qualify this section by saying that I am not presently a hub operator,
and have done very little in the way of connecting and disconnecting remote
server connections. However, I have researched this quite a bit.

For my description, let's assume a network that looks something like this:

    
    
    		A-----B----C----D
    		      |         |
    		E-----F         G----H
    		|     |         |
    		I     J----K    L----M
    

Usually when there is a problem, you first notice it by the decrease in
response time from other users. Then you try pinging a few users and notice
that ping times are outrangeously high. Usually with a channel-wide ping and
LINKS, you can identify where the problem connection is. Assuming you are on
server A, you notice ping times are fine up to server C, but everything from D
and beyond is lagged. The first thing you do is a STATS l on server C (/stats
l irc.c.com) to see what the outgoing sendq is to server D. Looking at just
the server entry for server D, it might look like this:

211 irc.d.com[123.231.132.213] 1621588 9780 559 469469 24111 5862

The sendq is the first number after the IP address, or 1621588 in this case.
If we do a STATS y on server C (/stats y irc.c.com), we can see what the max
sendq allowed is. Look for the connection class with something aside from 0 in
the connect frequency field (600 in this case):

218 Y:0:120:600:10:4000000

So if that number reaches 4000000, server C will disconnect server D, and
you'll see everyone on the other side quit with the message "*** Quit: nick
(irc.c.com irc.d.com)" or whatever.

Now, if you were on server L, you would do STATS l on server D (/stats l
irc.d.com) and look for the entry for server C. In this scenerio, you might
see

211 irc.c.com[132.213.123.231] 142 8841 512 485915 21058 1234

Since the sendq going from irc.d.com to irc.c.com is only 142 bytes, it looks
like a one-way lag situation (server irc.d.com is having trouble receiving
data from irc.c.com).

Let's say you continue to monitor the sendq from irc.d.com to irc.c.com (with
/stats l irc.d.com from your position on server A), and it rises from the
previous 1621588 bytes to 3140419 bytes. You could wait it out and see if it
splits or catches back up, but we'll decide to reroute it now instead.

Before you do anything, you have your clone over on server L do a STATS c on
server D (/stats c irc.d.com) to see where it can reconnect to. Let's say an
alernative link is server F. You now have a place to put it, but then you need
to find a port. From your client on server L, you do a STATS l on server D
(/stats l irc.d.com) and look at what ports it has open. Here's a couple of
STATS l response lines that we are interested in:

    
    
    	211 irc.d.com  0 30844455 1978134 15372958 794195 156641 156641 -
    	211 irc.d.com[@*@*.6665]  0 702234 48662 118794 5963 156641 156641 -
    	211 irc.d.com[@*@*.6666]  0 1750847 130878 547336 22204 156641 156641 -
    	211 irc.d.com[@*@*.6668]  0 568644 38618 100102 4626 156641 156641 -
    	211 irc.d.com[@*@*.6669]  0 701079 48973 121065 5271 156641 156641 -
    

The first line is the default port (6667), and looks like it's been pretty
busy, so let's use port 6665 to relink on instead.

Now, we want to disconnect server D from server C, and then tell server F to
connect to server D on port 6665. We will do all this from server A. We start
with the SQUIT command, which has the following format:

SQUIT server :reason

So we do this:

/squit irc.d.com :reroute

At this point, it's a good idea to wait a minute for the servers to process
the change, and then we can relink using CONNECT, with the following format:

CONNECT server port link_server

So we do this:

/connect irc.d.com 6665 irc.f.com

You can monitor the reconnect status with STATS l on irc.f.com, though in most
cases, a good connect will take less than a minute.

If you are opering from a leaf server (like I do now), then you will generally
only SQUIT and CONNECT locally to your uplink. So you have the following
network:

    
    
    	A----B----C
    	          |
    	     D----E
    

And you are on server A, with real lag to the network, then you can reroute
yourself to server D with:

    
    
    	/squit irc.b.com :reroute
    	/connect irc.d.com [port]
    

My previous discussion should carry over to help with evaluation of the
connection between server A and server B.

One last issue regarding server connectivity is "juping". When a server is
having problems or has been compromised, and an admin for the server is not
available, the server can be prevented from relinking by putting a fake server
connection to the network in its place. When the server attempts to link, the
network sees it as already being connected and rejects the server connection.

* * *

## X. Other Server Commands (REHASH, RESTART, and DIE)

These are a few commands you won't use often unless you are responsible for
administration of the server or need to handle an emergency.

REHASH

    The REHASH command simply tells the server to reload its configuration file. This must be done for changes to ircd.conf to take effect.

RESTART

    This command completely shuts down the server and restarts it. All connections will be closed (including yours).

DIE

    This shuts the server down. Generally this is done when restarting the system the server is running on.

* * *

## XI. Operator Communications (WALLOPS and OPERWALL)

The WALLOPS (and OPERWALL) command is used to send a broadcast message to all
operators across the network. Oper wallops were originally publically visible
and intended to be used for disaster announcements and the like, but have been
abused to the point where now they are operator only.

The format for both commands are:

> WALLOPS :message text

OPERWALL :message text

When you do a remote CONNECT or SQUIT, the server sends out an automatic
WALLOPS announcing your action.

* * *

## XII. Linking New Servers

Everyone seems to want to link a new server, mostly because of the ego boost
of being a server admin on a large irc network, and occasionally because they
want to provide it as a service to a customer base.

These are some of the issues that face new servers:

Link Speed

    The minimum link speed to get a link is usually T1 (1.544 mbps) to a major backbone provider. Even this is often considered inadequate.

Server Requirements

    The server must be running some flavor of Unix. Unix was designed around networking and generally can handle far more than other operating systems can. Whether this is true or not isn't the issue - it's completely based on the opinions of existing hub admins (which I happen to agree with on this issue).

The ircd process generally can take between 30 and 60 megs of memory when
running on EFnet, so 64 megs is probably the minimum there. No other real
processes should be running on the machine.

Existing IRC Users

    To get a link, you should probably be averaging about 30 users at any given time from your domain. This can vary, and may not be a serious requirement if you have excellent connectivity.

Operators

    Your list of potential operators can affect your ability to link. If you have known abusers as operators on your server, you probably won't get a link.

Politics

    What it all really comes down to is whether or not you know and are liked by the hub admins. If they don't like you, I'd recommend pursuing golf as a hobby instead. :)

* * *

## XIII. Attitude and Perspective

The fact is, this is IRC. It's a chat network - a social gathering. Don't
build your self image based on what other people think of you, on or off IRC.
If you come on IRC because it's more important to you than blood, you should
probably invest some money in counseling. Don't get all emotional over what
happens on here.

* * *

I hope that this document has helped someone out there. I wrote it to appeal
to the average user, not to other operators. If you can think of anything more
I should cover, or if you want to send me hatemail (or maybe even a nice
comment), please feel free.

**Aaron Brinton**  
former [EFnet](http://www.efnet.org/) Operator (irc.ionet.net, irc.uci.edu)

Special thanks to **Ruth Mullen** for many suggestions and saving me from some
grossly embarrassing grammatical mistakes. :)

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

