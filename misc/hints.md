---
title: Hints for better IRC usage
layout: default
author: Vegard Engen
redirect_from:
  - /irchelp/misc/hints.html
---

# Hints for better IRC usage.

**Ed. note:** This is a must-read for anybody suffering from the frustrations of a takeover. It is mirrored with permission from the original by Vegard Engen, an IRC administrator. We combined 4 small files into this 1 file for your convenience, and added a few minor updates. For more related information, see also our guide to [logging and reporting IRC abuse](/irchelp/misc/irclog.html). -Jolo

* * *

This page was started on a day that I'd used another 15 minutes to explain to
a takeover-victim one of the issues here. I can not count the numer of times
I've explained these issues to people. So, I decided from now on, I'd respond
with an URL instead. It saves me time, and in addition, I can refine it, and
also incorporate ideas from other people. So, if you have any ideas or
improvements that is in the spirit of these pages, please mail me at
<Vegard.Engen@uninett.no>.

And, please - point other people to these pages, this puts load off us poor
overworked IRC-operators.

## How to help yourself on IRC.

There is a lot you can do yourself to make better use of IRC. You do not need
to get help from an IRC-operator everytime you have a problem. Below is a
collection of technical and social hints that you can make use of.

  * What to do when your channel is taken over.
  * Modeless channels.(only on IRCnet as far as I know)
  * I want to create a bot for my channel, how do I do it?

* * *

## 1. How to deal with channel takeovers in a good way.

People. I have the foolproof way to deal with channel takeovers. And guess
what? I'll share it with you, completely for free.

Let's say your channel is named #foo. It's a nice and quiet channel. Suddenly,
someone comes in and does a takeover. What do you do?

Now, let me first come up with an analogy: Say you are sitting in a cafeteria.
You rise to go to the bar and buy a cup of coffee. When you come back, someone
has taken your table. You kindly ask him to move. He won't move. Now, what do
you do?

There are two strategies: You call for the waiter, and ask him to remove that
person, or you sit down at the next table, who is also free. Now, which is the
easiest? Of course to move to the next free table.

In IRC, this completely similar to moving to a different channel. And guess
what? There isn't any limited number of channels, you can create a new one
just as you need it.

The problem with this is that you have to make sure that every regular knows
where/how to find people if the channel is taken over. This can be a little
difficult, so this is something you'll have to plan. I will give you some
ideas, though.

The simple thing is to just move to #foo2. Many people will be clever enough
to look for you there if the channel is taken over, other will find you or
other regulars and send a private message to ask where you are. Some users
will struggle a little, some will perhaps not find it this time, but will only
find it when you have eventually gotten back the original #foo. Because you
will, no channel takeovers last forever. But in the process, they will have
learnt something, and next time they will find the channel much easier. And,
they will have learnt something they can use for other channels too.

Another possibility is to make a web page, describing the backup channel
strategy. This way, you don't have to name the channel #foo2, you could just
as easily name it #bar. And this way, persistent troublemakers will not so
easily guess what your backup channel is. Of course, you should make your
channel secret (+s) or private (+p), this way they can't find it.

So, to sum it up, what I'm saing is this: Make your channel independent of the
channel name, and your life on IRC will be much more enjoyable. Following my
scheme, the evil channel hackers can never take your channel, they can only
take one of the channel names used for the channel. You will finally have WON
over the channel hackers!

[ Return to top ]

* * *

## 2. Using modeless channels.

Another way to avoid your channel being taken over is to use a modeless
channels. They are just like normal channels, but there can be no modes on
them. Modeless channels can thus not be locked up or taken over, as there is
no chops on modeless channel. You make your channel modeless by naming it +foo
instead of #foo. There is no way to make a channel with modes modeless or vice
versa, because it's hardcoded in the name.

Of course, you can not ban troublemakers either when you're on a modeless
channel. But, perhaps if everyone installs good floodprotection, and ignore
troublemakers, it's possible to live with? One could give it a try...

Modeless channels only exists on IRCnet yet, as far as I know. If anyone else
know of other (major) networks they exist, let me know.

[ Return to top ]

* * *

## 3. Bots, what are they?

### Or how I run a channel

Bots are just small computer programs that connect to the IRC-server, just
like you would use a program to connect to the IRC-server. The difference is,
with bots it's all automated, with normal clients, you will use commands to
decide what to do on IRC.

Bots are in general something not everyone needs. Many people think that they
need a bot to take care of their channel. Fact is, they usually don't. Most
often, they need knowledge, and bots can not replace knowledge.

The best way to take care of a channel without bots, are:

  * Never give op to anyone you don't trust.
  * Acknowledge the fact that when there aren't people on the channel, the channel does not need to exist. Channels were never meant to be static.
  * If your channel gets taken over, either because you were sloppy with whom you gave op to, because someone abused IRC to get ops on the channel, or because someone created the channel when you were not on it, just create a new one with a similar name.  Read also the session above on takeovers for some good advices on what do in case of takeovers, and how to make sure you and the regulars of the channel are prepared in case a takeover happens. Remember, bots can not not replace knowledge. Knowledge are better than bots.

[ Return to top ]

Vegard Engen, Vegard.Engen@uninett.no
