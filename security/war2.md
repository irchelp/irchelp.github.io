---
title: Downloading Files from IRC
author: random-irchelper
dateupdated: 2 February 2006
layout: default
---
Downloading Files from IRC
==========================

by Jolo\@EFnet with help from many others, updated Feb 5, 2006

**Trying to learn how to trade files on IRC? Please read this *all the
way through*. The answers are all here.** If you skim along just looking
for easy ways to get files, you won\'t find any, because it\'s not a
trivial subject. If you are patient and read carefully, however, you can
learn the truth of how many people use IRC to trade files. This file
also addresses many common problems like when you see \"DCC pending\"
but nothing happens.

Just the Facts
--------------

Using IRC to download copyrighted files (songs, movies, games,
pornography, \"warez\", \"cracks\", etc.) is potentially:

1.  **Illegal**. Most countries have laws against file trading. Don\'t
    get me wrong, I\'m not a cop, I don\'t care what you do, I\'m just
    telling you the facts. In case you haven\'t heard, there have been
    many cases of government and recording industry actions against
    individuals including young kids, ranging from jail time to large
    cash settlements.

2.  **Dangerous**. Downloading from strangers (especially fellow law
    breakers) can be as risky as opening email attachments blindly. New
    IRC useres are often infected with viruses and [trojan horse
    attacks](../security/trojan.html). Defenses like backups, anti-virus
    software, and firewalls can be helpful, but are *never* foolproof.

3.  **Difficult**. IRC file trading isn\'t rocket science, but it is a
    relatively advanced subject. It takes experience and patience. You
    *cannot* install some dummy-proof application and start downloading
    files minutes later.

Enough with the lecture, how do I do it?
----------------------------------------

You must first learn how IRC works. There is no shortcut! Read help
files for the commands, chat with lots of people, make friends and
contacts. That\'s the simple, honest truth. We invite you to peruse our
many general [FAQs and guides](../faq/). You should learn all about
[IRC security](../security/), especially [trojan horse
attacks](../security/trojan.html) and [denial of service
attacks](../nuke/) which are common among IRC file traders.

Once you learn all that, the actual file trading is straightforward. You
connect to the right server, join the right channel, find the right
people, and send the right command to request a file. They send it to
you, a window pops up, you hit the \"accept\" button or some such,
presto, you\'re done. The trick is finding the trustworthy sender in the
first place. Remember: **There is no official, centralized list of
files, no comprehensive list of channels to trade files, and no
standardized commands for getting files.**

You can try the `/list` command to see public channels once you connect
to a particular network, or use the web-based [multi-network channel
search](../chanlist/). Once you get on the channel, you\'ll have to ask
the people there for the non-standard, special commands for listing and
getting files. Don\'t go typing \"!list\" or other commands blindly,
you\'ll just get kicked out for acting like a \"newbie\".

Troubleshooting for Specific Problems
-------------------------------------

**Why can\'t I get a file?** or
**Why does it keep saying: \"You have a DCC pending, Set your client to
receive the transfer\...\"?** or
**Why does my status screen say \"DCC send rejected\... file type
ignored\"?**
So you request a file but nothing seems to happen. First, ask a friend
to DCC send you a text file. There\'s no point in going further until
that works. If that works, then the problem may be mIRC\'s automatic
ignoring of all but a few \"safe\" file types for your own protection
against [virus and trojan horse attacks](trojan.html). This protective
feature is there for a good reason. To modify those settings, see the
official [mIRC.com FAQ on problems with receiving
files](http://www.mirc.co.uk/help/getproblems.html) \[ext. link\].
Whatever you do, don\'t auto-get and don\'t disable file ignoring
entirely, because then you are just opening yourself up to all kinds of
dangers. Instead, add in the safe file types you are sure about, such as
\"\*.mpg\" or whatever. If you\'ve done all that and the file still
won\'t come through, chances are the sender is having firewall problems,
which is very often the case these days, see the next question.

**Why can\'t I send a file?** Is this a new problem? If you used to be
able to send files just fine, then think about what you changed
recently. Did you switch to a new ISP, start sharing your connection
among multiple PCs, install a router, load up a software firewall? Often
these factors affect your ability to have identd and DCC send or
initiate a DCC chat (although you can still DCC get or receive a chat).
See our [firewall guide](fwfaq.html) for more info.

**How can I speed up the DCC get or download?** Short version: You
can\'t. *There are no commands for you to speed up your DCC get*
(anybody claiming otherwise is usually ignorant or trying to give you a
trojan horse virus). Stop downloading from elsewhere to free up your
bandwidth, or get a faster ISP, but that\'s about it. There are commands
for a sender to optimize his sending speed (see next question), but most
file servers are already sending as fast as they can, there\'s just too
many people getting files from them at the same time and splitting up
their finite available bandwidth. Also, DCC was never designed for large
file transfers; it is relatively inefficient and error prone.

**How can I speed up a DCC send?** Short version: generally you\'re
limited by the same factors described above. If you have a very fast,
stable connection, sometimes you can improve that efficiency a little by
adjusting your client parameters, e.g., in mIRC, the sender can type
`/fsend on` and `/dcc packetsize 4096`. As explained above, those
commands do not affect DCC get speeds.

**Why can\'t I join \#cracks (or other warez channel)?** Channels that
deal in warez are sometimes invite-only as a result of being attacked by
enemies, or just to keep the channel more manageable. If you can\'t
figure out how to get your illegal serials update or whatever after
reading the above guide, then you\'re on your own.

**What are the commands for listing / getting files?** On several
occasions I\'ve already said there are no standardized commands, since
file trading is an individual activity, not a standard part of IRC. I
suggest you stop skimming around and go back and re-read this guide
carefully, or else you are wasting your own time.

**How do I get multiple files at the same time?** Again, there are no
standardized commands. There are some scripts out there that will
automate the process for you, but certainly none that a responsible help
channel would recommend due to problems with bugs, bloat (unnecessary
features that slow down or break your IRC progarm), or security
backdoors. Our best advice is to be patient and just get the files one
at a time.

**How do I set up a file server?** I can tell you how not to - don\'t go
downloading some big script just to serve files, at least not right
away. These big scripts slow down your IRC client, can contain serious
bugs that make you crash, and even security flaws that get you
\"hacked\". Instead, start easy with the feature that are built into
your IRC client already, such as `/fserve` for mIRC. Here are some bare
bones [startup tips](/faq/irchelpfaq.html#q22).

If any of the above is still confusing, feel free to ask. Just remember,
we\'re volunteer helpers who seek to promote the proper and safe use of
IRC, and we will not knowingly help you break the law or get yourself
attacked. That is true of all mainstream help channels like \#IRChelp,
\#mirc, \#mirchelp, \#help, etc., so please don\'t hop from one to the
next asking how to get files.

Finally, to learn more about P2P file-sharing issues, check out the
Electronic Frontier Frontation\'s [Let the Music
Play](http://www.eff.org/share/) advocacy site, or the RIAA\'s
educational site
[Soundbyting](http://www.its.caltech.edu/its/help/policies/riaa/).
