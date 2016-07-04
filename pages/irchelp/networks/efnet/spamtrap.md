## EFNet Spamtrap

### _A guide to EFNet's spamtrap system for End Users_

### Stephanie (Triona) Daugherty

IRC Operator

irc.efnet.nl

Thanks to ^duck^, Beige, HndlWCare, wmono, Jupiter, jilles, and various other
EFNet opers and #irchelp'ers for proofreading and feedback.:

$Id: spamtrap.xml 10 2007-01-07 20:04:50Z Stephanie $

Copyright © 2007

This document is licensed under a Creative Commons Attribution-No Derivative
Works 2.5 License which can be reviewed at
[http://creativecommons.org/licenses/by-
nd/2.5/](http://creativecommons.org/licenses/by-nd/2.5/).

* * *

**Table of Contents**

Overview - What is Spamtrap?

How does spamtrap work?

How is privacy protected?

Will spamtrap mistake legitimate onjoin messages for spam? What do I do if I
believe I've been banned unfairly?

The spamtrap collectors are annoying, how can I keep them out of my channel?

I'm having problems with spambots in my channel, Can spamtrap help?

Where can I find more information or support?

## Overview - What is Spamtrap?

Spamtrap is a sophisticated, distributed system run by EFNet IRC Operators and
Administrators to detect spambots. It helps EFNet detect and respond to
spambots proactively - often before they would be detected by a user complaint
or by server-level spam detection.

The system is flexible, and under constant change and improvement to improve
detection rates and keep the system as unobtrusive as possible while
maintaining our goals of protecting privacy, efficient use of resources,
proactively catching spambots, and preventing false positives.

## How does spamtrap work?

Spamtrap uses a set of honeypots that roam the network to bait spambots.
Messages received by the honeypots (also referred to as "spam collectors") are
analyzed to determine if they are spam, and if so, what action should be
taken.

## How is privacy protected?

The spamtrap system only cares about messages and invitations specifically
addressed to the collectors. Conversations within channels simply aren't
processed by the system.

## Will spamtrap mistake legitimate onjoin messages for spam? What do I do if
I believe I've been banned unfairly?

Probably not. If this happens at all, it happens very rarely. We respect that
channels may wish to legitimately use onjoin messages to convey information to
their users, and recognize that such messages may legitimately contain URLs
and similar information. Spamtrap has a number of measures to differentiate
between legitimate onjoin messages and spam. There have been very few reports
of false positives from onjoin messages, and we take all reports of false
positives seriously.

All automaticly generated K: lines (bans) from the spamtrap system include a
support URL with pointers to help and a tracking code that an IRC operator can
use to find full details of what triggered the ban. Please include the full
ban message when asking for help regarding a spamtrap K: line or G: line.

## The spamtrap collectors are annoying, how can I keep them out of my
channel?

While we try to keep the system as unobtrusive as possible, our privacy
obligations and the technical limitations of IRC itself mean that you will
sometimes notice a spamtrap collector joining or leaving a channel. The last
thing we want is to create a greater nuisance than the one we are trying to
correct.

If you are a channel operator for a particular channel, there are a few
possibilities.

As the main way we find channels to patrol is from /list, setting a channel +s
and keeping it that way will usually stop the spamtrap system from checking
that channel for spam. Unless the channel has been identified as a "priority
channel", the spamtrap collectors will stop coming within a few hours, and
will leave the channel alone as long as it is +s. For many channels, this is
the best solution, because it also makes it harder for spambots to find your
channels.

If you don't wish to set +s, or if the channel is already +s, you can ask for
assistance in [#spamfix](irc://irc.efnet.org/spamfix), and we will discuss the
matter and work with you to find a solution which may include excluding the
channel from spamtrap or reducing the frequency with which spamtrap's
collectors join your channel.

While we can't stop you from banning the collectors from your channels, we
don't recommend doing so because the hostmasks are changed constantly, and
there are easier solutions described above.

## I'm having problems with spambots in my channel, Can spamtrap help?

Remember that spamtrap only deals with spam that's delivered privately. If the
spam is happening in channel, spamtrap can't help. Report any spambots you see
to an IRC operator - preferably on the same server as the spambot.

### Note

Because spamtrap does not process channel conversations, it won't catch
spambots that join a channel and spam in the channel. We have other means of
detecting these type of spambots, however, if you see one please report them
to an IRC Operator or to [#spamfix](irc://irc.efnet.org/spamfix) so that we
can ensure they are addressed quickly.

If the spambots are using private message, notices, etc, an IRC operator may
be able to adjust spamtrap's settings for your channel to improve it's
effectiveness - if necessary we can force spamtrap to visit a channel more
often.

If your channel is very small, or +s, spamtrap may not find it without help -
if spambots plague such a channel, feel free to ask for assistance in
[#spamfix](irc://irc.efnet.org/spamfix).

## Where can I find more information or support?

To keep the system as effective as possible, we have to chosen to limit the
available information. Spammers are known to use any information available to
improve the effectiveness of their spambots. We already have seen dramatic
changes in the way spambots on EFNet behave, and this can be attributed at
least in part to the spamtrap system. Please understand that we do not wish to
aid spammers in any way, and that we have to be vague in some of our
descriptions and with the details we do release.

Also due to these concerns, we do not post any listing of the spamtrap
collectors and their hostmasks or discuss their numbers, and we strongly
discourage others from doing so - such lists make our efforts to fight spam
more difficult, while providing little benefit to anyone, since we change the
hostmasks constantly.

With that said, we maintain the [#spamfix](irc://irc.efnet.org/spamfix)
channel on EFNet for users to go for help with spam issues or issues with the
spamtrap system.

* * *



[ [go back](/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

