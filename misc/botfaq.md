---
title: IRC Bot FAQ
author: Black Nemesis, TheRose, DiverGuy, Joseph Lo (jolo)
layout: default
redirect_from:
  - /irchelp/misc/botfaq.html
---
# Frequently Asked Questions about IRC bot, Internet Relay Chat roBOTs

Originally written mostly by Nemesis][ - (Black Nemesis), with a little help
from TheRose

(this classic FAQ dates back to the early 90s; that old version is available
[here](botfaq-orig.html) for historical purposes)

revised June 2003 by DiverGuy@EFnet with a little help from Jolo@EFnet

**Hint: This is an advanced subject. If you are looking for a quick bot,
without being willing to take the time to learn, then you might as well stop
reading now. Bots are NOT an item for the novice and require lots of patience
and effort to properly set up and maintain.**

## Table of Contents

  * (1) What exactly is an IRC bot?
  * (2) What uses are there for bots?
  * (3) How can I tell if a person on IRC is not a person but is a bot?
  * (4) Do I need a bot to run my own channel?
  * (5) How do I get my own bot?

* * *

## (1) What exactly is an IRC bot?

An IRC BOT is like a roBOT. It is a computer program that logs onto IRC and
does things automatically, based upon its programming. Technically, any script
or client which has automatic responses could be classified as a bot, even
your IRC client such as mIRC for Windows. Although the most commonly accepted
definition of an IRC bot is "an unmanned chat-client which idles on a channel
and responds automatically to predefined events".

A group of bots which are linked together is called a network or botnet. Bots
are linked into botnets for several reasons, such as sharing common user lists
and channel settings (who to op, who to ban, etc.), as well as to provide a
method to simultaneously control several bots. Botnets also provide an
internal chat network similar to, but independent of, IRC. Bot users DCC chat
or telnet into a bot and then can have conversations with other bot users on
the same botnet, and not have to worry about server lag or splits.

Although most bots are written and designed for peaceful purposes, there have
been bots written and/or linked with malicious intent. These malicious bots,
sometimes called war-bots, can nick-collide (to claim a specific desired
nickname or just to disconnect somebody), flood channels or other users, or be
used for channel takeovers. These malicious bots and misconfigured peaceful
bots have historically given bots a bad reputation.

Because of this reputation, many IRC servers have banned bots completely.
Others have a loosely enforced a no-bot policy which will tolerate peaceful
bots but "k-line" or ban misconfigured or abusive bots. Do not be suprised to
find that your bot is banned from a server, due to someone else's abusive bot
which uses the same shell provider (a special kind of ISP that provides bot
services).

If you are considering using an IRC bot, **please** realize that this is a
**very** technical subject. As hard as it is for most newbies to accept, we
strongly encourage you to learn how to use IRC first, then after a few months
or longer, start to consider running a channel, and only then investigate
getting your own bot. Running bots should **not** be attempted by the novice
IRC user and, as a newbie, your new channel won't be ready for a bot right
away anyway. Likewise, trusting someone else to run your bot, whom you don't
know very well, is about as smart as letting someone that you don't know take
your boy/girlfriend out on a date.

Keep in mind, an improperly configured bot will do more harm to your channel
than it will help, and many channel takeovers are the direct result of poorly
configured bots. In other words, if you run a bot before you are ready,
instead of making your channel safer, you could actually mess it up.

The most common bot, written in the C programming language, is called an
[eggdrop](http://www.egghelp.org/whatis.htm) and runs as a background task on
a UNIX [shell](http://www.egghelp.org/shell.htm), taking advantage of the
robust and stable Unix operating system, high-bandwidth, and 24/7 connection.

A Windows version of the eggdrop, known as windrop, is available from [
Windrop Central](http://windrop.cjb.net/). Please note, there is little or no
benefit to running a Windows-based bot for channel control and stability. Any
Windows-based IRC program, no matter if it's mIRC or some fancy bot, is just
as likely to crash or get disconnected. Those problems you see (ping timeouts,
connection reset by peer, etc.) are due to instability of Windows itself or
your home-based internet connection. So instead of running a Windows bot, you
might as well just leave your mIRC idling 24/7, and perhaps configure it with
simple scripts such as this `chan_op.mrc`. You
might think some weak protection is better than none at all, but not if it
lulls you into a false sense of security.

Other bots are just elaborate scripts, written for specific IRC clients such
as [ircII](../script/) or [mIRC](../mirc/) and require a specific chat client
to run and connect to IRC. In other words, if you have a 24/7 connection and
you run a script that give ops, kicks for flood, etc., you are performing the
role of a bot.

## (2) What uses are there for bots?

Bots were invented to solve several problems which plagued the original IRC
users, including establishing and maintaining channel ownership, fending off
hostile takeovers during the once feared 'netsplits', and preventing or
reducing the effects of flooders.

Some [networks](../networks/) have now established SERVICES for channel and
nick registration, which elimiate the need for a bot to hold open a channel.
Other networks have implemented channel synch, which prevents people from
'hacking' ops on a channel during a netsplit. One network, EFnet, has
installed a pseudo-service called [CHANFIX](/ircd/chanfix/) which keeps
track of ownership without requiring channel registration.

Due to the active effort of the IRC administrators, the original need for bots
has been greatly reduced and perhaps eliminated. However, as IRC has evolved
so have bots. While most of the original reasons for bots have been
eliminated, new scripts have been written and bots are now doing a host of
other things including: keeping track of the last time a user was seen or
spoke in a channel, offering trivia games, and providing weather reports and
other information such as stock quotes. The uses for bots are limited only by
your imagination.

Another use for bots is to act as [file servers](../security/warez.html) for
peer-to-peer sharing of files over the IRC network. While this is not in
keeping with the original concept and spirit of IRC, it is one branch of
evolution which IRC has taken.

## (3) How can I tell if someone on IRC isn't a person but is really a bot?

Generally bots are quiet, except for when a) someone makes them do or say
something or b) something occurs that make the bot react.

An example of this is when someone floods a channel and then is promptly
kicked out of the channel and possibly banned as well. You may have seen this
happen and thought "Wow! that was a fast kick!" It was probably a bot kick,
scripted to automatically protect the channel against flooding.

If you see that the same nick is always setting mode +o or kicking people, but
you never see this person talking, chances are you have discovered a channel
bot.

Two other things to look for are the words "bot" or "srv" in the nickname or
user name. You can get the username by typing `/whois <nick>`. Also look in
the username field for a bot command in parentheses. An example of a bot could
be:



     #junk   JunkyBot   H@   cszvb1@120.23.77.4 (/msg JunkyBot Hello)
     #idiots IdiotSrv   H@   rzx14g@mindless.nut.org (/msg IdiotSrv Help)


## (4) Do I need a bot to run my own channel?

If the network you are on supports services, then they will ensure you own
your channel even if you are not there 24/7 and you don't need bots at all.
However, many networks, such as EFnet and IRCnet, have no services and it then
becomes your job to hold your channel for yourself. You can do this by keeping
it occupied with people or bots that you trust. For more information, see [Why
EFnet/IRCnet has no registration services?](../networks/noserv.html).

The short answer is, if you need bots to hold your channel open, then you
don't have enough active people to run a successful channel anyway. After all,
why would someone come to your channel if it only has bots hanging around and
holding it open? On the other hand, if you have a medium to large channel and
want to make sure that nobody accidently manually ops the wrong person, then
using a bot for password-ops might be just the thing you need.

Please don't be offended when we say that 99% of IRC users lack the
combination of experience, resources, and patience needed to run a successful
channel. Simply having a bot will NOT solve this problem, nor will it make
your channel successful. Fortunately there are already hundreds of thousands
of larger, established [channels](../chanlist/) on hundreds of networks.
You'll have more fun and make more friends by chatting on those channels. Then
maybe one day when you have at least 10 real live people, not bots, who have
24/7 connections and some IRC experience, you can all band together and start
your own new channel. If you really want to learn how to run a stable,
successful channel, please study the very detailed [The New IRC Channel
Operator's Guide](/faq/changuide.html).

## (5) How do I get my own bot?

Not discouraged? You still want to get your own bot after reading the above?
Then, before you get started, you must take several things into consideration.

### a) You need a suitable host/computer, from which you can run your bot.

If your host/computer isn't stable, your bot won't be stable. If your bot
isn't stable, your channel won't be stable.

Many people attempt to run a bot on their student account which prohibits
bots. So, the bot gets killed by other students or by an administrator. Such
kills result in an unstable bot that, for all practical purposes, is useless
to your channel and will quite possibly cause a conflict between you and your
admin. You're far better off renting a
[shell](http://www.egghelp.org/shell.htm) and running your bot from there.

### b) You need to locate a suitable server that will allow your bot to
connect.

This requires reading the Message Of The Day (`/MOTD`) for every server on
which you wish to run your bot. As we said above, many servers do not allow
bots. In fact, most servers have a no-bot policy published in their MOTD. If
you ignore these "NO BOTS" warnings, you may quickly find yourself, your bot
or your entire host/domain k-lined (banned) from that server. Getting your
entire host/domain in trouble could cause your ISP to cancel your service.

Also, if you are using a UNIX based bot, you should check the MOTD on your
shell. Many shells have a list of approved servers. Running bots on non-
approved servers is often grounds to have your account cancelled.

Just this section alone should show you how difficult and complex being a bot
owner can be. You MUST follow the rules, and finding out what the rules are is
entirely YOUR responsibility as a bot owner.

### c) You must select (or write) a bot program, compile it, configure it and
run it.

There are several types of bots available. Which bot you choose will depend on
which host you have chosen. To take advantage of the robustness of a UNIX
shell, you must know at least a little bit about UNIX. It's not rocket
science, but it is different from Windows and will take some learning. If the
following section sounds like tech jargon, then that's a strong hint that you
are not yet ready to run a bot.

Some common bots are: [ Eggdrop](http://www.egghelp.org/),
[EnergyMech](http://www.energymech.net/), ComBot, and VladBot just to name a
few.

Most bot programs come in packages that are fairly easy to install if one has
a basic understanding of the language it is written in. Some bots come pre-
compiled and ready to run. Many are set up simply by customizing various
configuration files. Be sure to read the documentation that comes with your
bot. If you are not willing to read the documentation, you have probably
chosen the wrong bot.

Some bots need to be compiled. Most of the time a bot will compile fine; but
differences in systems might require you to make changes directly in the code
or the 'make' file in order to get your bot up and running. This, also, will
require some basic understanding of the programming language, logic the
program uses and basics about the operating system environment.

Hopefully by now you should realize that being a bot-owner is not a simple
thing.

Once you have everything configured and compiled, it is time to start your
bot. If everything has gone well, your bot will pop onto IRC in the channel(s)
you have selected. Be sure that you have configured your bot to join **only
your channels**, and make absolutely sure your bot is not going to any
channels where it is not welcome.

Besides servers, many channels have a no-bot policy. Nobody likes an uninvited
guest, especially a misconfigured bot. If you upset people on other channels,
then your channel and bot become a target for attack. If that happens, you
risk losing your shell, your bot and possibly losing your channel. DO NOT put
your bot where it is not welcome.

At this point, if you didn't carefully and completely edit your config files,
you need to fine tune the bot. If you are placing the bot in a channel with
other bots, you must take care that the bots don't "fight" with each other.

An example of "fighting" bots is when someone is actively being opped by one
bot while another is actively deopping him. Another example is when 2 or more
bots are "locking" different channel modes. When bots disagree on channel
settings, it results in a bot-war and a flood of mode changes which makes the
channel unstable and unusuable for chatting. It also gives bots a bad name.

**CAUTION: NEVER download a bot or bot-code from an UNKNOWN source. The
possibility of backdoors planted into unknown bots is HIGH. We also STRONGLY
RECOMMEND that you are familiar with the language in which your bot is
written.**

**A [backdoor/trojan](../security/trojan.html) could allow someone to enter your
bot or your account and take it over without your even knowing it occurred.
You will suddenly find that your password has been changed and can't get into
your own account or your own channel. "Don't download or install ANYTHING
until you know what it does." ALWAYS look before you load. This applies not
only to bot programs, but to script files as well.**

Not as simple as you thought 'eh? Good Luck, and Happy IRC'ing.

Another classic help page on this subject is the [bot FAQ](bot_faq.htm)
archived from ircworks.com.
