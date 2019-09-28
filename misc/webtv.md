---
title: WebTV and Internet Relay Chat
author: Ngan Bui (Ariell), Joseph Lo (Jolo), and Stephanie Daugherty (sdaugherty)
layout: default
status: historical
license: irchelp
redirect_from:
  - /irchelp/misc/webtv.html
---
# WebTV and Internet Relay Chat

By Ngan Bui (Ariell), Joseph Lo (Jolo), and Stephanie Daugfherty (sdaugherty), with help
from lots of people

**Editor's note: The MSN TV (formerly WebTV) service shut down on September 30, 2013, rendering
all of these set-top boxes useless, and this guide obsolete. It's retained only for historical interest.**

Most of this document updated Jun 24, 2000, minor note on 3rd pty clients Jun
22, 2003

The original version of this page is at <[http://www.irchelp.org/irchelp/misc/
webtv.html](http://www.irchelp.org/irchelp/misc/webtv.html)>

[WebTV](http://www.webtv.net/) opened the world of the Internet to many people
through an inexpensive computer that uses your existing TV. While WebTV is
generally adequate for web browsing and email, it's harder to do more
complicated things, and you can't take advantage of specialized programs
designed for those tasks. For example, while you _can_ use WebTV to chat, you
must use their web interface. Compared to using a dedicated chat "client"
program on a real PC, WebTV is very limited in its abilities. We developed
this chat guide specifically for WebTV customers so you can make the best use
of your service.

WebTV does have its own [chat help
pages](http://help.webtv.net/features/community/chat.html), which cover the
most frequently asked questions (FAQs) each on a separate web page. Our goal
here is to present everything all in one place, hopefully in a way that is
easier to understand.

## Contents

  1. Getting started
  2. Networks And Servers
  3. Commands for WebTV Chat
  4. Limitations of WebTV
  5. Finding More Help

* * *

##  1. Getting Started

IRC (Internet Relay Chat) allows you to communicate live with people from all
over the world. Sometimes IRC is referred to as "chat rooms" but actually they
are called channels. IRC consists of many separate [networks](../networks/) of
IRC servers, machines that allow users to connect to IRC. Each network has a
different set of people and channels. The largest nets are
[EFnet](http://www.efnet.org/), [Undernet](http://www.undernet.org/), IRCnet,
and [DALnet](http://www.dal.net/).

On IRC, people know you by a nickname. At the present time, you will always
have the same name as your username. However, on WebTV, you can create up to
five secondary users and use any of them to chat on the Internet.

Group conversations occur on the thousands of channels on each network.
Channels can be open to everyone or only to friends. For a list of channels,
see #IRChelp's [channel listing page](../chanlist/). Channels are dynamic
because anyone can create a new channel, and a channel disappears when the
last person on it leaves.

[ Contents ]

##  2. Networks And Servers

By default WebTV users can chat on [Talk City](http://www.talkcity.com/), one
of the largest web-based chat servers. Note that as of April 2000, Talk City
no longer supports "IRC scripts" for WebTV users to connect. You can see their
recent [decision](http://www.talkcity.com/irc/) to force everybody to use
their customized client which forces banner ads on you, all due to some
unconvincing excuse about warding off "hackers". If you still want to chat on
Talk City, you must go to their [home page](http://www.talkcity.com/) or
[WebTV page](http://www.talkcity.com/webtv/). Many people have abandoned Talk
City for a real IRC network after this debacle. Indeed, Talk City is like the
tip of the iceberg when it comes to chatting.

To reach other [IRC networks](/irchelp/networks/), you need to know the
address of a server on that network, the port number, and the channel name.
You may not be able to access all networks or servers due to restrictions
placed on each server to limit the kind of people who can connect. After you
have this information, do the following:

  1. Return to the Home page
  2. Select **Community**
  3. Select **Chat**
  4. Select **Go to**
  5. Enter the following:
    * server address (something like irc.whatever.com)
    * port number (typically 6667, or you can try 6660-6667)
    * the channel name (such as #IRChelp)
  6. Select **Connect**

**Note** that all channels names begin with a # symbol, but using the **Go to** feature you can optionally type the # or not (such as #IRChelp or IRChelp). You do _not_ type the # when using the /join command mentioned below.

See the list of [servers and networks](/irchelp/networks/) for some
suggestions. If you're new, you might want to stick to smaller networks at
first to avoid being overwhelmed.

Once you have connected successfully, you may talk by just typing into the
text field at the bottom of the chat screen. Then choose Send (or hit the
Return key on your keyboard). See the next section for specific commands you
can also type.

[ Contents ]

##  3. Commands for WebTV Chat

Each command begins with a slash character (/) at the beginning of the line,
and you just type them into the same text field at the bottom of the chat
screen.

**/join coolness**     Command to join the existing channel #coolness. Note with this command, you do _not_ enter the # before the channel name. If the channel did not exist before, by joining it you will create it and also have ops on that channel. You can only be on one channel at a time.

**/who**     This gives you the nicknames of people in the current channel only, with some information about them.

**Hello everybody!**     Once you join a channel, you can speak to everybody on the channel by typing any line without a leading slash character. Everybody else will see "your_nick> Hello everybody!"

**/me is a pink bunny.**     Everybody in the channel sees "* your_nick is a pink bunny." This is called an action.

**/whois jack**     You get some information about that jack, such as "jack is jk1@some.host.name." If jack is also a WebTV user, the answer will not include the hostname, just whether or not he is on-line at the moment.

**/msg jack text**     Sends a private message to jack only. This is sometimes called "whispering" since nobody else can hear you except jack.

**/ignore jack**     Ignores all messages from jack, such as if he is annoying you.

**/topic Dalmatians are spotted.**     Sets the channel topic to "Dalmatians are spotted." - but note that not all channels allow anybody to change the topic.

[ Contents ]

##  4. Limitations of WebTV

In addition to the commands described in the previous section, you also have
the option of making a private channel. When you create a new channel, check
off the option to create a private, unlisted channel. Unfortunately that's
about all you _can_ do with WebTV. Below we will list just some of the many
things you _cannot_ do. There's no way around this since WebTV has chosen not
to improve their software (almost no changes since they started more than 2
years ago), or unless you get a "real" PC which would allow you to run a
"real" IRC client program (such as [mIRC](../mirc/) for Windows or the many
[Mac clients](../mac/)).

Channel maintenance     You _cannot_ be on more than one channel at a time.
You _cannot_ exercise the powers of a channel operator, such as change channel
modes (make it secret, invite only, etc), grant or remove other people's ops,
kick and ban abusive users, etc. If you are trusted by the operators, they
might allow you to do these things indirectly through their clients or bots,
but that is only by private arrangement.

identd     If you see the error "WebTV can't use that service" it is because
WebTV does not support the "identd" user verification protocol, which is
required by many servers, including most of EFnet and all of DALnet. Short of
complaining directly to WebTV to implement this very simple feature, you're
pretty much out of luck and will have to chat on other servers. If you're
trying to get on EFnet, see our [EFnet connection problem
guide](/networks/connectprob.html). Otherwise just find another
[network](/irchelp/networks/) to chat on.

Colors, Fonts, and Sounds     You _cannot_ change text color, size, font,
etc., while chatting on WebTV. You _cannot_ play sounds, nor can you hear
sounds played by others.

File Transfers     You _cannot_ use DCC (Direct Client Communication) to send
or receive pictures, sounds, software programs, love letters, or any other
type of files. There are third party web sites out there that offer you free
storage of files, so that may be one effective but tedious workaround.

Script/Bot Running     You _cannot_ run automated programs like scripts or
(ro)bots to help you maintain a channel, provide shortcuts for commonly typed
commands, etc. As mentioned before, you may be granted access to other
people's scripts or bots, but that's like getting around by bumming rides from
others - you are totally dependent on other people.

Third Party IRC Clients     There are many IRC clients that you can use now
other than WebTV's built-in IRC client. Many contain very annoying
automatically sent messages and offer little or no added functionality. The
author of [one](http://www.Trailer-Trash.net) claims his client allows full
operator commands but we have not verified these claims yet, check it out
yourself.

There are many other things that WebTV users cannot do. I don't think it's
necessary to list everything. Accept the limitations and enjoy IRC with what
you have. IRC is still primarily for "chatting", and you can still do that as
a WebTV user. Of course, one day when you get a real personal computer you'll
be amazed at what else you can do with IRC and many other things.

[ Contents ]

##  5. Finding More Help

Here are some ways to get more help.

**World Wide Web**     Definitely check out WebTV's own [help site](http://help.webtv.net/), which includes a FAQ (frequently asked questions list) just for [chat](http://help.webtv.net/features/community/chat.html). In additioin, we have many [general help guides](../faq.html). (Just remember the limitations of WebTV when you're reading those guides.) We particularly recommend the short general introduction to IRC called [The IRC Prelude](../new2irc.html). There are also lists of [networks](../networks/) and [channels](../chanlist/) there.

**Email**      Another way to get your _WebTV-specific_ IRC questions answered is to email [wecare@webtv.net](mailto:wecare@webtv.net).

**IRC**     The most popular help channels for WebTV are on [TalkCity](http://www.talkcity.com/). The channels include #New2WebTV, #WebTVhelp, and #WebTVtech.

[ Contents ]
