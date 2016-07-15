---
title: Restrictions on IRC Clients
author: Stephanie Daugherty
layout: default
---

# Restrictions on IRC Clients

IRC came about at a time when the internet was still largely an academic network.
The culture of the internet at the time was much more open, with security
and privacy being at most an afterthought.

The first IRC servers offered a great deal of transparency, and a number of
commands and features exist in the IRC protocol which are now heavily restricted
on many networks.

A complete list of these restrictions is impossible, as they are ever evolving in
response to new forms of abuse.

## Command Throttling
Many commands in the IRC protocol are now subject to throttling by the server
to prevent them from being used too frequently. Commands which produce a lot of
output are typically the most heavily restricted - MOTD, LINKS, TRACE, NAMES, and
WHO are all commonly affected by rate limits.

## High traffic mode (HTM)
High traffic mode, or simply HTM, is similar in purpose to command throttling,
but rather than throttling individual users, HTM is designed to be automatically
activated and deactivated when the server crosses a threshold of network traffic.

HTM can activate routinely as a result of a netburst (the process of resyncing the
network that happens when a netsplit heals), or it can activate because of a coordinated
attack on the server.

While HTM is active, most commands that trigger large responses from the server,
such as LINKS, MOTD, and the like, are all disabled for ordinary users. This
aggressive measure hopefully allows the server the opportunity to recover without
adverse impact on connection stability, and is meant to be a temporary, automated
measure.

## Information Hiding
More than a decade passed during which IRC servers on almost every network of any
importance was targeted by DDoS attacks. Often these attacks were retaliation
against servers for the actions of their IRC Operators, but they also happened
sometimes with little apparent cause.

Frequently these attacks would be targeted in order to cause the maximum possible
disruption to the network, by crippling important hub servers. As a result, many
networks began to require that information that was once freely available be
hidden.

Information about the network topography was one of the most logical areas to
restrict - commands like LINKS and MAP are frequently modified to either return
no information, return a "flattened" list of servers without information on how
they are interconnected, direct clients to an webpage with network information, or
even restricting these commands to IRC Operators only.

The capability to mask IP addresses for servers also came bout in this era, with
the introduction of the "hidden hub", hub servers which would accept no clients,
have hidden IP addresses, and have no valid DNS information. As such, the IP address
and sometimes even the geographic location of certain servers could be kept completely
secret - in many cases even from IRC operators.

Host address masking for at least some users was also introduced in this era of constant
network attacks. The connection lines in the server configuration for certain users,
usually IRC operators, were routinely masked, with fake hostnames displayed for these
users.  Some networks chose to extend these protections to all users in some form or another,
with partial masking frequently being automatically applied to all users.

## Spam Prevention
Aggressive restrictions have also been applied in the fight against IRC spambotd.
Clients which join and leave a large number of channels quickly are subject to throttling
or automated banning on many servers.

A new protection feature, called "target change restriction" was also introduced.
Target change protection works by the server caching a list of the nicknames a Client
has recently sent messages to. This list has a limited number of entries, and when
the list becomes full, new "targets" are not allowed for a period of time - after
which the oldest target can be replaced by a new target. Though this seems somewhat
convoluted, it's actually transparent to most users, and highly effective at
disrupting spambots, as they cannot efficiently operate under the restrictions.
