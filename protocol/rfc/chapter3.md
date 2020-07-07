---
title: RFC1459
author: 'J. Oikarinen, D. Reed'
datecreated: May 1993
layout: default
license: rfc
---
HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 3. IRC Concepts.
{:#c3}

This section is devoted to describing the actual concepts behind the
organization of the IRC protocol and how the current implementations deliver
different classes of messages.

    
    
    
                              1--\
                                  A        D---4
                              2--/ \      /
                                    B----C
                                   /      \
                                  3        E
    
       Servers: A, B, C, D, E         Clients: 1, 2, 3, 4
    
                        [ Fig. 2. Sample small IRC network ]
    

## 3.1 One-to-one communication
{:#c3_1}

Communication on a one-to-one basis is usually only performed by clients,
since most server-server traffic is not a result of servers talking only to
each other. To provide a secure means for clients to talk to each other, it is
required that all servers be able to send a message in exactly one direction
along the spanning tree in order to reach any client. The path of a message
being delivered is the shortest path between any two points on the spanning
tree.

The following examples all refer to Figure 2 above.

Example 1:

    A message between clients 1 and 2 is only seen by server A, which sends it straight to client 2.
Example 2:

    A message between clients 1 and 3 is seen by servers A & B, and client 3. No other clients or servers are allowed see the message.
Example 3:

    A message between clients 2 and 4 is seen by servers A, B, C & D and client 4 only.

## 3.2 One-to-many
{:#c3_2}

    The main goal of IRC is to provide a forum which allows easy and efficient conferencing (one to many conversations). IRC offers several means to achieve this, each serving its own purpose.

### 3.2.1 To a list
{:#c3_2_1}

The least efficient style of one-to-many conversation is through clients
talking to a 'list' of users. How this is done is almost self explanatory: the
client gives a list of destinations to which the message is to be delivered
and the server breaks it up and dispatches a separate copy of the message to
each given destination. This isn't as efficient as using a group since the
destination list is broken up and the dispatch sent without checking to make
sure duplicates aren't sent down each path.

### 3.2.2 To a group (channel)
{:#c3_2_2}

In IRC the channel has a role equivalent to that of the multicast group; their
existence is dynamic (coming and going as people join and leave channels) and
the actual conversation carried out on a channel is only sent to servers which
are supporting users on a given channel. If there are multiple users on a
server in the same channel, the message text is sent only once to that server
and then sent to each client on the channel. This action is then repeated for
each client-server combination until the original message has fanned out and
reached each member of the channel.

The following examples all refer to Figure 2.

Example 4:

Any channel with 1 client in it. Messages to the channel go to the server and
then nowhere else.

Example 5:

2 clients in a channel. All messages traverse a path as if they were private
messages between the two clients outside a channel.

Example 6:

Clients 1, 2 and 3 in a channel. All messages to the channel are sent to all
clients and only those servers which must be traversed by the message if it
were a private message to a single client. If client 1 sends a message, it
goes back to client 2 and then via server B to client 3.

### 3.2.3 To a host/server mask
{:#c3_2_3}

To provide IRC operators with some mechanism to send messages to a large body
of related users, host and server mask messages are provided. These messages
are sent to users whose host or server information match that of the mask. The
messages are only sent to locations where users are, in a fashion similar to
that of channels.

## 3.3 One-to-all
{:#c3_3}

The one-to-all type of message is better described as a broadcast message,
sent to all clients or servers or both. On a large network of users and
servers, a single message can result in a lot of traffic being sent over the
network in an effort to reach all of the desired destinations.

For some messages, there is no option but to broadcast it to all servers so
that the state information held by each server is reasonably consistent
between servers.

### 3.3.1 Client-to-Client
{:#c3_3_1}

There is no class of message which, from a single message, results in a
message being sent to every other client.

### 3.3.2 Client-to-Server
{:#c3_3_2}

Most of the commands which result in a change of state information (such as
channel membership, channel mode, user status, etc) must be sent to all
servers by default, and this distribution may not be changed by the client.

### 3.3.3 Server-to-Server.
{:#c3_3_3}

While most messages between servers are distributed to all 'other' servers,
this is only required for any message that affects either a user, channel or
server. Since these are the basic items found in IRC, nearly all messages
originating from a server are broadcast to all other connected servers.

* * *

[<](chapter2.html)
[T](rfc.html)
[>](chapter4.html)
