Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

HTML layout by Tatu J. Lund Apr 1997

# 9. Current problems

There are a number of recognized problems with this protocol, all of which
hope to be solved sometime in the near future during its rewrite. Currently,
work is underway to find working solutions to these problems.

## 9.1 Scalability

It is widely recognized that this protocol does not scale sufficiently well
when used in a large arena. The main problem comes from the requirement that
all servers know about all other servers and users and that information
regarding them be updated as soon as it changes. It is also desirable to keep
the number of servers low so that the path length between any two points is
kept minimal and the spanning tree as strongly branched as possible.

## 9.2 Labels

The current IRC protocol has 3 types of labels: the nickname, the channel name
and the server name. Each of the three types has its own domain and no
duplicates are allowed inside that domain. Currently, it is possible for users
to pick the label for any of the three, resulting in collisions. It is widely
recognized that this needs reworking, with a plan for unique names for
channels and nicks that don't collide being desirable as well as a solution
allowing a cyclic tree.

### 9.2.1 Nicknames

The idea of the nickname on IRC is very convenient for users to use when
talking to each other outside of a channel, but there is only a finite
nickname space and being what they are, its not uncommon for several people to
want to use the same nick. If a nickname is chosen by two people using this
protocol, either one will not succeed or both will removed by use of KILL
([4.6.1](chapter4.html#c4_6_1)).

### 9.2.2 Channels

The current channel layout requires that all servers know about all channels,
their inhabitants and properties. Besides not scaling well, the issue of
privacy is also a concern. A collision of channels is treated as an inclusive
event (both people who create the new channel are considered to be members of
it) rather than an exclusive one such as used to solve nickname collisions.

### 9.2.3 Servers

Although the number of servers is usually small relative to the number of
users and channels, they two currently required to be known globally, either
each one separately or hidden behind a mask.

### 9.3 Algorithms

In some places within the server code, it has not been possible to avoid N^2
algorithms such as checking the channel list of a set of clients.

In current server versions, there are no database consistency checks, each
server assumes that a neighbouring server is correct. This opens the door to
large problems if a connecting server is buggy or otherwise tries to introduce
contradictions to the existing net.

Currently, because of the lack of unique internal and global labels, there are
a multitude of race conditions that exist. These race conditions generally
arise from the problem of it taking time for messages to traverse and effect
the IRC network. Even by changing to unique labels, there are problems with
channel-related commands being disrupted.

* * *

[<](chapter8.html)

[^](rfc.html)

[>](chapter10.html)
