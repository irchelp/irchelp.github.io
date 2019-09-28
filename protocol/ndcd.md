---
title: Nick and Channel delays
author: Stephanie Daugherty
layout: default
license: CC-BY-SA-4
redirect_from:
  - /irchelp/protocol/ndcd.html
---

# Nick And Channel Delays

# IRCNet
IRCD 2.9 and later (Ircnet's continued development of the original IRCD)
use a "delay" mechanism to prevent colliding of nicknames and channels during
netsplits, rather than the more familiar timestamp mechanism in use within
most other IRCDs.

Delays are a minimum of 15 minutes from the time the nickname or channel was
first "lost" in a split.

If a nickname or channel is unavailable due to delay, users will receive a
437 (ERR_UNAVAILRESOURCE) numeric, with a message that "Nick/channel is temporarily unavailable"

## Nicknames
Nicknames are locked if they are "lost" from the network as a result of a network
split. They will also be locked if killed by an operator, or by a collision.

*Note:* 2.11 added UIDs - users are no longer killed in a nickname collision,
instead they will revert to their globally unique ID.

## Channels
Channels are locked when they become empty as a result of, or during a split.
If the split ends, or the delay period expires, they are unlocked.

# Weaknesses
* Collisions may still be exploited as a result of splits lasting longer than the
delay period.
* Nickname collisions are still possible if two users change to a nickname before the change can be fully propagated.
* Opless channels tend to remain permanently opless.

# Related Extensions
* [Split Mode](/protocol/splitmode.html) - a feature where channels can't be created (or in some cases joined at all) during a split.
