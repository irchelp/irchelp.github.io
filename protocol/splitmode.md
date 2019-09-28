---
title: Split Mode
author: Stephanie Daugherty
license: CC-BY-SA-4
layout: default
redirect_from:
  - /irchelp/protocol/splitmode.html
---

# Split Mode

Split mode is a feature originally added in ircd-hybrid, and also present in
many forks including ircd-ratbox and charybdis.

It is similar in purpose to IRCNet's [Channel Delay](/protocol/ndcd.html),
but not in the details of its operation.

Split mode was introduced originally to deal with a loophole in the TS3 protocol
which was then in use on EFNet and many other networks. Opless channels were
considered a special case under TS3 - to prevent a situation where a channel
could be indefinitely opless, the rules of the TS protocol were reversed when
the side with the older TS was opless - meaning that the side with newer TS kept
its modes, and TS was fast-forwarded to the newer TS, allowing a user to ride
into an opless channel with ops.

While this was originally seen as a necessary feature, it created a situation where
splits were actually desirable - and by the late 90s, botnets had created the potential
to make splits happen via debilitating Distributed Denial of Service (DDoS) attacks
against servers.

Split mode was effectively a bandage over the problem, rather than a permanent
solution. By preventing users from creating channels during a netsplit, users could
could no longer exploit netsplits to retake channels, and by preventing them
from joining channels at all during a split, they could no longer use a split
to bypass restrictive modes such as bans, limits, key, or invite only. This
effectively made splits worthless to users.

Users prohibited from joining a channel because of split-mode receive the
437 numeric (ERR_UNAVAILRESOURCE), usually with a message of Nick/channel is
temporarily unavailable. This is the same error as produced by Channel Delay.

The TS5 revision of the protocol closed the opless channel loophole, however
the use of a split to join a channel against its restrictive modes remains possible,
so split mode is still used by some networks and servers.

Split mode is a compile-time option, the parameters of which can be tuned by the server
configuration or during operation by sufficiently privileged local IRC Operators.

An enabled server can choose one of two variation:
* NO_JOIN_ON_SPLIT - channels cannot be joined at all while the server is in split-mode
* NO_CREATE_ON_SPLIT - channels cannot be created while the server is in split-mode

Split mode is controlled by two "split thresholds", one for the number of users on
the network, and one for the number of servers on the network. Default values
of these parameters are set in the ircd.conf, and they may be adjusted via
settable parameters with the SET command by an IRC operator.

Generally, split thresholds are set slightly below the normal operating condition
of the network, to avoid false positives, and so that split mode isn't inadvertently
left active for an extended period of time because of one or two missing servers -
if the network normally has 40 servers and doesn't drop below 20000 users, a
might be set to 35 servers and 18000 users as its thresholds.

If the server sees less than the split threshold of linked servers or global
users, it enters split mode. Split mode can also be forced on or off by an
IRC Operator in the case of malfunction.

IRC Operators were ordinarily exempted from these protections, allowing them
to exploit network splits to recover opless channels on behalf of users, or
to gather intel on locked down channels.

Split mode is considered complementary to TS protections, rather than an alternative to
them as IRCNet's [Nick and Channel Delay](/protocol/ndcd.html)

While TS5 removed the opless channel loophole, a side benefit of split mode remains:
users can't take advantage of a split to join a channel from which the modes of
the channel would otherwise prohibit them from joining.
