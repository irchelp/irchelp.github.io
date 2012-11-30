HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 1. Introduction

The IRC (Internet Relay Chat) protocol has been designed over a number of
years for use with text based conferencing. This document describes the
current IRC protocol.

The IRC protocol has been developed on systems using the TCP/IP network
protocol, although there is no requirement that this remain the only sphere in
which it operates.

IRC itself is a teleconferencing system, which (through the use of the client-
server model) is well-suited to running on many machines in a distributed
fashion. A typical setup involves a single process (the server) forming a
central point for clients (or other servers) to connect to, performing the
required message delivery/multiplexing and other functions.

## 1.1 Servers

The server forms the backbone of IRC, providing a point to which clients may
connect to to talk to each other, and a point for other servers to connect to,
forming an IRC network. The only network configuration allowed for IRC servers
is that of a spanning tree [see Fig. 1] where each server acts as a central
node for the rest of the net it sees.

    
    
                               [ Server 15 ]  [ Server 13 ] [ Server 14]
                                     /                \         /
                                    /                  \       /
            [ Server 11 ] ------ [ Server 1 ]       [ Server 12]
                                  /        \          /
                                 /          \        /
                      [ Server 2 ]          [ Server 3 ]
                        /       \                      \
                       /         \                      \
               [ Server 4 ]    [ Server 5 ]         [ Server 6 ]
                /    |    \                           /
               /     |     \                         /
              /      |      \____                   /
             /       |           \                 /
     [ Server 7 ] [ Server 8 ] [ Server 9 ]   [ Server 10 ]
    
                                      :
                                   [ etc. ]
                                      :
    
                     [ Fig. 1. Format of IRC server network ]
    

## 1.2 Clients

A client is anything connecting to a server that is not another server. Each
client is distinguished from other clients by a unique nickname having a
maximum length of nine (9) characters. See the protocol grammar rules for what
may and may not be used in a nickname. In addition to the nickname, all
servers must have the following information about all clients: the real name
of the host that the client is running on, the username of the client on that
host, and the server to which the client is connected.

### 1.2.1 Operators

To allow a reasonable amount of order to be kept within the IRC network, a
special class of clients (operators) is allowed to perform general maintenance
functions on the network. Although the powers granted to an operator can be
considered as 'dangerous', they are nonetheless required. Operators should be
able to perform basic network tasks such as disconnecting and reconnecting
servers as needed to prevent long-term use of bad network routing. In
recognition of this need, the protocol discussed herein provides for operators
only to be able to perform such functions. See sections
[4.1.7](chapter4.html#c4_1_7) (SQUIT) and [4.3.5](chapter4.html#c4_3_5)
(CONNECT).

A more controversial power of operators is the ability to remove a user from
the connected network by 'force', i.e. operators are able to close the
connection between any client and server. The justification for this is
delicate since its abuse is both destructive and annoying. For further details
on this type of action, see section [4.6.1](chapter4.html#c4_6_1) (KILL).

## 1.3 Channels

A channel is a named group of one or more clients which will all receive
messages addressed to that channel. The channel is created implicitly when the
first client joins it, and the channel ceases to exist when the last client
leaves it. While channel exists, any client can reference the channel using
the name of the channel.

Channels names are strings (beginning with a '&' or '#' character) of length
up to 200 characters. Apart from the the requirement that the first character
being either '&' or '#'; the only restriction on a channel name is that it may
not contain any spaces (' '), a control G (^G or ASCII 7), or a comma (','
which is used as a list item separator by the protocol).

There are two types of channels allowed by this protocol. One is a distributed
channel which is known to all the servers that are connected to the network.
These channels are marked by the first character being a only clients on the
server where it exists may join it. These are distinguished by a leading '&'
character. On top of these two types, there are the various channel modes
available to alter the characteristics of individual channels. See section
[4.2.3](chapter4.html#c4_2_3) (MODE command) for more details on this.

To create a new channel or become part of an existing channel, a user is
required to JOIN the channel. If the channel doesn't exist prior to joining,
the channel is created and the creating user becomes a channel operator. If
the channel already exists, whether or not your request to JOIN that channel
is honoured depends on the current modes of the channel. For example, if the
channel is invite-only, (+i), then you may only join if invited. As part of
the protocol, a user may be a part of several channels at once, but a limit of
ten (10) channels is recommended as being ample for both experienced and
novice users. See section [8.13](chapter8.html#c8_13) for more information on
this.

If the IRC network becomes disjoint because of a split between two servers,
the channel on each side is only composed of those clients which are connected
to servers on the respective sides of the split, possibly ceasing to exist on
one side of the split. When the split is healed, the connecting servers
announce to each other who they think is in each channel and the mode of that
channel. If the channel exists on both sides, the JOINs and MODEs are
interpreted in an inclusive manner so that both sides of the new connection
will agree about which clients are in the channel and what modes the channel
has.

### 1.3.1 Channel Operators

The channel operator (also referred to as a "chop" or "chanop") on a given
channel is considered to 'own' that channel. In recognition of this status,
channel operators are endowed with certain powers which enable them to keep
control and some sort of sanity in their channel. As an owner of a channel, a
channel operator is not required to have reasons for their actions, although
if their actions are generally antisocial or otherwise abusive, it might be
reasonable to ask an IRC operator to intervene, or for the usersjust leave and
go elsewhere and form their own channel.

The commands which may only be used by channel operators are:

KICK

    - Eject a client from the channel
MODE

    - Change the channel's mode
INVITE

    - Invite a client to an invite-only channel (mode +i)
TOPIC

    - Change the channel topic in a mode +t channel

A channel operator is identified by the '@' symbol next to their nickname
whenever it is associated with a channel (ie replies to the NAMES, WHO and
WHOIS commands).

* * *

[<](rfc.html)

[^](rfc.html)

[>](chapter2.html)

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

