---
title: New IrcNet Channel Modes and Other Changes in 2.10
author: Thoman Kuiper (engerim)
layout: default
redirect_from:
  - /irchelp/ircd/ircnet210.html
---

# New IRCNet Channel Modes and Other Changes

by Thomas 'Engerim' Kuiper

January 26, 1999

In late 1998, a new version 2.10.x of the IRCnet ircd server code was
released, replacing the 2.9.x version. As of the date above about half of the
servers have upgraded. Here we have a very detailed view of the new channel
modes (+e, +I, +O, +r), the !channel type, and a few other miscellaneous
changes.

## +e

This mode stands for ban exception, so that a specific subset of the banned
mask can still join. For example, to ban all users from example.org except for
the user using "test" as his username/ident:



        /mode #foo +b *!*@example.org
        /mode #foo +e *!test@example.org


Disadvantage of this new Mode: Many scripts and bots kick users from a channel
if they match a +b mask. They _don't_ care about the new mode +e yet. If you
choose to use the +e feature, you should deactivate such functions of your
script or bot. Why? The kicked user can still rejoin because he matches the +e
mask. If he has autorejoin turned on, he gets kicked, rejoins, kicked, etc.
Another disadvantage is that these modes are not exchanged if between two
2.10.x servers are linked via a 2.9.x server, resulting in two +e masks on
each 2.10.x server.

## +I

If +I (notice the upper case "I for India") is set on a specific channel, all
users from the matching mask can join the channel even if its +i (invite
only), without getting invited. This is very intresting if you need a very
secure, secret channel. And if you like to manage that without getting invited
by a bot, script, or channel operator.

## !channels and +O, +r

The !channel is an "uncollideable channel" to avoid problems arising from
people trying to exploit server splits to takeover channels. It also prevents
the problem where if you try to rejoin your own channel during a split, during
the first 15 minutes or so you run into "Nick/channel temporarily unavailable"
errors.

Each !channel gets a unique name on your server. To create the equivalent of
#test as an "uncollideable channel", you would you would type:



        /join !!test        (Note 2 exclamation marks.)


The The unique ID could be !42AQWtest for example. If you were the first to
try to /join !!test, you as the first user get the +O mode (uppercase "O for
Oscar") denoting you as a "channel master". On some clients you will see
yourself with the the modes +oO.

If you now type /join !!test from another 2.10.x server currently linked, you
will get the following error message:

Duplicate : !!channels recipients. Join aborted.

This means the channel was already requested. In this case we can only join it
by using the uncollideable name via:



        /join !42AQWtest     (Note 1 exclamation mark.)


If someone on a split server tries to /join !!test, it gets another unique ID
like !hjzittest so there will be no collision when the server rejoins.

With the +O channel master status (which can't be given away to others or
taken from you) its possible to set the new +r mode (reoping, which doesnt
seem to work on the latest 2.10.1), or remove it (in general this should only
be done on channel creation). With this new +r mode, if no operators are on
the channel, a random user gets them. I don't suggest using this new mode,
because the operators are choosen by a random server. (Note to the ircd
developers, this reoping should not prefer clones.)

A !channel can split too. It has a delay of 60 minutes (versus 15 minutes on
#channels), before you can recreate that channel again (via /join !!test).
Another big difference between !channels and #channels is, that you can rejoin
them on a split as long as the channel modes allow this. But you won't become
a channel op.

Some clients (especially mIRC) have trouble joining such channels, because
they try to join a #!#test channel for example. This is true of mIRC 5.5, the
latest version as of the date above. It does work fine with ircII and other
compatible clients.

Disadvantage of this new !channels: It's confusing and terrible to handle.
Currently you shouldnt use them, because users of 2.9.x servers can't join
them. But you can test if your client is able to handle it.

## Miscellaneous Other Changes

If the channel limit (for example +l 10) is reached, users can stil get in
there by getting invited (/invite #name "nick")

Users who are banned (but not kicked) can only talk if they are voiced (+v) or
if they are a channel operator (+o). Also they can override a ban, by being
invited.

There are some newer changes not covered in this file at [Christophe Kalt's
page on Stealth](http://www.stealth.net/%7Ekalt/irc/210.html).

## Is my server 2.10.x?

Type /quote version in your client to get the server version.

Example of 2.9.x server: `2.9.5+Cr15e1+Fl4. irc.u-net.com AaeEfFHiIkMprRuY$`

Example of 2.10.x server: `2.10.0p5+Cr22e1+FL4f1.: irc.vsp.cz AaeEfijJKMRtuZ`
