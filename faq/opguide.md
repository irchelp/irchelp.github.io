---
title: The Operator's Guide
author: 'Thoth, SilverOz, MoonWolf, Charles'
datecreated: May 1995
status: historical
layout: default
license: usedbypermission
---

**Editor's note**: This is a classic help file dating back to the 1990s when
IRC was very new. We still keep this file here for historic value, and also
because the general information is still accurate. If you are interested in
other, more up to date help files, see [IRC FAQs and Help Files](/faq/). In
particular, we completely rewrote this guide to create [The New IRC Channel
Operator's Guide](/faq/changuide.html) which covers all the information you
need to run a stable, successful channel.

If you do read the following for historic reasons, you should be warned that
this file contains outdated advice which is either outright wrong or can get
you into serious trouble if you try to use the information as a "terrorist
manual" to attack other people. Everything on IRC has consequences just like
in real life. Troublemakers can and will be sanctioned, including reprisal
attacks from other users, official kills and bans from IRC operators, the
revocation of your Internet Service Provider account, and/or legal action.
Type /motd and read the rules of whatever server you are using, and follow
them carefully! _-Jolo_

#  The Operator's Guide

or

Now I have the @, what do I *do* with it?

_By Thoth and SilverOz, with help from MoonWolf and Charles
version 1.5 - May 1995_

This guide is available in plain text from 
<https://github.com/irchelp/irchelp.github.io/raw/gh-pages/faq/opguide.md>

or as a web page from 
<http://www.irchelp.org/faq/opguide.html>.

* * *

**(NOTE: _the commands in this guide work on Unix machines running one of the
irc-ii clients. They may not work on other machines or with other clients.
However the concepts an operator needs to understand are the same on any
platform._)**

# 1. Servers - How IRC works

## 1.1. Servers and clients

IRC stands for Internet Relay Chat. IRC is a collection of networked servers,
to which so-called "clients" can connect and then interact with other clients
connected to the same or other IRC servers. Every "person" you see on IRC is a
client of some server.

Typically, servers run 24 hours a day, 7 days a week, waiting for clients to
connect. Clients, on the other hand, typically only run when a user wishes to
use IRC, although there are exceptions to this rule, specifically bots.

When you type /server irc-2.mit.edu in ircII, you are opening a connection to
the machine irc-2.mit.edu. (Typically, though not always, the client connects
to the server on port 6667. When you type /server irc-2.mit.edu, ircII assumes
this to be the case. If you actually wanted to connect to port 6665, you can
type: /server irc-2.mit.edu 6665.)

irc-2.mit.edu, in turn, is running a server program which is connected to a
large number of other machines running server programs (usually just called
servers). It relays what you type to the other servers, and it relays what
users on those other servers type to you.

Each server keeps a list of what is going on in each channel its users are on,
and when a user on any server changes anything on that list, that user's
server notifies all the other servers of the change.

## 1.2. How servers link and why they split

Servers link up via the Internet, and send lots of traffic out to each other.

When net traffic gets heavy (not just IRC traffic, but all net traffic) then
the links get overloaded and break. This is called a "netsplit." When someone
netsplits, it looks like this:

```
*** Signoff: Thoth (eff.org dewey.cc.utexas.edu)
```

This indicates that the connection between eff.org and dewey.cc.utexas.edu is
the one that broke down, and that you are on the eff.org side of the netsplit,
while Thoth was on the dewey.cc.utexas.edu side. This does NOT mean either
that Thoth is necessarily on dewey or that you are necessarily on eff.org;
just that Thoth was on that side of the split and you were on this side.

When a link between your server and another server breaks, then anything done
on your server won't be relayed to that server, and anything done on that
server won't get back to you -- at least not until the net rejoins.

## 1.3. Things that can happen when a server splits

When a server splits it no longer knows what the other servers have been up
to, and other servers don't know what has happened to it while it was split.

So, the split server could have new ops that were made while it was split, or
new bans, or new users.

When the server rejoins, it updates everyone on what has been going on, which
is why you will see something like:

```
*** Mode change "+o Thoth" on channel #bdsm by dewey.cc.utexas.edu
```

That was the server dewey.cc.utexas.edu "synching" its information with
everyone else's and telling everyone it had a new op.

Sometimes, the server updates don't work, and servers persist in seeing their
own view of reality. For example, picture this:

```
*** Mode change "+o Thoth" on channel #bdsm by dewey.cc.utexas.edu

*** Mode change "-o Thoth" on channel #bdsm by SilverOz
```

A server, in this case dewey, opped Thoth. Then SilverOz immediately deopped
him. SilverOz most likely deopped him before her server had a chance to tell
Thoth's server that SilverOz was an op. If Thoth also tried to deop SilverOz,
from Thoth's perspective, the whole incident looked very different:

```
*** Mode change "+o SilverOz" on channel #bdsm by eff.org
*** Mode change "-o SilverOz" on channel #bdsm by Thoth
```

So, the eff.org side sees SilverOz as opped and Thoth as deopped; the dewey
side sees the exact reverse. The dewey side will now ignore anything that
SilverOz does that requires ops, and the eff.org side will likewise ignore
anything Thoth does that requires ops. The message you'll receive will look
like this:

(Thoth types:)

```
/mode * +b *!*zjohnsto*@*scu.edu.au

/kick * silveroz Go away
```

(Thoth sees:)

```
*** Mode change "+b *!*zjohnsto*@*scu.edu.au" on channel #bdsm by Thoth
*** Not channel operator (from eff.org)
*** SilverOz has been kicked off channel #bdsm by Thoth (Go away)
*** Not channel operator (from eff.org)
```

SilverOz would not even see the ban or the kick, since her server doesn't
acknowledge Thoth's ops as legitimate. Thus, people who are connected to one
server may see bans and ops that people connected to another server can't,
even though all those people can see each other and are talking. When that
happens the server is said to be "desynched."

Note here that **SilverOz WOULD STILL BE ABLE TO SEE EVERYTHING THOTH SAYS ON
CHANNEL, EVEN THOUGH THOTH THINKS HE KICKED HER OFF.** Because he kicked her
off, whenever she tries to send text to channel, she will get a message that
says:

```
*** Can't send to channel (from dewey.cc.utexas.edu)
```

Since Thoth's server doesn't think she's on the channel, it won't relay what
she says to Thoth. But, since SilverOz's server thinks she's on the channel,
it will relay whatever it sees Thoth saying to her.

Note also that SilverOz can leave the channel on her side and rejoin. From
Thoth's perspective, she will join the channel even though he banned her,
because her server will inform all other servers that she joined. Thoth's
server will simply accept that as a fact without checking the ban list.

For more consequences of splitting, see 3. How the hackers take channels (and
what to do about it)

# 2. A Guide to the Mode Command

## 2.1. What are modes?

Modes are the parameters of a channel, they define what can and can't be done.
Note that both users and channels can have modes, but the effects of a
particular mode (say +i) are different. This document deals with channel modes
only, for more information, see the files listed at the end of this document.

## 2.2. The main channel modes

There are 7 main channel modes. Which ones you set your channel to will depend
on what you want to do.

You can set modes singly or in clumps:      
`/mode * +nt` is the same as `/mode * +n`

`/mode * +t` **(NOTE: _you can also set using the channel name, e.g.
`/mode #channel +nt`
_but typing `*` is quicker. However, some clients require you to use the full
name._)**

### 2.2.1. +n

+n means "no notices". this stops people or bots sending notices or msgs to
the channel from outside. Your channel should *always* be set +n, to stop low-
lifes from flooding it.

### 2.2.2. +t

+t means "topic". If this is set, then only operators can change the topic.
You don't have to set this, but in my experience if you don't then you will
get flooded with topic changes. No idea why, it just seems to happen that way.

### 2.2.3. +i

+i means "invite only". Anyone who wants to join the channel has to be invited
by a channel op. Nice if you don't want drop-ins or as part of a defence
against people actively trying to take the channel, but otherwise annoying.

### 2.2.4. +p

+p means "private". If your channel is set +p. then if someone does a /whois
on anyone on that channel, the fact they are on that channel will not be
revealed. However, it will be obvious that they are on *some* channel. The
/whois will like like this (provided you are not on the channel yourself):

```
*** Thoth is ~thoth@disco.intercon.com (Far and Away)
*** on channels: *private*
*** on IRC via server dewey.cc.utexas.edu (UT's "I Repeat Class" server)
```

**NOTE: _A channel cannot be both +p and +s_**

### 2.2.5. +s

+s means "secret". If your channel is secret, then no answer will be returned
if someone does a /names #channel. (Of course if they are *on* the channel
when they do this they will see all the people on it. A /whois of someone on a
secret channel will look like this (provided you are not on the channel
yourself):

```
*** Thoth is ~thoth@disco.intercon.com (Far and Away)
*** on IRC via server dewey.cc.utexas.edu (UT's "I Repeat Class" server)
```

**NOTE: _A channel cannot be both +p and +s_**

### 2.2.6. +k

A channel set +k requires a keyword to enter. On EFnet (the "main" IRC net)
this keyword can contain unprintable chars. On UnderNet, only printable chars
count.

To set the keyword for channel #silveroz to mykey     
`/mode #silveroz +k mykey` or `/mode * +k mykey`

You also need the key to remove the mode... If you know it,      
`/mode * -k mykey` if you don't, see below.

### 2.2.7. +m

If you set the channel +m, then only operators or people who an operator has
set +v can talk on channel. This is a useful way of dealing with an attack by
floodbots.

### 2.2.8 +o

The +o mode is set or unset for particular users. Making a user +o gives the
user operator status on the channel. Making a user -o removes operator status.

### 2.2.9 +v < nickname >

The +v mode simply gives someone on a +m channel permission to send text to
the channel, even if he or she is not an op. (All ops automatically have
permission to speak.)

### 2.2.10 +l < number >

This sets a limit on the number of people that can join the channel. This mode
does not really guarantee that no more than the set number of people will be
on channel. For instance, setting this mode does not kick anyone off if the
channel is over the limit. And, people who split in totally ignore the +l
limitation (just like they ignore every other channel mode limitation.

### 2.2.11 +b < pattern>

This mode bans any user who matches  from joining. This is covered in-depth in
section 2.6.

## 2.3. Clearing channel modes

Modes are normally set and cleared by the mode command as follows:

    /mode * -n
	/mode * -nt 

You can combine mode commands too. Supposing the channel was
currently +i +n +t (usually written as +int)

You can remove the +i by

     /mode * -i

But supposing you want it to be -i but +s?

     /mode * -i+s

You can clear all modes (including a keyword you don't know...) by typing:

     /eval mode * -$M 

**NOTE: _eval and $M are both commands specific to the ircII IRC client. If you
are not using ircII, the above command may not work for you._**

## 2.4. Opping and de-opping

To give someone ops, you use the mode command again:

     /mode * +o SilverOz

To de-op them:

     /mode * -o SilverOz

You can op or de-op up to 3 people at once:

     /mode * +ooo SilverOz Tangent Agatha
/mode * -ooo SilverOz Tangent Agatha

**Note _that the number of "o"s has to match the number of people._**

## 2.5. Kicking

To kick someone off the channel, you use the /kick command:

     /kick * SilverOz

You can add a comment the person will see when they are ejected:

     /kick * SilverOz Good bye and good riddance! 

You can only kick one person at a time.

This is one of those commands it is nice to have an alias for -- see the
section on scripts for how to write an alias. Also note that it's often
adviseable to ban a user before you kick them -- that way they don't jump back
on channel during the interval before the ban takes effect. See section
2.6.1.5 for further details.

When banning, the nick and user and host info are written like this:

     nick!user@host1.host2.suffix e.g. SilverOz!zjohnsto@angus.scu.edu.au
or felix!f-t-cat@whack.cartoon.org

So, anything to the right of the ! is a nick, anything between the ! and the @
is the user portion (also called account, or account name) and anything to the
right of the @ is the host.

You can use wildcards in bans, special characters that stand in for a
character or group of chars.

? means "any single char" * means "any group of chars. So "S?lverOz" will match
"SilverOz" and "SolverOz" and "SklverOz" but not "SiilverOz."

"\*Oz" will match "SilverOz" and "AgOz" and "SilverOOz" but not "Silver" or
"SilverOzz."

"\*.hacker.com" will match "bozo.hacker.com" and "luser.hacker.com" but not
"hacker.com" itself.

**Note _that some users can change their account name as easily as the rest of
us change our nicks. This means you will have to ban their entire host, or
possibly their entire domain, to keep them off the channel._**

### 2.6.1. Types of bans and when to use them

There are several kinds of bans, each one useful for a different purpose,
although there are one or two (notably "screwbans" the ones with lots of
single ? wild cards in them) which seem to be completely useless.

#### 2.6.1.1. Nick ban

The correct format for a nick ban is:

`/mode * +b nick!*@*`  This bans anyone with the nick "nick." E.g. 
`/mode * +b SilverOz!*@*`
will ban anyone with the nick SilverOz from the channel. Of course if they
change their nick, then they can slide right past the ban.

This ban is pretty useless against people, but can be used to get rid of bots,
who usually don't change their nicks. (Some bots do, though. Incidentally, on
EFnet, you can see the bans on any channel, whether you are on the channel or
not, by typing /mode # channelname b.) It can also be used to get rid of an
idle user you have kicked who has auto-rejoin set on, and immediately comes
back on channel. In that case, ban them, then unban about 5 mins later.

#### 2.6.1.2. User@host ban

The correct format for a user@host ban is as follows:

     /mode * *!*user*@*host.suffix  

This is your standard everyday ban. It bans all nicks (`*!` means "all nicks")
from their username (*user* means their username, plus the * at the beginning
takes care of the ~ mark you sometimes see, and the * at the end insures that
the username you provide "fits" into the space -- no more than nine characters
will fit), from all machines in their domain.

E.g., to ban SilverOz who is zjohnsto@scu.edu.au you would type:

     /mode * +b *!*zjohnsto*@*scu.edu.au

To ban Luser who is lame@mm.elcheepo.edu you would type:

     /mode * +b *!*lame*@*elcheepo.edu  

**Note _that for the non-US address (.au means Australia) you leave 3 parts of
the host name, for the US one, you only leave 2._**

Most scripts would write the ban as:

`/mode * +b *!*lame*@*.elcheepo.edu`  which works OK unless you get someone
with a 2 part hostname, e.g., luser has another account, joe@hacker.com, with
access to joe@phreak.hacker.com and joe@hacker.com.

`/mode *!*joe*@*.hacker.com` will ban the first account, but not the second.

#### 2.6.1.3. Site ban

The format for an effective site ban is as follows:

     /mode * +b *!*@*host.suffix 

This bans everyone from a particular domain or machine, no matter who they are,
or what their nick.

For example, if you wanted to ban SilverOz and everyone from SCU, you would
type:

     /mode * +b *!*@*scu.edu.au

Then it wouldn't matter who the person was, if they were on an scu machine,
they will be banned.

You can also ban users from particular machines, so if you wanted to ban users
from alsvid.scu.edu.au but not angus.scu.edu.au, you could type

     /mode * +b *!*@alsvid.scu.edu.au

#### 2.6.1.4. Banning by IP address

Some servers don't give the machine name when you do a whois, they give a
series of numbers, which is the "IP address".

A numeric address is actually the person's "IP" address, and sometimes simply
banning the whole IP address is good enough. E.g.:

     /mode #bdsm +b *!*zjohnsto*@203.2.20.1

If the person being banned actually has access to other hosts on that network,
or can change to another IP address that they own, it gets more complex. There
are three basic types addresses that you can get when you register a network:
Class A, Class B, and Class C. A Class C network is a small network - no more
than 255 hosts on it, and is the most common you should see. In a class C
network address only the last number will change. If I knew SilverOz was on a
class C network, I could do a site ban on her with:

     /mode #bdsm +b *!*zjohnsto@203.2.20.*

A class B network is larger, up to 65535 hosts, and the last two components of
the address can differ. For a class B you would use

`/mode #bdsm +b *!*zjohnsto@203.2.*` 
Class A is 16777215 hosts and all three of the final compoentents can change.
There are only 255 class A networks - all owned by large corporations. Many
networks, especially the larger ones, are subnetted, which means that even if
the hacker is on a large network, the piece they are on can probably be banned
simply by wildcarding the last part of the address.

Ok - cut to the chase.

Networks from 128-191 are Class B.

Networks from 192-223 are Class C.

Treat everything else as Class A.

You can ban by `/mode * +b *!*zjohnsto*@203.2.20*` but that will ban people from
203.2.202.4 for example, quite likely a completely different domain. The
moral: include the ending period when banning by IP address.

Now you know more than you ever wanted to about IP network addressing.

#### 2.6.1.5 Efficiency

It's possible and desirable to make your kicks and bans more efficient. For
instance, you should always deop a user before you ban him or her. Why?
Because if you don't, the user could deop you or kick you first.

This task can be made simpler and more efficient by combining modes. For
example, to remove Thoth from the channel, you could do the following:

```
< Commands entered by SilverOz: >

/mode * -o+b thoth *!*thoth*@*intercon.com
/kick * thoth Get out you wanker


*** Mode change "-o+b thoth *!*thoth*@*intercon.com" on channel #bdsm by SilverOz
*** Thoth has been kicked off channel #bdsm by SilverOz (Get out you wanker)
```

The mode change command effectively de-opped Thoth first and then
instantaneously banned him.

### 2.6.2. Clearing bans

To check what bans are on the channel, type

     /mode * b 

**(NOTE: _This works regardless of whether you are on or off channel, but of
course if you are off channel you have to use the channel name, /mode #channel
b._)**

To clear old bans you have to remove them *exactly* as they were written - a
terminal with cut and paste is invaluable for this. If you make a mistake, the
system won't warn you, it will tell you the ban is removed, even when it
hasn't been. You must get the ban exactly right.

To clear a ban:

     /mode * -b

e.g.  to clear the ban \*!\*zjohnsto\*@\*scu.edu.au
`/mode * -b *!*zjohnsto*@*scu.edu.au`

### 2.6.3. Why a ban may not work

Sometimes you ban someone, and they come right back onto the channel anyway.
This could be that you didn't ban them properly in the first place! But if the
ban looks OK, then there may be something else....

#### 2.6.3.1. Too many bans

A channel can only hold 20 bans at a time. If you try and ban someone and
there are already 20 bans up, then you won't get a mode changed message, you
won't get anything at all.

If that happens, then clear one or more bans, and try again.

####  2.6.3.2. Similar bans

If there is already a ban in place that is similar to the one you are trying
to place, then yours won't work. Remove the bad or redundant ban, and try
again.

How similar is similar, you ask? Well, a ban is deemed "too similar" if the
nickname portion or the user and host portion of the ban match the parameters
of any other already existing ban.

#### 2.6.3.3. Desynched servers

This is a nasty problem. If a server becomes desynched, then a hacker can get
on the channel on that server because the ban you just placed won't be in the
split server's memory. Thus, the hacker can leave and rejoin at will, and to
you, it looks like the hacker joined, ban or no ban. See Section 1.3 What
happens when a server splits.

#### 2.6.2.4 Split servers

When a split server rejoins, all the people on the split server join the
channel on the other server, period. Bans do not matter. You can kick them off
once they have joined, of course, but bear in mind that this is not always a
good idea, necessarily, especially during a takeover attempt, because they
will still be able to see what you say, but you won't see what they are
saying!

By the way, there is no announcement that the person that just joined did so
because of a split -- it looks exactly like a regular join.

# 3. How hackers take channels (and what to do about it)

Time for a little soapbox sermon, on IRC takeovers and counter-strategy.

IRC channel takeovers happen. Why? Bored dweebs with way too much free time,
looking for "thrills." People who feel the current channel ops have insulted
or annoyed them. People just seeing if they can.

Your options? Basically, you can try one of three options:

  1. Appease them.
  2. Ignore them.
  3. Defend the channel.  

The problem with appeasing channel hackers if that this often leads them to
believe that hacking or threatening to hack your channel is a good way to
intimidate or manipulate you. Experience shows that appeasing a channel hacker
frequently results in continued harassment and continued hacking. Basically, if
you want to try appeasement, you should make sure the hacker does not go away
with the idea that his or her hacking was worth it. On the other hand, this may
defeat the idea of appeasement.

Ignoring the hackers is a valid option, particularly in the case of small
channels. If you don't need the hassle of trying to take back a channel -- and
it's a pain in the ass no matter how you look at it -- then your best bet may
be to simply make a new channel and wait the hacker out. Most hackers don't
really care about the topic of the channel, have no desire to maintain a
channel, and will leave after a day or a week or a month of causing trouble.
At any rate, the idea here is to not fan the flames, to let things die by
neglect. Completely /ignoring the hacker is probably a good move.

The problem with ignoring the attackers is that it's an inconvenience and the
hackers know it's an inconvenience. They are doing it to irritate and
manipulate you and your channel. If you let them do it once, they may well do
it again and again. In my view, the only way ignoring a hacker will really
work in the long run is if you really *don't* care about what channel you are
on, if you and all your users can all go from #ductape to #ductape1 and be
just as happy. If you really do care, ignoring won't do for long.

The third option is to try and defend your channel. Here are some very basic
defences. If you really want to fight hard, you will need good IRC skills,
programming ability, good bots, and a hell of a lot of time.

Some general rules:

  * There are no absolute rules. Every rule allows for a commonsense exception.
  Use your judgement -- but on the other hand, be very careful. Think about
  what you are doing.
  * Take your time and do things right -- but take your time with haste. :)
  * Don't op someone unless you are sure they are who you think they are. Never
  op someone solely based on their user@host.
  * Always de-op people who come in from splits with ops. You can always re-op
  them later.
  * If you think the channel is under real heavy attack, then make it +i. 

Make sure all ops are mode +i themselves (/umode +i) and then get them to
change nicks. Also, ban all accounts or hosts that you think are dangerous.
This will prevent everyone except people who slide in from a split from
figuring out who the ops are on channel (unless there's a spy on channel). Why
all the effort to prevent people from finding out the nicks of the ops? To
prevent nick collidions (see section 3.2). Of course, making the channel +i
means that no one can join the channel unless they know the alternate nicks of
the ops, so it will disrupt normal life quite a lot.

## 3.1. Op/friend impersonation

What it is:

One of the simplest ways is to take the nick of someone you know is a usual
channel op. Then you join, and pretend to be that person. You ask for ops,
saying its a borrowed account, or you just wait for someone to op you.

What to do about it:

Yes, it seems incredible, but *lots* of people will op on nick alone. The
moral is *always* do a /whois before opping someone.

Most scripts like Toolbox Axis and (ugh) Phoenix op on user@host. Beware of
using a script to auto-op people as usernames can be faked.

## 3.2. Nick colliding

What it is:

If you are using the nick Fred, and someone on a split server chooses that
nick, when the servers rejoin, you are both always automatically /killed
(kicked off of IRC) by each other's server. Hackers are OK with this, because
they make sure the thing that is taking your nick is just a bot. They
themselves are not killed because you were not expecting them and did not put
up a bot that used their nickname. Obviously, when you were killed, you lost
ops on whatever channel you were on, so you were no longer in a position to
defend the channel.

If the nick collider successfully collides every op on the channel, then
nobody is around to deop him when he gets opped by the server. Since he's the
only op, he wins...sort of.

Why sort of? Well, this kind of thing always happens when the net is unstable.
Thus, he may successfully collide everyone, only to split off again. If you
can regain ops during that interval and change your nick, you have a chance to
avoid getting collided again. The smarter hackers, though, often have spies --
either their own clients or someone else's -- sitting on the channel on your
side of the split, telling the hacker who the ops are.

What to do about it:

  1. Spread ops around to all reliable people. Make the hacker spend time
	 creating more bots.

  2. Make yourself +i. Don't make it easy for the hacker to display the ops' nicknames.

  3. Always, always, deop server ops. They can be redone; the hacker becoming
	 the only op on channel is not so easily undone.

  4. Change your nickname often.

  5. Kick off all suspicious accounts. Make the channel +i if necessary.

  6. Put a client on the split server, if possible, or at least on the same
	 side of the split as the split server. Have that client join the channel
	 on that side and keep you informed about what is going on there. It's
	 better if it's an account the hacker won't know is yours.

  7. Create bots to nick collide the hacker. Bring a ton of bots on the channel
	 and op them all.

  8. Bear in mind: 
     **IF YOU KICK THE HACKER WITH THE MISTAKEN IDEA THAT HE WILL
	 THEN NOT SEE WHAT YOU SAY OR THE NICKS YOU GIVE YOUR BOTS AND YOURSELF,
	 THINK AGAIN!** Not only will this not have that effect, but you will not
	 even be able to tell when he splits off again, at least not easily. The
	 only time that your nick matters is when there is a split, so change your
	 nick and your bots' nicks AFTER the hacker splits off again.

  9. Be creative and think. A good hacker already knows you will do these
	 things. Try to think like the hacker thinks. How would YOU go about taking
	 over a channel?

  10. Be persistent. If you hang in there long enough, eventually you will get
	  the channel back. In the meantime, postcards, letters, e-mail and phone
	  calls to the hacker's service provider, the hacker's servers and any
	  other method you can think of to make the hacker's life difficult are
	  reasonable tools to use. You didn't ask for the aggravation, and you are
	  not bound by the hacker's "rules of the game."

## 3.3. split server

What it is:

A server may split and no one from your channel is on that server. If someone
joins it while the server is split, they get ops (because as far as that
server is concerned, no one was there).

When the server rejoins, it will tell all the other server those people have
ops.

What to do about it:

Always de-op people who come in opped from split servers. you can always op
them later. If you are serious about your channel, you should run a bot that
does this, else you can get scripts that can do it.

If someone comes in opped, you de-op them, they leave the channel, and a few
minutes later, back they are again, opped...ban them. Once is accident, twice
is hacking. To get opped twice like that, they would have either had to deop
you on their server, which is bad, or they would have had to leave the channel
and rejoin again during the split -- a lot of effort to go to, and for not
much good purpose, except to grab ops. [_Of course if you know them, use
discretion... maybe /msg them see what is going on._]

## 3.4. desynched server

What it is:

[See the section on servers](#1-servers---how-irc-works)

This basically boils down to you having ops on one half of IRC, and the
hackers having ops on the other half (or nobody having ops on the other half).

What to do about it:

The solution is simple (in theory): If you have ops on your side, make the
channel +i. Then kick everyone off. Finally, leave and come back (come back
QUICKLY!). You will be reopped on all servers, because your server will
perceive you as being the only person on the channel (everyone else was kicked
off, as far as your server is concerned). The side on which you were not opped
will see:

```
*** Thoth has left channel #bdsm
*** Thoth (~thoth@disco.intercon.com) has joined channel #bdsm
*** Mode change "+o Thoth" on channel #bdsm by dewey.cc.utexas.edu
```

Can this go wrong? You bet it can. If someone -- anyone, from any connected
server -- joins the channel between the time you leave and the time you come
back, THEY -- not you -- get opped from your server. Worse, YOU don't get
opped. When you join, you see:

```
*** Thoth (~thoth@disco.intercon.com) has joined channel #bdsm
*** Users on #bdsm: Thoth @SomeDude
```

This is a sure sign you timed it wrong. If the other person is the hacker, you
are in deep trouble, if they are a normal user you can try and persuade them
to leave.

Also, bear in mind that this is not a particularly useful tactic against
reasonably competent hackers. Such hackers will simply put up bots that auto-
deop server ops. When they see your server op you, they'll deop you and you'll
be right back where you started.

# 4. Some useful scripts

There are lots of big script packs on the net. Deturbo, Axis, Phoenix, etc...

I personally don't like a lot of them because

  * they are big and take memory
  * they are over-filled with features, most of which you won't use
  * people who use them seldom understand them, and get caught by surprise when
  the script kicks in. (Auto-kickers for things like flooding are prime
  examples).
  * Many versions floating around are hacked, and unless you can read IRC
  script and are willing to plough through it all you can't be certain you
  haven't got a hacked one.
  * Some of them are full of useless things like screwbans and splatterkicks.
  Or else they have lots of attack features which do nothing but desynch the
  net.

Most users only need some of the standard scripts that come with irc-ii and
some custom code for decent bans, msgs to all ops, etc.

Whoever installed irc-ii should have also installed the script directory, and
you can load the standard scripts by typing

`/load scriptname`  If it doesn't work, chat to them.

## 4.1. standard scripts

There are *lots* of scripts that come with irc-ii, and they are worth looking
through if you want to learn irc-ii scripting.

The two most useful ones are:

### 4.1.1. tabkey

This helps you deal with /msgs.

it puts the nicks of peopel who /msg you, or who you /msg into a list, and you
can recall the nicks by pressing tab. so if you got a msg from SillverOz, you
can press tab, and

`/msg SilverOz` will appear on your command line, ready for you to type your
msg. Saves those embarassing moment when you forget the / and your msg is
broadcast to the channel, and saves the annoyance of typing, or mistyping,
someone's nick. However, it doesn't save those embarassing moments when you tab
up the wrong person and hurriedly type and send your message without watching
who it's really going to.

*Susan* What do you think of Asshole for ops?

*Asshole* Will you sponsor me for ops?

-> *Asshole* I think Asshole would suck for ops. He is an idiot.

### 4.1.2. Cursor

Cursor gives you the ability to edit your command line using the arrow keys,
with left arrow and right arrow moving along the current line, and up arrow
and down arrow moving through your command history.

## 4.2 Writing aliases

Sometimes you just want to be able to repeat yourself. Your channel may have
rules of behaviour, or other things you tend to say often. You can use simple
aliases to automate those.

My preference is to use notices to communicate administrivia like rules
announcements, coming events, ftp sites etc. For one thing, it means the
output is less likely to get lost in the scroll because it looks different. An
example notice is:

	/alias rules notice * 

RULES: Don't shout, don't talk about politics and don't
annoy the ops!

This will send a notice to everyone on the channel when you type /rules.

if you want it to appear as normal IRC speech: /alias rules say RULES: Don't
shout, don't talk about politics and don't annoy the ops!

You can also use alias to kick someone:  `/alias k kick * $0` which allows
you to type `/k Luser Get off my channel` instead of having to type 
`/kick * Luser Get off my channel`

## 4.3 Script Paks

If you do want a script, then get a smallish one (so it is reasonably quick
and doesn;t take scads of memory) written by a reputable person and get it
from that person;s FTP site.

I have tried both DaveMan's ToolBox and DeadelviS's DeTurbo and they both seem
to be quite good.

You can get DeTurbo from DeadelvisS's FTp site:
<ftp://ftp.eyecandy.com/pub/irc/DeadelviS/>
_(DeadelviS has
a few script packs you might want to check, zer0 has also been recommended)_

You can also get ToolBox from there or from DaveMan's own site at
<ftp://imageek.york.cuny.edu/pub/daveman>

**NOTE! _IT is very important you only get a script from a reputable source
and you get it from a known site, such as the author's own ftp site. A
"backdoor" is very very easy to write, and a 2 line alias hidden in a 200k
file can be used to access your account._**

# 5. Other Useful Files

## 5.1. FAQs

The FAQs (Frequently Asked Questions) for both EFnet and UnderNet are
regularly posted to alt.irc. They can also be found on various ftp sites.

[ftp://rtfm.mit.edu/usenet/alt.irc/](ftp://rtfm.mit.edu/usenet/alt.irc/)

## 5.2. IRC Primer

This primer is an absolute gem, giving novice (and some experienced) users a
good grounding in IRC.  Available from:

[ircprimer](/faq/ircprimer.html)     
<ftp://nic.funet.fi/pub/unix/irc/docs/IRCprimer1.1.txt>
<ftp://cs-pub.bu.edu/irc/support/IRCprimer1.1.txt>

* * *
last modified Jan 20, 1997
