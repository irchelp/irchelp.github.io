---
datecreated: 08 May 2013
dateupdated: 08 May 2013
author: Moritz Wilhelmy
summary: Information about IRCnet as a network
title: IRCnet
---
# IRCNet

Split from EFNet in the mid 1990s, IRCNet shares the claim with EFNet to being
the oldest IRC network.

Please look at a [server overview][servers] if you want to connect to the network.

It is peculiar in that

* Like EFNet, IRCnet has no centralised network administration and is hence one
  of the more structurally chaotical networks. Nickname and Channel registration
  are not available, which means that several channels run a bot (often an
  eggdrop) to take care of identifying operators and similar channel affairs at
  a local level. However, unlike EFnet, the disorganisation is so systematical
  that there isn't even a central website.

* Because there is no cabal, rules differ from server to server. You often find
  that different servers allow a different amount of connections per subnet or
  IP. Please make sure to read the Message of the Day (MOTD) of the particular
  server you are connected to. Some servers even run semi-official websites.
  Among the more important ones are the "all servers" list hosted by TU Ilmenau
  (a technical University in Germany) and the CGI:IRC hosted by XS4ALL (a big
  dutch hosting provider).

* Unlike EFnet's CHANFIX service, which re-ops people on a channel after all ops
  have been lost, IRCnet does not have such a functionality, therefore, a
  big channel that has lost all ops is more likely a lost cause. If you run an
  IRCnet channel, you will want to prevent this by keeping enough ops around (be
  careful with the people you choose). However, there is a [re-op mode][mode-R]
  (and in `!channel`s, there is even more fine-grained re-op control) to ensure
  that someone can possibly reclaim the channel after all ops have been lost.
  You may want to test this feature thoroughly before relying on it in a channel
  you care about.

* Although one of the largest networks, it is based on a country based network
  architecture, i.e. aside from the open servers, clients can only connect to
  servers in their specific country. Other servers will most likely refuse their
  connections.

* IRCnet these days runs the ircd 2.11 server, which is still heavily based on
  the original ircd code from 1989, for instance the syntax of the configuration
  files has never changed.

* While most other IRC servers are based more or less strictly on 
  [RFC 1459][rfc1459], IRCnet is based on [RFC 2810][rfc2810],
  [RFC 2811][rfc2811], [RFC 2812][rfc2812] and [RFC 2813][rfc2813].
  These are extensions to the original RFC 1459 written by Christophe Kalt, who
  was an IRCnet operator between the middle of the 90s to the early 2000's and
  also wrote much if not most of the ircd 2.10 code, and which to this day still
  apply to IRCnet as the only major network.
  Since both EFnet and IRCnet claimed to be the "original" genuine IRC network
  (IRCnet was linked to the finnish part of the original network after all, from
  which the IRC server implementation at that time stemmed),
  each decided they were in charge of advancing the IRC protocol by making more
  or less incompatible changes. On IRCnet, this resulted for instance on the
  `!channels` and `+channels` which were never introduced on the other networks
  and ircd implementations. This is also the reason why every network has a
  different meaning for some channel and user modes. However, the user visible
  parts of these RFCs are mostly compatible, therefore any client should also be
  able to connect to IRCnet.


For some of the reasons listed above, in particular the antique code base,
IRCnet is sometimes regarded as a bit old-fashioned network.


[rfc1459]: http://tools.ietf.org/html/rfc1459
[rfc2810]: http://tools.ietf.org/html/rfc2810
[rfc2811]: http://tools.ietf.org/html/rfc2811
[rfc2812]: http://tools.ietf.org/html/rfc2812
[rfc2813]: http://tools.ietf.org/html/rfc2813
[servers]: servers/ircnet.html
[mode-R]:  http://42.pl/ircd/R.txt
