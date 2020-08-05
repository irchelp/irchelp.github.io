---
title: EFnet Server Map
author: random-irchelper
status: historical
layout: default
---
# EFnet Server Map

## What is a server map?

EFnet is a large IRC network with approximately 50 servers connected
together in a branching tree configuration. You should use a server that
allows you to connect and which is low in "lag", the delay between when
you say something and when your friends see it. To help you do so, we
compiled the following text graphics representation of how EFnet servers
are linked together.

## How do I find servers on my own?

Due to the dynamic nature of IRC, servers come and go all the time.
Server lists like mIRC's [built-in
list](http://www.mirc.co.uk/servers.ini) are a good sample
representation of many different networks, but they tend to be horribly
out of date. Even our own frequently updated [server list](servers/) is
obsolete as soon as it is taken, so you really should learn how to find
servers on your own. For a current list of servers and how they are
linked, use the /links command within your IRC client. You can search
for partial server names, such as /links \*.ca for Canadian servers or
/links \*aol\* for the AOL server (asterisks mean "match anything
here"). Go easy on /links - don't do more than one per minute or so or
you may get in trouble (it's a long story - let's just say some people
abuse /links to cause problems). Anyway, you will get lines of output
like this, one for each server currently on that network:  

    *** irc.visi.com      ircd.concentric.net  3 Rockin' Snowland Server
    *** elk.iSTAR.ca      irc.ais.net          2 iSTAR's Canadian IRC Server

If you're just looking for new servers to use, look at the first column
(in this case *irc.visi.com* and *elk.iSTAR.ca*). The other columns are
the upstream server providing the link to the rest of the network, the
number of "hops" or intermediate servers between you and that server,
and a verbal description.

## How do I find a *good* server?

Beyond some commonsense, trial and error is the only way to see if a
server is good for you, that is whether it will let you connect and with
low lag. Pick servers that are near you geographically as a start, i.e.
if you're in the U.S. don't try to use a .fr server in France (it
probably won't let you on anyway, giving you a "no authorization"
error). Connect to the server address by using the */server* command,
such as /server irc.whatever.com. If it won't let you connect, try a
different server or use a different port number than 6667, such as 6666.

Once you are connected, use *ping* to test your lag, the roundtrip delay
between when you say something and when others acutally see it. You can
ping your friend by /ping nickname or you can join a medium-size channel
such as \#IRChelp and ping everybody on the channel by /ping
\#channelname. If most people respond within a few seconds, then you
know you're not lagged. If on the other hand you don't get any responses
back, it's time to try another server.

## EFnet Server Map

The following linkage map is arbitrarily drawn from one server as an
origin. The number at the beginning of each row is the number of *hops*
or intermediate servers between that server and the origin server. In
general, the more hops between you and the server your friends are on,
the more lagged you will appear. Some server names are shown with
asterisks, such as \*.umn.edu. Use /links \*.umn.edu to get the exact
server name.

If you are using [ircII](/clients/unix/ircii/), you can use the included
"imap" script to make your own linkage maps just like below.

    Updated: Sat Oct 31 17:54
    
    *** Displaying map from irc.ais.net
    
    0   irc.ais.net
    1   `-*.concentric.net 1
    2   | `-efnet.demon.co.uk 2
    3   | | `-irc.nijenrode.nl 3
    2   | `-irc.best.net 2
    3   | | `-*.au 3
    3   | | `-*.c-com.net 3
    3   | | `-*.stanford.edu 3
    3   | | `-*.umn.edu 3
    3   | | `-irc-w.primenet.com 3
    4   | | | `-*.sprynet.com 4
    4   | | | `-irc.anet-stl.com 4
    4   | | | `-irc.pacbell.net 4
    4   | | | `-irc.prison.net 4
    3   | | `-irc.exodus.net 3
    4   | | | `-irc-e.primenet.com 4
    5   | | | | `-efnet.matrix.com.br 5
    5   | | | | `-irc.lightning.net 5
    6   | | | |   `-irc.inter.net.il 6
    6   | | | |   `-irc02.irc.aol.com 6
    4   | | | `-irc.ced.chalmers.se 4
    4   | | | `-irc.df.lth.se 4
    5   | | | | `-efnet.telia.no 5
    6   | | | | | `-efnet.cs.hut.fi 6
    5   | | | | `-irc.homelien.no 5
    4   | | | `-irc.frontiernet.net 4
    4   | | | `-irc.psinet.com 4
    4   | | | `-irc.total.net 4
    5   | | | | `-irc.idirect.ca 5
    5   | | | | `-irc.magic.ca 5
    6   | | | | | `-irc.mbnet.mb.ca 6
    5   | | | | `-irc.mlink.net 5
    5   | | | | `-irc.nbnet.nb.ca 5
    6   | | | | | `-irc.powersurfr.com 6
    5   | | | | `-irc.rift.com 5
    4   | | | `-irc2.exodus.net 4
    3   | | `-ircd.idworld.net 3
    2   | `-irc.colorado.edu 2
    2   | `-irc.cs.cmu.edu 2
    2   | `-irc.home.com 2
    2   | `-irc.mindspring.com 2
    2   | `-ircd2.netcom.com 2
    3   | | `-irc2-1.netcom.com 3
    3   | | `-irc2-2.netcom.com 3
    3   | | `-ircd.netcom.com 3
    4   | |   `-irc-1.netcom.com 4
    4   | |   `-irc-2.netcom.com 4
    2   | `-services.us 2
    1   `-*.umich.edu 1
    1   `-irc.emory.edu 1
    1   `-irc.mcs.net 1

