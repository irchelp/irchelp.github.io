---
title: user modes for the major irc networks
author: Apatrix (EFnet,IRCnet) with contributions from Toyota (EFnet), prysm(EFnet), Dakal (DALnet), MHz (EFnet,DALnet), Jupiter (EFnet), jilles (EFnet), and others
layout: default
---

# User modes for the major networks

partial update Mar 5, 2005

By Apatrix (EFnet,IRCnet) with contributions from Toyota (EFnet), prysm
(EFnet), Dakal (DALnet), MHz (EFnet,DALnet), Jupiter (EFnet), jilles (EFnet),
and others

Looking for information on channel modes instead? The ones which are common to
all networks are explained in the [IRC Tutorial](../irctutorial.html) and the
[New IRC Channel Operator's Guide](../changuide.html).

It's been a long time since there was a single type of server used by all
servers. Since then, the various networks have all continued to develop their
own independently of the others. User modes are one of the things affected by
this. The most standard (i, o and w) have the same function on all networks.
Each network has also added a set of modes unique to that particular network.
This also goes for smaller networks which usually base their ircds on one of
those used by the major networks but often diverge and add modes of their own
or change the behaviour of existing ones.

These user modes are supported by the server versions current as of the date
shown below. Older versions may be missing one or two modes or have a
different implementation for some. User modes which may be set only by IRC
operators are marked with an asterisk. Others will let themselves be set by
all users but will return very little information for a non-IRC operator.

The list is based on the following versions which were current as of the date
above:

EFnet: hybrid or ratbox

IRCnet: 2.10.3

DALnet: bahamut 1.4.3

Undernet: u2.10.10

* * *

Note that DALnet has their own help guide for [DALnet channel and user
modes](http://help.dal.net/docs/modes.html).

Overview of user modes for the major IRC networks

Mode

EFnet

IRCnet

[DALnet](http://help.dal.net/docs/modes.html)

Undernet

a

* Indicates server administrator
Indicates /away status

* Indicates server administrator
n/a

b

* Monitor floodbot notices
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

*
Do not receive messages directed at the channel

e

n/a

n/a

* Monitor DCC sends of possibly malicious files
n/a

f

* Monitor Full I:line notices
n/a

* Receive flood notices
n/a

g

["Caller ID" message
blocking](http://www.efnet.org/?module=docs&doc=14&type=text)

n/a

Receive "globops" notices from servers, Services and operators

Receive "HACK" wallops

h

n/a

n/a

* Shows operator in /stats p
n/a

i

Invisibility to /WHO and /NAMES scans unless performed by a user on the same
channel

k

* Monitor server kill notices
n/a

Receive KILL notices

Special mode for channel service bots

l

* Monitor oper locops
n/a

n/a

n/a

m

n/a

n/a

* Monitor notices about possible spambots
n/a

n

* Monitor local nickname changes
n/a

Receive routing notices

n/a

o

Indicates active IRC operator status

r

* Monitor "rejected" client notices
Restricted. User may not use channel op commands. Cannot be reversed

Monitor client rejection notices

n/a

s

* Monitor generic server messages and oper kills
n/a

Receive server notices

u

* Monitor unauthorized client connections
n/a

n/a

n/a

w

* Receive server wallops
Receive operator wallops

Receive server and operator wallops

x

* Monitor server split/intro notices
n/a

n/a

n/a

y

* Monitor links/stats/etc notices
n/a

*
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

C

* like +c but more complete and machine-parsable
n/a

n/a

n/a

O

* Indicates active local operator status
n/a

n/a

R

n/a

Receive /msg only from registered users to deter spam

n/a

Z

* Monitor operspy notices
n/a

n/a

n/a

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)
