---
title: An IRC Tutorial
layout: default
author: Ronald van Loon (rvl)
license: irchelp
redirect_from:
  - /irchelp/irctutorial.html
---

# An IRC Tutorial

Original web version with over 100 links at [http://www.irchelp.org/irchelp/ir
ctutorial.html](http://www.irchelp.org/irchelp/irctutorial.html)

## Table of Contents

1. Introduction and Basics
    1. Introduction to IRC
    2. Quick Start
    3. Basic IRC Commands

2. Chatting on IRC
    1. Public Conversations
    2. Private Conversations
    3. File Transfer

3. Beyond the Basics
    1. Channel Operators
    2. Channel Maintenance
    3. Server Commands
    4. Conclusion

Credits:     6/26/1991 - originally written by [Ronald van Loon
(rvl)](http://www.xs4all.nl/~rvloon/).     1/07/1997 - update & HTML
translation by [Joseph Lo (Jolo)](http://deckard.mc.duke.edu/~jyl/).
8/17/2004 - revised by [Joseph Lo (Jolo)](http://deckard.mc.duke.edu/~jyl/).

* * *

# 1. Introduction and Basic Commands

## 1.1. Introduction to IRC

### What is IRC?

[IRC (Internet Relay Chat)](/irchelp/) is a multi-user, multi-channel chatting
system. Imagine sitting in front of your computer and "talking" through typed
messages with either one person or many other people from all over the
Internet, all in real time! Best of all, once you get set up, chatting on IRC
is totally free!

### Some Other Help Files

There are many [help files](/irchelp/faq.html) designed to introduce you to
the exciting and sometimes bewildering world of IRC. This tutorial that you
are reading now is intended to walk you through the important commands one by
one so that you can learn by doing. If you are brand new to IRC, you may wish
to first read the very short [IRC Prelude](/irchelp/new2irc.html) (or its many
[translations](/irchelp/misc/)) to get yourself oriented. Then later you may
check out one of the standard references, such as the alt.irc newsgroup's
[frequently asked questions](/irchelp/altircfaq.html) (FAQ) list, or the long
but extremely thorough [IRC Primer](/irchelp/ircprimer.html) which is
organized like a textbook.

### Client / Server

IRC is based on a client-server model. You run a client program on your own
computer which connects you to a server computer on the Internet. These
servers link to many other servers to make up an IRC network, which transport
messages from one user (client) to another. In this manner, people from all
over the world can talk to each other live and simultaneously.

To join in the fun, all you need is an Internet Service Provider to get you
connected to the Internet (if you're able to read this web page, you're
already connected), and an IRC client program. The most popular clients are
[mIRC](/irchelp/mirc/) for the Windows operating system,
[ircII](/irchelp/ircii/) for UNIX, and Ircle for [Macintosh](/irchelp/mac/). A
good provider should have installed one of these for you already, if not you
can download them yourself for free. (Ircle and mIRC are shareware, meaning
you get a one month free trial, then if you like it and keep it, you are bound
by an honor system to pay the author a modest fee.)

### Networks, Servers, and Channels

Once you are set up with a provider and a client, you are in control. Choose a
nickname you wish to be known by, then connect to one of the many different
[IRC networks](/irchelp/networks/) catering to different geographical
locations, interests, or philosophies. The largest networks have tens of
thousands of people online at any given moment, drawn from an order of
magnitude or more of regular visitors. These people create thousands of
channels (sometimes incorrectly called "chat rooms") where people may meet and
mingle. You may join these channels and participate in the group discussion,
or you may elect to chat privately with individuals.

Conversations on a channel are like those at a party: everybody who is present
hears everything that everybody else is saying. If somebody is late to the
party or leaves early, however, they will not hear what is said in their
absence. All channels on IRC have names starting with #, such as #irchelp
where you can get technical IRC help, or #new2irc where new users are welcome
to join and chat. Usually, the name of the channel shows what it's for, but
not always.

##### [ contents | 1 | 2 | 3 | bottom ]

## 1.2. Quick Start

We will assume you or your provider has installed one of the mainstream IRC
clients already. If not, see the links in the previous section. Once
installed, most clients have shortcuts for getting started quickly, using
default nicknames, servers, and ports on those servers. (To help distribute
the load better, each server permits connections on many different openings or
"ports", usually leading to redundant connections to the same IRC network.)

For example, mIRC has a connection dialog that lets you pick your nickname and
suggests some server choices. From the UNIX prompt, ircII may be launched just
by typing `irc` which should connect you using your login name as your
nickname and a default server. Ircle has a few icons in its folder such as
#macintosh and all you need to do is double-click on them to join that
channel, which happens to be on a network called Undernet.

If these quick starts don't immediately work for you, don't worry, they are
just like teaser movie previews compared to the full IRC experience. In the
next section, we will show you how to make a proper connection to a server,
then how to list available channels and join them, as well as how to find your
friends and like-minded people.

##### [ contents | 1 | 2 | 3 | bottom ]

## 1.3. Basic IRC Commands

Every IRC client has an input area where you can type what you want to say or
issue IRC commands. You issue IRC commands by typing on a new line something
beginning with a / (forward slash) character. Anything that does not begin
with a / is assumed to be a message you are typing to someone or some channel.
In the following I will describe the more common commands used in everyday IRC
life. Commands you are supposed to type will be shown in `**red**`, while text
which you will see in response will be shown in `**blue**`.

In addition, the graphical clients such as mIRC or Ircle allow you to use a
mouse to point and click your way around IRC, so that you don't have to type
many of these commands manually. You should still learn the commands properly,
because often they are the only way to specify precisely what you want done,
and also they are often faster and easier than navigating through the
labyrinth of buttons, menus, and dialogs that are supposed to make your life
easier.

**/HELP [optional command name]**

The first and most useful command is the on-line help built into all good IRC
clients just by typing `/help` where you normally type to chat. This should
bring up a list of all commands. You can also get specific help for a command,
such as `/help who` for the /who command.

You can get a quick introduction to IRC built into your client. mIRC users
type `/ircintro` while ircII users type `/help intro` or `/help newuser`.

If you are not sure about the spelling of a mIRC command, just type in the
first few letters. The help window, which shows commands arranged
alphabetically, will open to approximately the right place so that you can
choose to learn about a specific command.

If you are not sure about the spelling of an ircII command, type the first few
letters and press the ESCape key twice. ircII will give you a listing of
COMMANDS and ALIASes that start with that prefix. Don't forget the "/irchelp/"
in front of the command, though.

For example, you type the following:


    /W <ESC><ESC>


You get as a response the following (this is just an example. Your screen may
show more or less aliases or commands):


    *** Commands:
    ***     WAIT           WALLOPS        WHILE          WHO
    ***     WHOIS          WHOWAS
    *** Aliases:
    ***     W              WA             WH             WI


**/SERVER new-server-hostname**

Each server is known by a "hostname" such as irc.ais.net, us.undernet.org,
irc.dal.net, or irc.webbernet.net, which are sample servers for the networks
[EFnet](/networks/servers/efnet.html),
[Undernet](http://servers.undernet.org/),
[DALnet](http://www.dal.net/servers/), and
[IRCnet](/networks/servers/ircnet.html), respectfully. Just specify
the hostname to connect or switch to that server. For example:


    /SERVER irc.psinet.com

You then see the following messages indicating your client has successfully
connected to that server.


    *** Looking up your hostname...
    *** Found your hostname, cached
    *** Checking Ident
    *** Got Ident response
    *** Welcome to EFNet IRC - the Internet Relay Chat Network foo
    *** Your host is irc.psinet.com, running version 2.8/hybrid-5.3
    [remaining server messages truncated]


**/NICK new-nickname**

Change the nickname by which you are known. Nicknames are usually limited to 9
characters. For example, if your default nick was "foo" and you want to change
it to "YourNick":


    /NICK YourNick
    *** foo is now known as YourNick


**/LIST**

Lists IRC channels, number of users, and topic for each. This is how you find
places to go meet people and chat.


    /LIST
    *** Channel    Users  Topic
    *** #test      1      this is a test channel
    *** #IRChelp   18     Ask questions on the channel or see www.irchelp.org
    [remainder of list not shown]


If you're on a big network, this list may be **very** long, up to many
thousands of channels! It may even cause you to flood yourself off so that you
get disconnected from the server. If that happens, try using different servers
on that network, or instead use the searchable [EFnet channel
list](/irchelp/chanlist/) web page which is updated hourly, or the less
frequently updated but more comprehensive [Liszt channel
list](http://www.liszt.com/chat/).

You can also search for specific keywords by using `/LIST keyword` in mIRC, or
`/LIST *keyword*` in ircII. Note this may or may not be any faster or safer
than a full list depending on the network. On networks like EFnet and IRCnet,
for example, your client gets the full list first and then does the filtering
internally before displaying matches to you. On Undernet, the server filters
the list and sends only the matches to you, which can be much faster if you're
on a slow modem.

**/NAMES #channel-name**

Shows the nicknames of all users on that channel. While theoretically this is
supposed to work whether or not you are on that channel, in practice most
people these days are set to be "invisible" and thus do not show up on such
queries unless you are in the same channel already.


    /NAMES #demo
    Pub: #demo   @YourNick +buddy DeepMpact @FunGuy PrettyGrl


The "@" symbols show that YourNick and FunGuy are "channel ops", and that
buddy has been given a "voice". These terms will be described in more detail
in the channel modes section later.

**/WHOIS nickname**

Shows information about the nick specified.


    /WHOIS buddy
    *** buddy is abcd@dialup-6.provider.com (Think different.)
    *** on channels: @#demo #test123
    *** on irc via server irc.psinet.com (PSI Net EFNet IRC Server)


The "abcd@dialup-6.provider.com" looks like an email address but actually abcd
is buddy's identifying "username" on dialup-6.provider.com, which is the
"hostname" of the computer buddy is using for IRC. One cannot arbitarily
change the hostname, because it is the computer's address on the Internet, and
it is required in order for the IRC server to communicate with one's computer
properly. Next, in the parentheses, buddy shows a personal message instead of
the real name which is supposed to go there.

The second line shows he is on the "public" channels #demo and #test123, and
the @ symbol means he is an operator on #demo. It doesn't show other, "secret"
channels he might be on. Finally the third line shows which IRC server he is
using. We will discuss public/secret channels and operators later in part 3.

**/AWAY away-message-here**

Leave a message explaining that you are not currently paying attention to IRC.


    /AWAY getting coffee, be back in 5 mins
    You have been marked as being away


If your friend does /whois YourNick now, they will get the 3 lines as
described in the /whois section above, plus a final line saying:

*** YourNick is away: getting coffee, be back in 5 mins

/AWAY without any additional argument will remove the away message.


    /AWAY
    You are no longer marked as being away (or something to that effect)


**/QUIT [optional farewell message]**

Exits IRC (also leaves any channels you may be on).


    /QUIT hasta la vista, baby!
    *** Signoff: YourNick (hasta la vista, baby!)


##### [ contents | 1 | 2 | 3 | bottom ]

* * *

# 2. Chatting on IRC

The point of IRC is to chat, and as mentioned before, you may join in public
discussions on channels or talk privately to one person at a time. We will
show you how to do both here.

## 2.1. Public Conversations

We previously learned how to find channels using the /list command. Here will
talk about how to join those channels and talk on them.

There can be many thousands of channels on the largest networks, each with
anywhere from one to hundreds of people. Each channel is controlled by channel
operators or "ops" who have absolute authority over their channels. We will
discuss more about that later. You should always observe basic netiquette when
visiting other people's channels.

**/JOIN #channelname**

Changes your current channel to the channel specified. If the channel does not
exist already, it will be created and you will be in charge of the new channel
and be a channel operator or "op" - more on that later.


    /JOIN #new2irc
    *** YourNick (foo@hot.school.edu) has joined channel #new2irc
    *** Topic for #new2irc: New users welcome! Questions answered with a smile! ;)) RC
    *** Topic for #new2irc set by Otiose on Sun Aug 16 10:28:06 1998
    *** Users on #new2irc: YourNick FunGuy @pixE @MsingLnk @^Chipster
        [rest of list truncated]


When you join a channel, everything that everybody says is preceded by their
nicknames so others can tell who is saying what. For some IRC programs, it
doesn't show your own nickname, but don't worry, other people still see it!

You type:

`hello world!`

but everybody else sees:

`<YourNick> hello world!`

**/ME does something**

Performs an action on a channel. Unlike talking normally, actions do not start
with <YourNick>. Use /ME in the third person (verbs like "is", "does", "runs",
etc.).


    /ME is a pink bunny

    YourNick is a pink bunny


**/LEAVE [#channel_name]**

Leaves the specified channel, or if no channel is specified, leaves the
current channel.

##### [ contents | 1 | 2 | 3 | bottom ]

## 2.2. Private Conversations

**/MSG nickname message**

Use the /MSG command to send someone a message that only that person can read.
Say you are "YourNick" and you want to talk to your friend "buddy".

`/MSG buddy hello, how are you?`

On your screen, you would see:

`-> *buddy* Hello, how are you?`

On buddy's screen, if he is using ircII he sees:

`*YourNick* Hello, how are you?`

To answer such a message using ircII, buddy would type:

`/MSG YourNick Fine, thanks!`

If buddy is using mIRC, he will instead get a new "query" window dedicated to
this private conversation with you. Everything you /MSG him goes to that
window. As soon as he responds to you in that window, if you are also using
mIRC you will likewise also get a "query" window.

**/QUERY nickname** and **/QUERY**

In mIRC, if you initiate a /MSG you don't get a "query" window until the other
person responds to you. You can set up a "query" window on your side right
from the beginning by using the /QUERY command:

`/QUERY buddy`

In ircII, you can have a private conversation by using /MSG nickname
repeatedly, but that can get cumbersome. That's where the QUERY command comes
in handy. When you issue the above command, all subsequent text will be send
as private messages to that nickname, except for "/irchelp/" commands. Use
`/QUERY` with no nickname to end a private conversation.

Here's an example of a private conversation between you as "YourNick" and your
friend "buddy", as seen from your point of view. Statements from your IRC
client program start with "***", outgoing messages from you to buddy start
with "-> *buddy*", and incoming messages to you from buddy start with
"*buddy*".



    /QUERY buddy
    *** Starting conversation with buddy
    Good morning
    -> *buddy* Good morning, buddy.
    *buddy* Hi, YourNick. How is life ?
    Pretty good. I have to get back to work, bye.
    -> *buddy* Pretty good. I have to get back to work, bye.
    *buddy* OK, talk to you later.
    /QUERY
    *** Ending conversation with buddy


**/CTCP nickname PING**
**/CTCP #channel-name PING**

Sometimes you are talking to your friend and suddenly it seems like he's not
paying attention. This may be due to server "lag" on either end, which is the
roundtrip delay between when you say something and your friend sees that
message. Normally lag is less than a few seconds even when you are talking to
people on the other side of the planet, but sometimes the servers temporarily
suffer from serious lag. If you suspect this is the problem, you can test your
lag with a sonar-like ping signal under the Client-to-Client Protocol (CTCP).
If you are just talking to one person, ping that person. If you suspect you
are generally lagged to a lot of people, ping a channel with say 10 people
which is the same as pinging each person on that channel separately. The range
in ping response times will tell you if you are lagged in general.


    /CTCP buddy PING
    *** CTCP PING from YourNick!foo@hot.school.edu to buddy: 903330542
    *** CTCP PING reply from buddy: 1 second


The last line is the part you care about. It says you are lagged less than 1
second to buddy, which is very good. Note that in most clients including most
versions of ircII and mIRC, this is aliased to `/PING nickname`, or `/PING
#channel-name`, but not always. Some Mac clients such as Ircle use `/CPING`
instead.

**DCC CHAT**

**/DCC CHAT nickname**
**/MSG =nickname message**
**/DCC CLOSE CHAT nickname**

DCC stands for Direct Client Communication, where you and your friend's client
programs connect directly to each other, bypassing IRC servers and their
occasional "lag" or "split" problems. Like /MSG, the DCC chat is completely
private.

If you are "Yournick" and your friend is "buddy", here's how to use DCC chat:

You type:

`/DCC CHAT buddy`

You see:

`*** Sent DCC CHAT request to buddy`

While buddy sees:

`*** DCC CHAT (chat) request received from YourNick`

Now buddy types the same thing but using your nick:

`/DCC CHAT YourNick`

The connection goes through and you see this (he sees something similar). The
numbers are his IP number (the numeric version of his computer's hostname) and
his port number.

`*** DCC CHAT connection with buddy[123.4.56.78,54321] established`

Now to talk to buddy, in graphical clients like mIRC you will probably have a
separate window for the DCC chat so that everything you type is sent to buddy.
Just type normally in that window. Alternatively, from any window you may use
a /MSG with an equals sign immediately before his nick, which distinguishes
this DCC CHAT message from a regular /MSG buddy whatever:

`/MSG =buddy now we're talking!`

When you're done talking, either close the graphical window (if there is one
available) or manually close the connection:

`/DCC CLOSE CHAT buddy`

`*** DCC chat:<any> to buddy closed `

##### [ contents | 1 | 2 | 3 | bottom ]

## 2.3. File Transfer

In addition to talking, IRC has also become a popular and convenient way to
exchange a wide variety of files. Be forewarned, however, that many people are
getting into serious trouble by downloading files that seem interesting or
enticing, only to find out they are [trojan horse
attacks](/security/trojan.html). These hacks allow strangers to take
over your channels, force you to disconnect, erase your hard disk, or worse.
The moral is clear: **Never accept candy from strangers**. For more
information, see our [Downloading Files from IRC](/security/warez.html) guide.

**DCC SEND and GET**

Like with DCC chat described above, DCC file transfer requires an exchange of
commands between the sender and getter of each file. For example, if you as
"YourNick" want to send the file "foo.jpg" to your friend "buddy", you would
type:

`/DCC SEND buddy foo.jpg`

`*** Sent DCC SEND request to buddy`

If you specify the filename without a directory path, it will assume the file
is in the default directory. For mIRC that is usually c:\mirc and for ircII it
is usually your home directory. If the file is somewhere else, you will need
to specify the path to that file, such as:

`/DCC SEND buddy c:\other\directory\foo.jpg`

Now for buddy to get the offered file. If he is using mIRC, a dialog will open
asking him whether he wishes to accept the file, cancel the offer, or even
ignore the offerer. In ircII, buddy will see the following request and types
this in response:

`*** DCC SEND (foo.jpg 180) request received from YourNick`

`/DCC GET YourNick`

You will then see the following as the DCC connection is established and the
transfer eventually completed. On the other end, buddy sees something similar
too.

`*** DCC SEND connection to buddy[123.4.56.78,54321] established`

`*** DCC SEND:foo.jpg to buddy completed 1.234 kb/sec`

##### [ contents | 1 | 2 | 3 | bottom ]

* * *

# 3. Beyond the Basics

Most novices can enjoy IRC quite well with the basic IRC skills described in
part 1 and the ability to chat publicly and privately discussed in part 2.
This section will now cover the basics of channel maintenance. After you have
mastered this material, you may learn more about running channels from the
exhaustive [New IRC Channel Operator's Guide](changuide.html).

## 3.1. Channel Operators

Channel operators or "ops" have absolute power over their channel, including
the right to decide who gets to come in, who must leave, who may talk, etc.
When you first start out, it's best to chat on other people's channels and
heed their rules, or else you may find yourself kicked out. If that happens
and you cannot settle your differences with the ops, just go to another
channel.

At some point you will probably want to try your hand at being a channel op,
either by creating your own new channel or by gaining the trust of the ops on
an existing channel. You need to know a whole different set of commands. With
this power comes the sometimes frustrating responsibility of maintaining the
channel against intentional abuse as well as the usual IRC mishaps.

Some networks such as [Undernet](http://servers.undernet.org/) and
[DALnet](http://www.dal.net/servers/) support channel registration, whereby
you can "reserve" a channel. The advantage is that you are assured control
over the channel as long as you show up once in a while, the disadvantage is
that many popular channel names are probably already registered by others.

Two of the largest nets EFnet and IRCnet do **not** support channel
registration (or any other services). On these nets, there is **no** way to
ensure you will always control a channel. Some channels try hard with all
sorts of bots (which are explicitly banned by most servers) and protective
scripts, but it's really just a matter of time before somebody with the right
combination of lameness and knowledge comes along and takes over the channel.

##### [ contents | 1 | 2 | 3 | bottom ]

## 3.2 Channel Maintenance

This section will cover the basic commands used by channel ops to maintain a
channel. Try them on a test channel!

Two of the most common things that ops do are setting the channel topic and
kicking out abusive people. For the purposes of this section, let's say you
have ops on the channel #demo.

**/TOPIC #channelname whatever topic for channel**

Channels have topics which indicate the current topic of conversation.
Theoretically anybody can change the topic on a channel with the /TOPIC
command, but usually the channel operators make it so that only they can
change the topic. This topic is shown when anybody first joins the channel,
and it is also shown constantly at the bottom of the window for graphical
clients like mIRC and Ircle.

`/TOPIC #demo hello, testing`

`*** YourNick has changed the topic on #demo to hello, testing`

**/KICK nickname [optional reason]**

Forcibly kick that nickname out of the current channel with the reason
specified. If no reason is given, it will just use your nickname as the
default reason.

`/KICK buddy go away, you're annoying me`

`*** buddy has been kicked off #demo by YourNick (go away, you're annoying
me)`

### Channel Modes

In addition to the above commands, the behavior on each channel is governed by
many "modes", each denoted by a single character such as "x" which can be
turned on or off using "+x" and "-x" respectively. You can see the modes
currently in effect on a channel by issuing the /MODE command without any
flags. For example:

`/mode #demo`

`*** Mode for channel #demo is "+tn"`

What does the "+tn" mean? Those and other modes are described below.

**Public**      This is the default channel mode. Public means that everyone can see the channel in the /NAMES and /LIST lists. These channels usually welcome newcomers.

**Private (p) or Secret (s)**      The "+p" or "+s" will be explained later, for now consider them to be flags denoting the nature of the channel. These channels provide privacy and security for insiders and may or may not welcome newcomers. If you don't know the names of these exclusive channels already, you won't find them using `/LIST`. Even if you know the channel name, you still cannot use `/WHO #channelname` to see who is presently in there unless you join the channel yourself. Note: private and secret are not the same thing, but the difference is pretty arcane.

To make #demo a secret channel:

`/MODE #demo +s`

`*** Mode change "+s" on channel #demo by YourNick`

To make #demo a public channel again (removing the secret mode):

`/MODE #demo -s`

`*** Mode change "-s" on channel #demo by YourNick`

In the following examples I'll leave out the responses in blue since they are
all similar to the above.

**No external messages to the channel (n)**      People outside the channel cannot do `/MSG #channel_name [whatever]` which would otherwise be sent to everybody on the channel

**Topic control (t)**      Only channel ops are allowed to change the topic

**Channel ops (o [nickname])**      Any op can give ops to anybody else, and once that other person gains ops, he has the same power as you do, including the ability to remove your ops or "deop" you, or even to kick you out. This is known as a takeover. Don't share ops with others unless you trust them fully!
`/MODE #demo +o buddy`

You can also do a few of these together on the same line, such as:

`/MODE #demo +ooo larry curley moe`

**Moderated (m)**      On a moderated channel, only channel operators can talk publicly, others can only listen and will get "cannot send to channel" errors if they try to talk. The exception is if you are given a voice (+v). Moderated mode is useful for conferencing or keeping control over very busy channels.

**Invite Only (i)**      People can only join your channel if an op permits it. To set it:
`/MODE #demo +i`

Then to let buddy in, use the /INVITE command:

`/INVITE buddy #demo`

**Limited (l [number])**      Only that number of people are allowed to /JOIN the channel.
`/MODE #demo +l 20`

Later to remove the limit (note you don't need to specify the number):

`/MODE #demo -l`.

**Keyword or Password Protected (k keyword)**      You must know the keyword to /JOIN the channel. To set the keyword as "trustno1":
`/MODE #demo +k trustno1`

Then in order for somebody outside to join, they must type:

`/JOIN #demo trustno1`

And to remove the keyword:

`/MODE #demo -k trustno1`

**Channel bans (b [nick!user@host])**      I've saved this for last becuase it's the most complicated. After a kick, the offender can still rejoin the channel immediately unless you first set a ban to keep them out (remember to ban then kick, not the other way around). You need to specify a ban "mask" that matches the offender's nickname, username, and hostname (if you are not crystal clear on the distinction between those three, revisit the /WHOIS command in part 1 now or else what follows will only confuse you more). You also need to use wildcards like the "*" character to replace any part the offender can easily change.

For example, if you want to ban buddy, and his /WHOIS says:

`*** buddy is abcd@dialup-6.provider.com (Think different.) `

Then the most specific ban mask would be "buddy!abcd@dialup-6.provider.com"
(note the use of "!" and "@" to separate the nickname, username, and
hostname). If he changes any of those three, however, he can slip right back
in! For example, he could change his nickname "buddy" using /NICK. If he's
using a graphical client like mIRC he can change his username "abcd" after a
quick /QUIT and reconnect. He can even change the first part of his hostname
("dialup-6") by dialing up to his provider again. That's why it might make
more sense to do:

`/MODE #demo +b *!*abcd@dialup*.provider.com`

Or even a domain ban against everybody from that provider (use sparingly since
you may keep out a lot of innocent people):

`/MODE #demo +b *!*@*.provider.com`

You may view the current bans (from on or off the channel) by leaving off the
ban mask. In the example below, there are 2 bans on #demo, the first an old
ban restored by the server irc.mcs.net when it rejoined after a split, the
second ban was set by buddy against anybody from the blah.net domain whose
username contains "foo":


    /MODE #demo +b
    Current bans on #demo are:
    *** #demo *!*@*.dummy.com irc.mcs.net 903321784
    *** #demo *!*foo*@*.blah.net buddy!abcd@dialup-6.provider.com 903310028


If you want to remove the first ban, you have to use the exact same ban mask,
namely:

`/MODE #demo -b *!*@*.dummy.com`

Most of the above modes can be combined. For example, to remove the invite-
only restriction, while at the same making the channel with topic changed only
by ops, not allowing external messages, and password protected with "trustno1"
as the key:

`/MODE #demo -i+tnk trustno1`

##### [ contents | 1 | 2 | 3 | bottom ]

## 3.3. Server Commands

This section describes how to get more information about the IRC servers you
use. Each server is run by IRC operators or IRCops, who are sometimes
mistakenly known as "IRC cops". These people run each IRC server and try to
maintain a fast, reliable IRC network. **They are not cops** and do not
interfere in user or channel matters such as restoring ops, fighting
takeovers, defeating bans, nickname disputes, etc. For more information on
what IRCops do, see the [IRC Operator Guide](/ircd/ircopguide.html)
which is like a training manual for IRCops, or Monkster's short [Oper
Myths](/ircd/opermyth.html) which definitively lists what IRCops
can/can't/will/won't do. If after reading those you still think you need to
contact an IRCop to report IRC abuse, see our [IRC logging
guide](http://www.irchelp.org) for directions.

**A special word on nukes:** denial of service attacks, commonly known as "[nukes](/irchelp/nuke/)", are not part of IRC at all. As such, IRCops have no authority in trying to stop them. See our guide on [logging and reporting nukes](/nuke/report.html).

Unless otherwise stated, all commands below apply to your current server
unless you specify another server's hostname as the optional argument.

**/LINKS**

The LINKS command shows all the servers currently connected to form the [IRC
network](http://www.irchelp.org/irchelp/networks/) you are using. If a server
mask is specifed, LINKS shows any servers that match the given server mask,
which may contain wildcards.


    /LINKS *.com
    *** irc.rift.com      irc.total.net        3 [205.150.226.4] Rift Online
    *** irc02.irc.aol.com irc.lightning.net  6 America Online EFNet Server
    [list truncated]


The 1st column is the server name, the 2nd is the server it is linked to, the
number in the 3rd column is the number of links away that server is from
yours. Caution: don't do /links too many times or you could be mistaken for a
troublemaker and sanctioned.

**/ADMIN**

Displays the administrative details about a server. Usually this will give you
an e-mail address you can use to ask questions or report complaints such as
illegal bots (just don't hold your breath, most IRC ops are very busy people,
and see description of IRC op at the beginning of this section so you don't
bother them with takeovers and ops problems).


    /ADMIN
    *** Administrative info about irc.psinet.com
    *** PSI Net EFNet IRC Server
    *** Admin - Katherine Spray<sprayk@interramp.com>
    *** moonwolf @ IRC


**/MOTD**

Gives the "message of the day" for a server which explains the server's
policies and other information. You should always read this before using any
server.


    /MOTD irc.ais.net
    [excerpted MOTD follows]
    *** -  The Rules for IRC.AIS.NET:
    *** -  o No Clones/Multiple clients
    *** -  o No link looking scripts
    *** -  o Clients must respond to valid ctcp requests
    *** -
    *** -  Failure to comply with any of the above rules may result in your
    *** -  connection to this server being blocked.


##### [ contents | 1 | 2 | 3 | bottom ]

## 3.3 Conclusion

In the previous sections, you have learned (1) IRC basics, (2) how to chat
both publicly and privately, including how to exchange files, and (3) went
beyond the basics to explore channel maintenance and interacting with servers.
That should be all you need for now to enjoy IRC. If you are interested in
learning more, check out the many other [help files](/irchelp/faq.html). The
[IRChelp.org web site](http://www.irchelp.org/) also has many other [helpful
features](/irchelp/help.html) including [direct help by
IRC](/irchelp/talktous.html), client-specific help files, scripts, lists of
[networks and servers](/irchelp/networks/), etc. Good luck!

* * *
