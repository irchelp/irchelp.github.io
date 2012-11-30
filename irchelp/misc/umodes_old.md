### User modes for the major networks

It's been a long time since there was a single type of server used by all
servers. Since then, the various networks have all continued to develop their
own independently of the other. User modes are one of the things affected by
this all but the most standard (i, o and w) have the same function on all
networks. Each network has also added a set of modes unique to that particular
network. This also goes for smaller networks which usually base their ircds on
one of those used by the major networks but often diverge and add modes of
their own or change the behaviour of existing ones.

These user modes are supported by the latest server versions. Older versions
may be missing one or two modes or have a different implementation for some.
User modes which may be set only by IRC operators are marked with an asterisk.
Others will let themselves be set by all users but will return very little
information for a non-operator. Apologies to the folks whose browsers don't
support tables correctly - this was the only easy way of giving a comparative
overview. I hope to present an alternative when I have time to.

The list is based on the following versions which were the newest as of
September 1998:

EFnet: 2.8/hybrid-5.3

IRCnet: 2.10.0

DALnet: 4.6.7.DreamForge

Undernet: u2.10.04

* * *

Major network user modes v0.1, 19 Sep 98

By Alex Charalabidis (Apatrix)

Original version at [http://apatrix.asu.net/irc/docs/umodes.html](http://apatr
ix.asu.net/irc/docs/umodes.html)

* * *

Overview of user modes for the major IRC networks

Mode

EFnet

IRCnet

DALnet

Undernet

a

n/a

Indicates /away status

* Indicates active service administrator status
n/a

b

n/a

n/a

* Receive "chatops" from operators
n/a

c

* Monitor client connects and disconnects
n/a

* Monitor client connects and disconnects
n/a

d

* Monitor server debug notices
n/a

n/a

Do not receive messages directed at the channel

f

* Receive notifications about full I: lines
n/a

* Receive flood notices
n/a

g

n/a

n/a

Receive "globops" notices from servers, Services and operators

Receive "HACK" wallops

h

n/a

n/a

* Receive help notices and requests from users, servers, Services and operators
n/a

i

Invisibility to /WHO and /NAMES scans unless performed by a user on the same
channel

k

Receive KILL notices

n/a

Receive KILL notices

Special mode for channel service bots

n

* Monitor client nickname changes
n/a

n/a

n/a

o

Indicates active IRC operator status

r

Monitor client rejection notices

Restricted. User may not use channel op commands. Cannot be reversed

n/a

n/a

s

Receive server notices

n/a

Receive server notices

w

Receive server wallops

Receive operator wallops

Receive server and operator wallops

y

* Monitor certain server commands sent by users
n/a

n/a

n/a

z

* Receive operator wallops
n/a

n/a

n/a

A

n/a

n/a

* Indicates active server admin status
n/a

O

n/a

* Indicates active local operator status
n/a

R

n/a

n/a

Marked available but not implemented

n/a

Thanks to prysm (EFnet) and Dakal (DALnet) for some of the information
provided.

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

