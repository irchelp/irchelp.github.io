---
title: The New IRC Channel Operator's Guide
author: Jolo, prysm, and RuyDuck of EFnet #IRChelp
datechanged: 18 August 2008
summary:  A guide for those finding themselves as channel operators in EFNet (or other networks without services) for the first time.
layout: default
---


# The New IRC Channel Operator's Guide

by Jolo, prysm, and RuyDuck of EFnet #IRChelp

updated Aug 18, 2008

## Table of Contents

  * 1. Introduction
  * 2. Creating a channel
    * 2A. Chanserv or no chanserv? 
    * 2B. Setting channel modes 
    * 2C. Multiple modes 
  * 3. Channel security
    * 3A. Opless 
    * 3B. Kicking 
    * 3C. Banning 
    * 3D. Bot nets and drones 
  * 4. Maintaining the channel
    * 4A. Seven simple rules for channel maintenance 
    * 4B. Clients and Scripts for channel maintenance 
    * 4C. Bots 
    * 4D. Finding users for your channel 

## 1. Introduction

So, you want to run your own channel?

Being a channel operator is a fairly advanced subject. That's why this guide
is so long and technical. The truth is, most people enjoy just chatting on one
of the literally half million of existing channels on hundreds of networks.
It's all the fun without any of the hassles of being an op! (Think I'm
exaggerating? Check out the statistics yourself at these external links of the
largest IRC networks:
[Netsplit.de](http://irc.netsplit.de/networks/top100.php) or
[SearchIRC](http://searchirc.com/largest-irc-networks).)

(If interested, check out this [short little rant](changuide-rant.html) on why
you should _not_ try to run your own channel. Don't say we didn't warn you!)

That said, running a successful channel can be a really rewarding experience,
and for serious users, it's the fastest way to learn about IRC. So if you have
a group of trusted friends and want to learn how to run a channel together,
read on to learn how!

[Return to top]

* * *

## 2. Creating a channel

Starting a channel is the easiest part. Just pick a single word channel name
beginning with the # character for your channel, `/join #your-new-channelname`
and you will create the channel from scratch, join it, and be given operator
status (ops) by the server. By default, the channel will be shown when anybody
searches with the `/list` command.

If somebody else already created a channel with the same name, you may find
yourself in a channel with somebody there already, or you may be alone but the
server does not op you and says "This channel has been registered with
ChanServ" (see section on chanserv later) or you just cannot join the channel.
You can see if a channel exists by typing /mode #channelname. If there already
is such a channel, the server will show you information about the channel if
it exists, or will tell you "No such channel" if it doesn't.

### 2A. Chanserv or no chanserv?

How you run a channel depends greatly on whether or not the network supports
the notion of channel ownership by means of registration services like
"chanserv". On networks like DALnet which do support channel registration, if
you are the first to register a channel, you get to control it forever, as
long as you show up once in a while. This includes getting ops "automatically"
every time you join the channel, and being able to control who else gets ops
even when you're not online. Although this level of ownership is more
reassuring to many people, the catch is that all the popular channels or
nicknames can be reserved indefinitely by somebody who barely ever shows up on
IRC. Also, there are sometimes accusations of abuse, because the server
administrators can effectively control not only their servers but also
individual channels through the channel service. In comparison, Undernet only
supports registration for established channels (with at least 10 regulars).
EFnet and IRCnet do **not** have channel registration at all, although EFnet
has a ["CHANFIX" service](http://efnet.org/chanfix/) that can sometimes
restore lost ops and reverse takeovers through a "squatter's rights" system.
For more information, check out [Why EFnet/IRCnet has no registration
services?](/networks/noserv.html).

The bottomline is that you have to decide where you want to host your new
channel, and then abide by the rules of that network regarding channel
registration (or lack thereof). If you do decide to run a channel on a network
without services, then be prepared to devote a lot more time and resources to
the effort.

### 2B. Setting channel modes

First and foremost, you should know all the mode commands already. If you need
a refresher, they are already explained with examples in [IRC Tutorial,
section 3.2 on channel maintenance](/irchelp/irctutorial.html#chanmode), which
covers how to set a topic, how to change modes which affect the basic behavior
of your channel including who can speak, who can join, who must go, etc. For
your own good, do not proceed until you have read through and understand all
that. Now assuming you know those basics already, we are going to give you
some more specific tips.

**o: Operator**      All ops are equal, except where channel services exist to define who the founder/owner of a channel is. If you give ops to another person, you are giving that person the _exact same amount of control_ that you have over that channel, including the ability to take away your ops, kick you, and ban you! If you trust the wrong person, learn from your mistake and do better with your next channel, but don't go crying to some IRC operator for help. IRC is not kindergarten, if you really want to be an op, then learn to accept the responsibilities that come with the power, including maintaining ops, keeping away troublemakers, etc. 

**s: Secret**      If your channel is just for friends to chat and you are not interested in attracting strangers and newcomers, then the easiest way to keep your channel safe is to keep it secret. If people don't know about it, they can't attack it or take it over. Outsiders can still guess your channel name or stumble upon it accidentally. For example, making #greece secret isn't going to stop every Greek person from trying `/join #greece` anyway. 

**i: Invite-only**      The most secure way to keep outsiders away is to make the channel invite-only, but be aware that can also keep your friends out unless they know a nickname of somebody inside to ask for an invitation. On most networks, most users are +i (invisible, not to be confused with the +i channel mode) and don't show up when you do a `/names #channelname` from outside. On some networks running [Hybrid ircd](/ircd/hybrid6.html) you can try asking for a general invitation with `/knock #channelname`. You can also try looking at the ban list for the nick of an op to /msg, but often those are just bots who won't respond. 

**k: Keyword-protected**      Alternatively, set a keyword or password, that way anybody who knows the keyword already can `/join #channelname keyword` without having to ask for an invitation. If necessary you can always change the keyword, anybody currently on the channel will see the new keyword, and you can notify others privately. 

**l: Limited**      This sets a maximum to the number if users allowed to join a channel. Anyone trying to join a channel after this number is reached gets a "Channel is full" message from the server. Someone must leave in order for anyone else to get in, or the ops need to raise or remove the limit. Many channels use bots/scripts to maintain a "floating limit" usually set five to ten higher than the current user count. This prevents a massive number of malicious bots from joining the channel and attacking it all at once, making it easier for the ops to deal with the few that were able to get in. 

**m: Moderated and v: Voiced**      Used together, these modes let you control who may speak, which is useful for controlling a busy channel. A user who is neither an op nor voiced would get a "Cannot send to channel" error message from the server if she tries to type to the channel. This can be helpful such as if there is some special event like a celebrity interview, where only a few people should be talking but many more are there to observe in silence. You can use +m temporarily if somebody is flooding or you suspect they are about to flood, as a way to warn that user without having to kick them out, or to buy you some time to set the proper bans. If your channel has hundreds of people or more, you may need to keep it +m all the time or else the chat would scroll nonstop. Just remember, unless you make it clear in the topic or autogreet how a user might ask for a voice, they may leave out of confusion or frustration. In a channel that is _not_ moderated, the voiced user has no extra powers. Some channels use +v to designate a "friend" status since, if the channel gets set to +m, they will already have their voice. Other channels may use that designation for their own purposes or definitions, like a user or bot who has the channel's approval to send files. 

### 2C. Multiple modes

You can combine many mode changes on one line (typically 4). For instance, if
you want to give four people ops, you can: `/mode #mychan +oooo nick1 nick2
nick3 nick4`. You can also combine + and - modes, such as `/mode #mychan +vv-
vv nick1 nick2 nick3 nick4` would give voice to nick1 and nick2, but take it
away from nick3 and nick4. Likewise, `/mode #channel +sti-lm` would activate
secret, topic, and invite-only modes, and deactivate the limit and moderated
modes. If you are defending against an attack, it may be necessary to use
these multiple modes to act as quickly as possible. Naturally, any of these
mode commands can be used for both offense and defense, so be careful.

[Return to top]

* * *

## 3. Channel security

The first thing you have to learn about IRC security is this very simple fact:
_you can never be 100% safe_. It does not matter how many botnets you have,
how well set up your firewall... if the bad guys really want to, they will
find a way to make your life miserable. They can coordinate hundreds of
compromised accounts to attack you all at once. Channels are taken over every
day, even ones run by very experienced people. They've even shut down whole
IRC networks for weeks or months at a time! That's just a fact of life on the
internet. So rule #1 of channel security is staying out of trouble in the
first place. In the following we will address the most common channel problems
in roughly increasing order of complexity.

### 3A. Opless

"Help, we lost all ops!" This _will_ happen to you sooner or later, so you
might as well start planning now. (See "Maintaining Your Channel" later for
tips on how to avoid this as much as possible.) For example, you might all get
disconnected such as from a [denial of service attack](/irchelp/nuke/), or the
network may suffer from serious problems. If your network supports channel
services, try those options to regain ops. Failing that, you may have to cycle
the channel, whereby everybody leaves and the channel is recreated from
scratch. It's not easy, but if you run a stable, well-organized channel, it
should be possible. You can use autogreets to tell visitors to stay away or go
to an alternate channel for a while. You can then contact all the regulars who
are offline, using email, IM, phone, etc. With some patience, you should be
able to regain ops.

We hate to tell you this, but if you lose ops frequently (more than once in a
few months, or especially if it happens within just a few days or less of
creating your channel), you really should take that as a strong hint that you
are not ready yet. That's not an insult, after all, it takes tremendous
experience, knowledge, patience, and resources to run a big, stable channel.
Probably less than 1 in 1000 IRC users have what it takes. Your options are to
(1) keep trying by starting a new channel and learning from your mistakes, (2)
give up and just chat on existing channels run by others, (3) consider moving
to a smaller network that supports channel registration, at least until you
get more critical mass going, or (4) go running to outsiders for help. The
last option tends to invite ridicule and even attacks. If you want to be a
good channel op, then take responsibility for your channel, including handling
problems and learning from mistakes.

### 3B. Kicking

Kicks and bans are important aspects of channel maintenance. A kick tells the
server to force a user leave the channel. However, he may rejoin it if the
channel modes allow it. A ban keeps the user from joining a channel, or from
re-joining a channel if he's been kicked out. If you haven't yet, please
review [channel maintenance section of the IRC
Tutorial](/irchelp/irctutorial.html#chanmode) which covers basic kick and ban
syntax with examples.

For newbies, the power to kick is one of the most alluring aspects of being an
op. When giving a kick reason, however, remember rule #1 and keep out of
trouble - if you use profanity, insults, etc., you only invite retaliation.
Likewise if a single kick doesn't deter the abuse, don't just keep kicking the
guy repeatedly, instead set a ban and end the fight. The purpose for a kick is
simply to get the abusive user out, not to give him incentive to take it
personally so that he makes it his goal for the next 3 months to attack you.

Many people will just rejoin automatically unless the channel mode prevents
that (+k with keyword set after you kick the guy so he can't see it, or +i),
or unless you set a ban...

### 3C. Banning

The basic idea is to set the most specific pattern or "ban mask" which keeps
the person out without affecting innocent people. As the [channel maintenance
section of the IRC Tutorial](/irchelp/irctutorial.html#chanmode) explains, the
ban mask consists of 3 parts, combined in the form of
nickname!username@hostname. If the ban is too specific, the person can evade
the ban just by changing 1 or more of those 3 parts of his information. If the
ban is too general, you may end up accidentally banning everybody from an
organization, internet service provider (ISP), or country. If you're not
careful you can even end up banning yourself!

To make the right ban mask, you use the `*` or `?` characters which are called
"wild cards" to replace the parts of the nick!user@host information that
change. The ? can be used to substitute for _any single character_. It implies
that a character must exist to replace it. The * can mean _nothing, a single
character, or many characters_.

Let's assume an abusive user's /whois shows "goofy1 is
blah@m027-124.nv.iinet.net.au". Here are a few possible ban masks, starting
from very specific (affecting only this person) and gradually becoming very
general (affecting more people):

  * `/mode #mychat +b goofy1!blah@m027-124.nv.iinet.net.au` bans anyone using the nick g00fy1, username of blah, and hostname of m027-124.nv.iinet.net.au. He can change any of those 3 and evade the ban, such as just by `/nick goofy2`... 
  * `/mode #mychat +b *!blah@m027-124.nv.iinet.net.au` (equivalent to mIRC's `/ban nick 2`) will stop that by banning any nick with that user@host. If he is using a personal client like mIRC, however, he can just change his username after a quick disconnect and reconnect to the IRC server... 
  * `/mode #mychat +b *!*@m027-124.nv.iinet.net.au` (equivalent to mIRC's `/ban nick 3`) would ban all nicks and usernames from that hostname. This is enough to keep most people out if they cannot change their hostname easily, such as a DSL/cable connection. With that hostname however, you might guess that it's not exactly personalized, and he may be able to get a new hostname if he's willing to make a new connection to his ISP such as by dialing up again, or by getting 20 of his buddies from the same domain to harrass you, such as m027-001.nv.iinet.net.au, m027-002.nv.iinet.net.au, etc. If that's the case... 
  * `/mode #mychat +b *!*@*.nv.iinet.net.au` (equivalent to mIRC's `/ban nick 4`) would ban any nick and any username from any machine from the ISP domain name nv.iinet.net.au. To beat that, he would have to use a separate account from another ISP. If that happens, you can just ban that account as well. Chances are you have more ban slots than he has accounts or patience. 
  * Another point to note, is if a user has an IP address instead of a hostname, such as blah@123.45.678.90 -- IP numbers run in the opposite direction in terms of generality, that is, *@123.45.* is a more general ban than *@123.45.678.* - the former bans an entire "netblock" which is equivalent to banning an entire country, or at least large portions of one! 

### 3D. Bot nets and drones

A well-run channel where people just chat and mind their own business rarely
has to deal with this kind of abuse, but it does happen, especially on
channels where there is illegal or controversial activity like file trading,
shell trading, pornography, etc. Remember what we said before: you can never
be 100% safe, and that is especially true if you got somebody upset enough to
turn their bots against you. The best defense against these is to just stay
away from trouble in the first place.

A bot net is a linked network of bots or automated clients run by the same
person, typically used for channel maintenance or abuse (more on that subject
later). Drones are a special type of bot net where the bots are running on
innocent, compromised machines owned by unwitting victims out there. The
"drone runner" can remote control these many machines to attack you, on IRC in
the form of channel or message flooding, or outside IRC in the form of [denial
of service attacks](/irchelp/nuke/) to disconnect you from the internet. These
can be serious problems for channel security.

First let's consider attacks inside of IRC. If you suddenly get hit by a flood
of joins from people you don't know, just make the channel +im temporarily so
they can't keep coming in and can't flood in the channel. Note they can still
cause flooding such as by rapidly changing their nicknames. Now just kick them
without bans since they cannot rejoin while you are +i, that gives you time to
set proper bans after you've kicked them all out.

Generally you can't set bans for every single bot, because there may be a
limit on the total number of bans per channel (typically 20, some networks may
support more). If nothing else, it gets tedious to manage. So first look for
patterns in the nick, user, or hostname that are the same for many of them.
This is often the case with drones. Example:

    
    
    *** lamer1 (|xxx|-4@ACBAD0BA.ipt.aol.com) joined #mychat
    *** yousuck (|xxx|-274@node-c-0db1.a2000.nl) joined #mychat
    *** iwin (|xxx|-824@106.9.252.12.snet.net) joined #mychat
    *** hahaha (|xxx|-86@host217-44-101-246.btcentralplus.com) joined #mychat
    

In the above case, 4 drones from 4 different ISPs joined, but you notice they
all have similar usernames, so instead of wasting 4 ban slots, you can try
*!|xxx|*@* instead.

Here's another example below, where the username is always 4 characters, with
no identd and different hostnames/ISPs. For this situation, try *!~????@*
where the 4 question marks mean exactly 4 characters.

    
    
    *** lamer1 (~ahah@ACBAD0BA.ipt.aol.com) joined #mychat
    *** yousuck (~jfdj@node-c-0db1.a2000.nl) joined #mychat
    *** iwin (~d8jj@106.9.252.12.snet.net) joined #mychat
    *** hahaha (~fdas@host217-44-101-246.btcentralplus.com) joined #mychat
    

When in doubt, you can temporarily set very general bans such as *!~*@* to
block all without identd, or *!*@*.no for everybody from Norway, and refine
them later. This may temporarily block some of your friends from joining too,
but the most important thing is to keep your channel safe. On some
servers/networks, you might be able to use ban exceptions, see our [Hybrid IRC
Server Guide](/ircd/hybrid6.html) or consult your local help channel.

If you're the victim of a [denial of service attack](/irchelp/nuke/), then
that technically has nothing to do with IRC - the packets used to flood you
off do not originate in or pass through any IRC server. The attacker doesn't
even have to be on IRC to knock you offline. Your options are very limited,
see our guide on [Reporting Nukes or Denial of Service
Attacks](/nuke/report.html). Just remember, _nobody_ is safe against a
determined, coordinated attack. Your best defense is once again rule #1 - try
to stay out of trouble, and if trouble comes anyway, just hope that you have
more bandwidth or patience than the attacker.

[Return to top]

* * *

## 4. Maintaining the channel

We're done with all the technical stuff, from here on out, it's just good old
fashioned advice on how to grow your channel and keep it safe. This section is
based on our 10+ years of experience running successful channels as well as
helping other people who screwed up theirs. It's amazing how much you can
learn from watching other people mess up!

### 4A. Seven simple rules for channel maintenance

There are a few simple guidelines for keeping your channel safe. None of these
involve technical expertise; all of them require commonsense.

  1. **Op only people you know and trust.** When you op somebody, you are potentially handing over control of the channel to them. Don't just op people because they are friends, or even if they give you "free" bots. Remember you are only as strong as your weakest link. All it takes is one inexperienced op being careless once, and your channel could be gone forever. Educate your ops on the dangers of IRC so they don't download trojan horse viruses or load scripts or type commands given to them by others. 
  2. **Get enough ops to cover your channel 24/7.** We recommend at least 10 real live humans, spread out over as many different servers and time zones as possible, so that you don't lose all ops from a single server split, connection ping timeout, denial of service attack, power outage, etc. The idea is to pass ops back and forth as people come and go. All security concerns aside, what's the point of having a _chat_ channel with no people? 
  3. **Never use auto ops.** That's when you give ops by some bot or script based solely on somebody's nick!user@host mask. Careless opping is the #1 most common reason that channels get taken over. A lot of new ops will give ops by nickname alone, which is trivially easy to fake. Even careful selection of a user@host mask is not enough, somebody will inevitably match a real op's user@host coincidentally or intentionally, leading to an instant takeover. Instead, always require the user to request ops with a password _and_ also check the user@host. For example, mIRC users can do this with something simple like this [op script](/irchelp/mirc/chan_op.mrc). Make sure this rule is followed _every single time by every single op_! Your channel is only as strong as its weakest link, and it takes only 1 mistake to ruin your channel forever. 
  4. **Do not rely on bots alone to keep ops.** Other than careless opping, this is the 2nd most common way that channels get taken. Bots are a very advanced subject, and even experienced IRC users often misconfigure their bots, leading to a takeover. More on this later. 
  5. **Set up a way for ops to communicate off the channel.** If there is a takeover, you won't be able to use /onotice or equivalent. Agree upon an emergency channel name that the bad guys won't be able to guess, and if things go wrong, go there to chat instead, make sure it's +sk. Set up a contact list with the email, IM, or phone numbers of all channel regulars. The email list will also give you a safe place to vote on proposed new ops, discuss channel policies, etc. 
  6. **Log everything.** Disk space is cheap, there is no excuse to not log everything going on for at least the last few weeks. Every op should log, that way in case you get knocked off early on in an attack, another op might survive long enough to log what happened. Make sure the log has timestamps and shows the full user@host of everybody who joins, so you know who did what and when. 
  7. **Keep control over idlers.** This is a tough call, since many people want big channels, and that usually means letting anybody come and stay for as long as they like, even if they never talk or are just bots. There are many problems associated with idlers. If you ever lose ops, it's hard to cycle the channel. In general, it makes it harder to keep track of things. You never know if those idlers might even be distributing trojan horse viruses (intentionally or otherwise) or spamming your guests. 

### 4B. Clients and scripts for channel maintenance

Some amount of automation helps you to maintain your channel more
conveniently. We will first cover features built into IRC clients and scripts,
and save the subject of fully automated bots for the next section.

**Graphical IRC Client Shortcuts**. Most established clients (such as mIRC for Windows, XChat for Linux, or Snak for Mac OS) have aliases or mouse clicks to select different modes and user options. You should explore these shortcuts, which can be very convenient or save you time during a busy attack, but you should always know how to manually enter a command if you need it in a pinch, because the shortcuts may not always be the most effective solution. To get started, check out mIRC's right-mouse popup options in the nickname list, and also `/help /ban` to see how mIRC implements the various escalating levels of bans described previously. 

**Channel Maintenance (War) Scripts**. Many people find these channel commands very technical and confusing, and think the answer is to download some advanced script. That's just not wise. These scripts tend to be very complex and can cause mIRC to slow down or crash during heavy attacks, or even get you "hacked". Also, misuse of their powerful features could mess up your perfectly good channel, or get you banned from channels or even servers. The irony is that in order to use those scripts safely and effectively, you need to already be expert enough that you could probably write a better script on your own anyway. Our advice is for you to try to learn the above commands properly, and not rely on 3rd-party scripts as a shortcut. 

If you must try out scripts, then stay away from the usual big script
archives, because again there is no telling which scripts are actually well
tested, safe, useful tools and which are thinly disguised trojan horse
viruses. There is also no telling if a script will continue to be maintained
by its author or if are just wasting time learning a whole new system, only to
have the script become obsolete soon, a fate that befalls nearly every script
eventually as people get a life and move on. So where can you go instead?
Start with smaller scripts designed to do one specific thing, that way you can
learn by example and risk less by not modifying mIRC drastically all at once.
You can find such scripts on the home pages of the major help channels on
major networks such as EFnet, Undernet, DALnet, and IRCnet. For example,
EFnet's #IRChelp is the team that wrote this guide, and we have some scripts
on [IRChelp.org](http://irchelp.org) for mIRC and ircii. Likewise EFnet's
#mIRC has many mIRC scripts and addons at
[mirc.stealth.net](http://mirc.stealth.net). Such groups tend to keep their
scripts up to date with the latest changes in clients or servers. There is
also less risk that the scripts have serious bugs or backdoor exploits.

### 4C. Bots

"Want to run your own channel? Just get a bot!" That advice is hugely
irresponsible and just plain wrong, especially when the person probably
doesn't even know what a bot is. Even if they had the patience to learn and
got a bot set up, a lot of people don't realize a simple fact: Other than
simple accidental op of a stranger, bot problems are the most common reason
that channels get taken over or shut down. Also, if you had enough real live
humans (at least 10 as described previously), you wouldn't have much need for
bots anyway. After all, the whole point of IRC is to chat, and if you didn't
have enough people to keep your channel going without mechanical help, then as
we said in earlier sections, you should seriously rethink whether it's worth
the hassle of trying to run your own channel right now.

We assume you have already read our [FAQs about IRC
roBOTs](/misc/botfaq.html). The following provides additional advice.

What can go wrong with a bot? If not set up properly, they can be annoying or
cause problems. It can be hard to get them to leave the channel to get ops
back. They are not real users. Many people who join a channel with lots of
bots do not understand why there are so many users in a channel, and nobody
will talk to them. Bots take time and maintenance. They need to be secure. If
someone gets access to passwords, or "hacks" into a bot or the account it is
on, and takes control of the channel, the channel can be lost. If a bot is put
on a server that does not allow them, it is subject to being k-lined (banned),
and losing ops in the channel. Sometimes an attacker will get your
inappropriate bot k-lined in order to take over your channel. The list goes
on.

If you have decided you want to go through the effort of putting up a bot on a
shell, you have a lot work to do. First, you have to find a shell account (an
account on a UNIX system) which is secure and which will allow you to run
"background processes" like bots. Some ISPs claim to provide "free" shells,
but ask yourself what is in it for them? More specifically, how do they make
money, since after all that is the only purpose of being an ISP? Consider
these facts: Running a bot costs real computer resources - computer processing
time, memory, etc. Also, bots tend to be the target of [denial of service
attacks](/irchelp/nuke/) which can cost a lot in wasted bandwidth or even shut
down the whole ISP. So given all that, ask yourself why somebody would claim
to give you all that for free? That's why you should just shop around for a
reputable, cheap provider that would probably give you an account for
US$5-10/month. [Shellreview.com](http://www.shellreview.com) has information
on shell providers, and [TheList.com](http://www.thelist.com) helps you find
local providers in the US and Canada.

Second, it is assumed that users who use UNIX and bots will learn how to use
them by reading on their own. Get library books on UNIX. Read the 'man' help
files on the UNIX system. Ops on help channels are not paid. They do not have
time or interest in tutoring each new user on the complexities of UNIX or
configuring a bot, or how to use their computer. Read your manuals, read the
help files.

The "Eggdrop" bot is by far the most commonly used for IRC. There are many
websites that describe how to set it up properly, including
[Egghelp.com](http://www.egghelp.org/) and many others you can find on [Google
](http://directory.google.com/Top/Computers/Software/Internet/Clients/Chat/IRC
/Bots/Eggdrop/) and elsewhere. If you join some channels, like #egghelp or
#bots or #bothelp on EFnet and other large networks, they will usually have a
website in their topic or announce it in an autogreet message. Read everything
you can on those sites. If you do not understand it, keep reading, then go
back and read again. Eventually, things fall into place. Asking in a channel
for basic help like "How do I set up a bot?" or "How do I get/run a shell?"
will just get you kicked probably, because that's what lazy people do all the
time. If after reading the documentation you still have some specific
questions, they are more likely to be willing to help.

Third, if you _must_ use a bot, be sure to use `/motd servername` for each
server on the bot's server list to make sure it is allowed or tolerated there.
Also check from time to time, since server policies do change.

Finally, it's up to you to configure your bots, especially if you have more
than one of them, so that they behave. This means deciding whether or not to
use "+bitch" mode to control who gets ops. Not using that feature can result
in accidental manual ops of outsiders and thus takeovers, but having it can
lead to accidental bot wars where bots/ops fight over who should have ops. Use
your email list to communicate changes in the user@host masks of the ops, so
that everybody is on the same page. Never loan your bots out to other channels
where you are not actively chatting yourself, you're just asking for trouble,
and remember if those bots become the target of an attack on those other
channels, the damage will spill over into your own channels.

That's really the bare minimum, as we said there are many other sites devoted
to the subject of IRC bots, if you really care about the stability of your
channel, happy reading. Just remember what we said at the beginning of this
section: there is no substitute for real humans. Rely too much on your bots
and you _will_ regret it.

### 4D. Finding users for your channel

So, you have your newly set up channel, all ready for "customers." You know
how to handle the unruly types. Now what do you do to get people to come to
your channel? We saved this for last because it is the least technical, but in
many ways it is also the most important, because how else are you going to
grow your new channel?

Of the millions of channels out there, about half are public channels, most of
which want users to join in and chat. You can see the server's statistics of
numbers of users, servers, channels, and IRC Operators when you connect to a
server or try `/lusers`.

A lot depends on what you want to do with your channel. As we said early on,
if you started it to chat with only a few friends in private, set the channel
to +s, then /invite the people you want to your new channel. Or you can put
their nicks on /notify if they are not on line at the moment, and invite them
when the server lets you know they are on. Once you are done chatting, you can
just let the channel disappear as the last person leaves. If nobody else knows
about it, and the first person to re-create it sets the modes +s again as soon
as they restart it, you should be fairly safe and would not need a bot or 24/7
client to protect it. And if someone else happens to start the channel who
isn't one of your friends, then don't start a fight over it - just start a
different channel and let your pals know about the change.

If your goal is to have a public chat channel, you should realize that it
takes a _lot_ of work and time to build up to that. The most popular channels
probably take a team of 10 or more trusted friends working together closely
for months or even years! So how do you get started? Most people spend time
chatting in existing large channels to learn what kinds of problems their ops
have to deal with, e.g., flooders, trojan file senders, abusive users,
advertisers, etc. As you gain experience and become friends with the people
there, they eventually may invite you to become an op. Be patient, it could
take weeks, months, or even longer! _Never_ beg for ops, that's a sure sign of
a newbie and you'll just get yourself kicked. After you become an op there,
you and some of the other ops and users might one day want to get together and
start a new channel. Those friends will not only help share the responsibility
of ops and help keep the channel running smoothly, but they will also be there
to chat with new users who join your channel.

Many people are impatient and skip the step of gaining experience as an op in
big channels and jump right to starting a new channel once they make some
friends, but typically they don't have what it takes to keep that new channel
going smoothly, and soon the channel falls apart from poor organization or
gets taken over by hostile outsiders.

So, what should you _NOT_ do? We like to start with this, because it's
actually more important.

Do not "mass invite", the act of inviting many people in many channels to join
your channel, or automatically message users joining another channel to come
to yours instead. Not only is it rude and annoying, but advertising of
anything at all on IRC is highly discouraged. The IRCops will /kill
(disconnect) or /kline (ban from the server) users who insist on mass
messaging. Repeat offenders may be reported to their ISP for abuse. Ops in a
channel don't like people trying to steal _their_ users. Think how you would
feel if someone were to come to your party and try to get all your guests to
leave and go to _thier_ house! The people who usually respond to a mass invite
are often troublemakers who come just to take over your channel.

So how _do_ you get people to join your channel?

It takes patience and time. Use your website to advertise your channel and
interests. You can put the channelname in your IRCNAME. for mIRC, it's called
the "fullname" and shows up on a /whois or a /who, in the (parentheses). In
your new channel, put up a topic that will encourage people to join. Use some
imagination - every channel is about "fun chat", so you need to have a channel
name and topic that sets you apart from the countless other channels. Don't
offer ops to anybody who joins, that's like handing the keys to your new car
to random passers-by just to make friends. The only thing that accomplishes is
getting your channel/car stolen. Don't use false advertising, nobody likes
being fooled, and they just won't stay.

It may take time for users to find and read the topic, and then decide to try
your channel. You can invite individual people you have met and liked in other
channels to your channel with `/invite nickname #yourchannelname`. Be
selective. Invite only those you think would be compatible with you and your
channel "family." It's easier to avoid inviting problem users than getting
them out of your channel later. Most channel takeovers are by people who have
been kicked from a channel and want revenge. Some people are just looking for
an excuse to pick a fight.

Once your channel gets larger, more people will join. Users often look for a
channel with at least 20, 50, or more users. Putting up bots or clones of
yourself to make your channel look bigger does _not_ help. You are likely to
get K-lined for running the clones, and if people come and see there's really
nobody to talk to, they won't come back.

There are "tides" to channels, too. Some channels have several completely
different groups of people who are active at different times, depending on
their time zones and work/school/sleep schedules. IRC is open round the clock
with people from all over the world. Having real live people in the channel
helps make a channel grow and helps take care of abusers who like to flood
'sleeping' channels. Keep this in mind when selecting ops so that some
regulars are always available 24/7.

Some channels use an "autogreet", a /notice sent to users when they join, to
welcome people and convey channel rules. Keep it in a single /notice command
and keep it short. Avoid repeating it in the channel which annoys people
already there or using /msg which might open a new window and annoy people
much like an unwanted popup ad in a website. Skip the annoying color, bold,
underline, inverse, etc. - IRC is about chatting, not ridiculous text art.

A special note to people who are planning an IRC channel to support a group,
business, or some other important venture. Please, do not build an entire
little empire around a new or even non-existent channel! We've often seen
cases where people lost their brand new channels from the usual newbie
mistakes. We then find out the user had registered a domain name, built web
pages, and made other commitments all based on this channel, which is now
under the control of some uncooperative teenager in a foreign country.
Remember, IRC is a very dynamic medium, you never know when a
channel/server/network might just cease to exist. If you need a channel, make
sure it is already stable and well supported before making plans surrounding
it.
