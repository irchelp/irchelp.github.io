---
title: Specialized Clients - Bots, Bouncers, and everything else.
author: Stephanie Daugherty
summary: Information on special-purpose IRC clients, such as bots and bouncers.
layout: default
license: CC-BY-SA-4
redirect_from:
  - /irchelp/clients/misc/
---

# Specialized Clients - Bots, Bouncers, and everything else

This category covers special types of clients, such as bots, bouncers, and other programs that connect into IRC, but don't provide the typical client interface.

* * *

## Bots

Bots are automated IRC clients which run with little or no user interaction, generally to provide some utility or amusement to channels.  On networks without channel registration services such as EFNet and IRCNet, bots often fulfill a key role on channels of maintaining ops.

Servers have widely varying policies regarding bot usage - in the past, very few servers allowed bots on EFNet and IRCNet (and those that did usually required prior permission) because of their place in channel wars, while networks supporting registration have generally been more tolerant.

These days, most servers will allow bots, but it's still necessary to check the policies of the network and individual servers. Even where bots are allowed, bots are expected to be well behaved - bots that cause problems, or in some case, even bots that are involved in problems, are likely to be banned.

Some best practices for bot operators:

* Bots should only function on channels where they are welcome.
* Bots which are not used for channel protection should leave or return according to thie wishes of channel operators.
* Bots should clearly indicate who's responsible for running them, or the ops of channels where they are operated should know this information.
* Bots should be carefully coded to avoid "privmsg loops" - where two or more bots are triggering each other to speak endlessly. Following the guidance of RFC1459 regarding automation is highly recommended.
* Bots should not be configured in a way to limit the actions of channel operators without a thorough understanding of consequences. A bot may be able to react more quickly than a human chanop can, but speed is no substitute for human judgement, and many "well meaning" protections like mode locks have been known to backfire spectacutlarly. (If you can't trust your channel ops, why are they opped?)

### Eggdrop

[Eggdrop](http://www.eggheads.org/) is a widely popular IRC bot package, and is frequently used either to protect channels in the absence of services, or to provide services to a channel beyond what the network's services can provide.

Still the most popular bot for channel protection purposes, Eggdrop is a relative heavyweight that provides a framework for managing user accounts, networking between bots, and a DCC partyline for management, as well as a TCL interpreter for extending the bot.

Other Eggdrop Resources:

* [egghelp.org](http://www.egghelp.org)
* [eggwiki.org](http://eggwiki.org)

Support Channels:

* #egghelp on EFNet


### Infobot
[Infobot](http://www.infobot.org/) is a popular "FAQ" bot for IRC channels, with a rudamentary capability to be taught boilerplate answers to common questions. It's still very popular, but it's old and mostly unmaintained these days. It's spawned many clones, forks, and imitations, which by now are far more advanced than the original.

### Bucket

[Bucket](http://wiki.xkcd.com/irc/bucket) [(source)](https://github.com/zigdon/xkcd-Bucket) is a modern infobot replacement originally written for #xkcd. It's written in Perl, highly configurable, and supports a number of modules. Oh, and it also has a sense of humor...

IRC Channels

* [#xkcd on irc.foonetic.net](irc://irc.foonetic.net/#xkcd) - Home of the original bucket.
* [#bucket on irc.foonetic.net](irc://irc.foonetic.net/#bucket) - bucket's development channel.

### Irker

[Irker](http://www.catb.org/esr/irker) is a version control notification bot written by Eric S. Raymond to replace the defunct CIA notification service.
It is used to notify a channel of software developers when changes are "committed" or "pushed" to various version control systems, including Git.

IRC channels:

* [#irker on Freenode](irc://chat.freenode.net/#irker)

### Bot Frameworks

A number of frameworks also exist, which are well suited to writing your own customized bots. A few of these are listed here.

* [bot::basicbot::pluggable](https://metacpan.org/release/Bot-BasicBot-Pluggable) - simple and modular perl framework
* [guppy](http://guppy.uk.to/) [(source)](http://repo.or.cz/w/guppy.git) - simple, modular Python framework
* [mozbot](http://www-archive.mozilla.org/projects/mozbot/) - heavily customized perl framework, with many preconfigured modules for software developers
* [Autumn](https://github.com/RISCfuture/autumn) - Modular Ruby framework for IRC bots.


### Other Bots
This is by no means a comprehensive list of bot software, especially given that full-featured IRC clients often have functionality that borders on bot-like, and many specialized bots exist to particular tasks. Software developers in particular are fond of writing bots for specific tasks, like announcing commits to version control systems, outcomes of software builds and testing, and other things that interest them.

## Bouncers

Bouncers, also known as IRC proxies, proxy IRC connections for reasons of privacy, security, or vanity, and they may additionally function as bots as well, allowing persistent presence for users with intermittent connections.

### bnc

BNC was the original IRC bouncer, and may still be referred to in some howtos and other documentation. The homepage is down of this writing, but the package is still found in some repositories. It's considered obsolete by most users these days, but it's sufficient for circumventing port restrictions or masking your home address.

### znc

Part bot, part bouncer, znc is a robust way to keep a constant presence on IRC. In addition to the standard bnc proxying functions, znc provides persistent connections to the server that stay active when a client connects, a backlog that's delivered to the client when it reconnects, and a module system that allows znc to function as a bot in your absence.

Homepage

* <http://znc.in>

Download

* <http://znc.in/releases>

Source Code Repository

* [Instructions](http://wiki.znc.in/Git)
* [znc on GitHub](https://github.com/znc/znc)
* `git clone git://github.com/znc/znc.git`

IRC Channels

* [#znc on EFNet](irc://irc.efnet.org/#znc)
* [#znc on FreeNode](irc://chat.freenode.net/#znc)

### Clients with built in proxies

Several unix clients also function as IRC proxies, and are documented on their
respective pages:

* [irssi](/irchelp/clients/unix/irssi/)
* [weechat](/clients/unix/weechat.html)
* [quassel](/irchelp/clients/unix/quassel.html)


## Others

Some other "specialty" clients may not fit cleanly into any of these categories. They are listed here.

### xmpp-to-irc gateways

xmpp, better known to many users as jabber, has a provision for gateways between the IRC network and the XMPP network. These gateways are known in XMPP terms as "transports", and usually translate IRC sessions to XMPP's Multi-User Chat (MUC) facility so that an instant messaging user can connect to IRC without an additional client.

Normally, a transport is installed only for the users (or a subset of the users) of a particular XMPP service on the network.

Some XMPP-to-IRC transports include:

* [PyIRCt](http://xmpppy.sourceforge.net/irc/)
* [Spectrum 2](http://spectrum.im/)
* [jiigw](https://github.com/Jajcus/jjigw/)

Functionality of such solutions will be limited by both the gateway and the instant messaging program in use. but is sufficient for basic chatting, and may be sufficient for limited exercise of channel operator functions, but not much else.

## irc-to-xmpp and irc-to-other gateways

* [bitlbee](irchelp/clients/misc/bitlbee.html) - multi-protocol gateway from IRC to XMPP (including Facebook Chat/Google Talk), AIM/ICQ, Yahoo, and others.
