---
title: A note about NOTICE
author: Stephanie Daugherty
layout: default
license: CC-BY-SA-4
---

# A note about NOTICE

The IRC protocol, as originally defined in RFC1459, spells out two
forms of message that clients can send to channels or users. PRIVMSG and NOTIICE.

The purpose of having two different types of message were made abundantly clear:
* An automated process that responds to PRIVMSG must respond via NOTICE
* No automated response whatsoever is allowed to NOTICE.

Clearly, the purpose of NOTICE is to prevent bots and other types of automations
from activating one another in an endless loop.

Unfortunately, they developers of a number of clients, most notably mIRC, had
other ideas. They decided that NOTICE was some sort of alert, and gave NOTICE
special treatment. As such, rather than going to a query window where it can easily
be seen, it goes either to your current channel, or to a random channel you have
in common with the user from which you are getting the NOTICE.

This first presents itself as a problem to most users when interacting with IRC
services, which are usually well behaved, and therefore, respond to commands
received in a PRIVMSG via NOTICE as good RFC1459 respecting automations should.
Those messages, in turn, when received by clients authored by RFC ignorant
developers, wind up getting lost in a random window. So, if you can't find any reply
from ChanServ, check all your channel windows - it's probably there, in one of them,
probably the one you least expect to see it in.
