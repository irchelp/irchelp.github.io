---
title: The Channel Timestamp (TS) Zero Problem
author: Joseph Lo
layout: default
redirect_from:
  - /irchelp/ircd/ts0.md
---

# The Channel Timestamp (TS) Zero Problem

by Joseph Lo aka Jolo, last updated Aug 6, 2002

''Note'': TS0 has largely disappeared from IRC networks, with the last major
network where it commonly appeared (EFNet) being updated several years ago
with protocol changes which automatically updated TS0 channels to have a valid,
current timestamp. The TS0 problem, is thus, a relic of thie past, and this document is largely
historic.

# Summary
A timestamp of 0 on a network implementing the *timestamp protocol* was once
commonplace in the years following the introduction of channel timestamps. 0
in this case, representing a null value - the channel never had a timestamp.

TS0 channels adhered to pre-timestamp behavior for channel collisions - meaning,
they were exempt from TS rules, and users could still ride into these channels
with ops after a split.

Most channels were recreated shortly after the introduction of TS on EFNet and
other networks in order to establish TS protection, but it still persisted on
a few EFNet channels as a sort of badge of honor or status symbol, most notably,
the #twilight_zone channel, which was nominally an IRC Operator only channel dating
back to the earliest days of EFNet and IRC.

Because of the inherent insecurity of TS0 channels, TS0 was largely a curiosity
within a short time after timestamp was fully implemented, but resurfaced on a
few occasions over the years as a result of hacked servers. These days,
the server-to-server protocol of most networks has been updated, and a TS0 channel
will be automatically corrected to a valid timestamp, so TS0 channels are no
longer possible on modern networks.


## What is a TS?

On EFnet, every channel has a timestamp or TS, which is the date and time that
the channel was most recently created. Think of it as the channel birthday.
The TS is very important to your channel's security. When servers split and
rejoin, they use the channel TS on both sides of the split to resolve any
conflicting channel modes, including who was originally an op.

Consider the common scenario where server X splits due to some networking
problems. Server X temporarily becomes a separate IRC network of its own. If
nobody on your channel happened to be on server X before the split, then your
channel will no longer exist there. From the point of view of server X,
everybody on your channel just /quit all at once. Anybody on server X can then
just /join your channel and recreate it from scratch, thus getting channel
ops. (Most EFnet servers should prevent this now, but glitches are always
possible.) When server X rejoins the rest of the network, whichever side with
the older TS is considered the original one, and the modes are synchronized
back to the way they were. In our example, the servers would fix things on the
newer channel by removing ops from any new ops and undoing any other mode
changes set on server X. Everything then goes on normally.

If somebody in your channel was on server X during the split, your channel
stays open. When the two sides rejoin, the two TS's are the same, so there is
no problem. This is a good reason to spread your ops around on as many
different servers as possible.

## What is the TS 0 problem?

Many years ago, before the current TS protocol was implemented, most channels
had a TS of 0 (zero), which was the default value. (Zero is the beginning of
time essentially, which for IRC servers running UNIX operating systems, is
defined to be 00:00:00 GMT, January 1, 1970.) If a split channel rejoins and
both sides have TS of 0, both sides are just as authoritative, so in the above
example, no ops would be deoped. It was thus fairly easy for somebody to take
over a channel by "riding a split". Fortunately this ended with the
implementation of TS, until now.

Twice in March 2001, crackers ("hackers") were able to link a bogus EFnet
server into the network. They manipulated the TS on that server and reset it
back to 0. The older TS always wins, and there is nothing older than the
beginning of time itself. So when the hacked server was linked in, many
channels had their TS reset from their legitimate creation dates all the way
back to 0. This made them vulnerable to takeovers using the aforementioned
split-riding technique.

## How do I tell if my channel TS was reset to 0?

On most clients, you can check your TS with the command `/mode #channelname`,
which should show your channel's current modes and when it was created. The
result may be shown on your status screen, console window, etc. For example:


        /mode #irchelp
        *** Mode for channel #irchelp is "+tnl 25"
        *** #irchelp - created Sat Mar 24 03:56:59 2001

If the year is 1969 or 1970, then TS has been set back to 0 (it may be
slightly different due to time zones). AFAIK older versions of mIRC does not
show the TS if it is 0, so if you see your channel's modes but no date, you
have a problem. When in doubt, ask somebody not using mIRC to check for you.

## How do I fix the TS 0 problem?

The **only** way to fix this is to "cycle" your channel: clear everybody out
and recreate it from scratch. The TS will then be set to the current time and
you'll be safe. The danger of course is that whoever gets back in first is the
new owner of the channel, so you need to maximize the chances that it's one of
your ops. Here's the recommended way to do this.

  1. Wait until things are pretty quiet such as at night, and arrange to have a few experienced ops to help. You don't want to do this while a lot of visitors are coming and going.
  2. Make sure there are no splits in progress. Use `/lusers` to see if all 40 or so servers are linked. Use `/ping #channelname` to see if anybody is lagging and thus likely to split soon. If you proceed during a split, this will either not work, or you may even lose your channel!
  3. Set `/mode #channelname +i` (invite only) to deter new vistors and auto-rejoining clients.
  4. Get people to leave the channel and to stay away for at least 15 minutes, by asking nicely first, then by kicking if necessary.
  5. When you are down to just the few experienced ops who are awake and each have one client left, wait a few minutes more. You can optionally go -i for a minute to see if anybody else is trying to sneak in.
  6. If you use channel maintenance bots which know how to auto-cycle the channel, get all but one bot out. Make sure the bot's owner is around in case you need manual intervention. Then everybody should just leave and not rejoin for a minute to let the bot have time to cycle the channel.
  7. If you don't use bots, just cycle the channel the old fashioned way. When you think the coast is clear, on the count of 3, all of you should leave and immediately try to rejoin the channel. By making it a race, you improve the chances that one of you is the winner instead of some outsider. It doesn't matter which of you wins.
  8. The winner re-distributes ops carefully to other authorized people. Don't forget to reset channel modes including topic, bans, etc.

If you're not sure you can handle it, seek help with #irchelp. Be sure the
person you talk to is an op (@ by their nick) before trusting them.

## Will this happen again?

Who knows. We are always only as safe as our weakest link. Just be vigilant
and keep an eye out on your channel TS, and reset it if necessary. If you are
experienced with IRC bots or scripting, it is a good idea to have some
automated means of checking all ops to make sure they belong to your
authorized ops list. It takes considerable IRC experience and resources to
maintain a channel, so good luck. If you don't feel up to the task, there's
always DALnet. :-)
