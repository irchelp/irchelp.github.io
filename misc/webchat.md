---
title: IRC via the WEb
author: Joseph Lo (jolo)
layout: default
redirect_from:
  - /irchelp/misc/webchat.html
---

# Internet Relay Chat using the Web

by Joseph Lo, Ph.D. aka Jolo, last updated Feb 18, 2007

original version at [http://www.irchelp.org/irchelp/misc/webchat.html](http://
www.irchelp.org/irchelp/misc/webchat.html)

This page is intended for people who want to provide a chat service on their
web page, such that visitors to that web page can chat. If that describes you,
skip to the next paragraph. If you are one of those visitors who is just
looking for a place to chat indirectly via the web, such as because you are
restricted by your school/institution and cannot use a real chat program, or
because you just don't want to bother running such a program, there are many
web pages that provide such services. For example, I typed "EFnet web chat"
into Google and found [many
results](http://www.google.com/search?client=safari&rls=en-
us&q=EFnet+web+chat&ie=UTF-8&oe=UTF-8) for connecting to the EFnet network via
the web. Similarly, Yahoo search of the same phrase also yielded [many channel
s](http://dir.yahoo.com/Computers_and_Internet/Internet/Chats_and_Forums/Inter
net_Relay_Chat__IRC_/Channels/) which offer web access. Alternatively, you can
just use a totally web-based chat service such as these [web chat sites](http:
//dir.yahoo.com/Computers_and_Internet/Internet/World_Wide_Web/Chat/Chat_Rooms
/) suggested by Yahoo, which also runs its own independent [Yahoo!
Chat](http://chat.yahoo.com/) service (see [screen capture](webchat_yh.gif)).

Now, for the people trying to provide the chat service, you can either run
your own server, or just help users connect to your existing IRC channel on an
established network/server. You're just going to have to take my word for this
- the first option of running your own server is not worth it. If you're
really curious, we refer you to our [server request FAQ](/ircd/server-
request.html).

**If you have an existing IRC channel on some IRC network or server, there are 2 ways to allow your web visitors to access that channel. You can either help your visitors set up an IRC client program, or you can set up a web gateway so they can just point-and-click their way to your channel.** We will cover each approach below.

## Help your visitors set up an IRC client

We recommend you help your visitors set up an IRC client program such as [mIRC
for Windows](../mirc/), a [Mac IRC client](../mac/), or
[Chatzilla](http://www.hacksrus.com/~ginda/chatzilla/) [ext. link] which is
part of the Mozilla Suite or can be added as an extension for the Mozilla
Firefox browser. For simplicity, I will just use mIRC as an example. Setting
up mIRC is trivially easy, otherwise it wouldn't be as popular as it is today.
I've seen grandmothers go from zero computer experience to chatting away
happily in just 10 minutes. There are dummy-proof illustrated [set up
guides](http://www.mirc.com/install.html). You can augment these with a web
page which describes step by step how they can then connect to your server and
join your channel. It will be worth it. In so doing, you have provided your
visitor with a full-featured, well-supported IRC client that can grow with his
needs. The visitor will enjoy his chatting experience more, which means he
will likely stick around, unlike most web chat visitors who just try it out
and move on when they get frustrated with the inevitable lag, crashes, or ugly
appearance of most web chat clients. Most importantly, you won't go crazy
trying to help people debug the web clients, which can misbehave unpredictably
depending on the user, OS, or browser.

Once they have an IRC client set up, you can also use an [irc:
URL](http://www.w3.org/Addressing/draft-mirashi-url-irc-01.txt) [ext. link] on
your web page. This is a special kind of link that will allow them to just
click and connect to your IRC channel. As more people use Mozilla Firefox,
they can often just "stumble" into your channel by just clicking on such an
irc: URL. This can be both good and bad, as you're getting more visitors, but
many are total newbies with no understanding of IRC commands or etiquette.

## Provide your visitors with a web gateway

The second approach is to provide a web gateway for people to access your
channel indirectly. This way even newbies can join your channel without having
to deal with a standalone IRC client. This is what we will spend the rest of
this page talking about. In spite of what we said above, it can sometimes
still be a good idea to provide a web gateway:

  1. Newbies can at least "try out" your channel before committing to something like mIRC. It's still in your and their best interest to get them switched over to a standalone IRC client as soon as possible, but at least with the web gateway you can talk them through the process.
  2. Occasionally, the web gateway may be the only way for people to join, since their free/cheap/work-related ISP has blocked IRC access or allows only web browsing. Frankly, trying to support these people is a losing proposition, and you in fact may be helping them violate their terms of service and getting them in trouble. Unless you are catering to a large group of people using such crippled free ISPs, their limitations should not be your concern.

**OK enough lecturing, tell me about the web gateways.** There are a few ways of doing this somewhat evil trick of mangling together the IRC and WWW protocols. We'll describe the pros and cons. It's up to you to set them up properly by reading their documentation. We assume you are a reasonably competent webmaster and know the meaning of words like Perl, CGI, Java, IP, and hostname. You should also be fairly experienced with IRC and know about things like identd, K-lines, and clones. If not, this task is too technical for you, sorry.

**CGI:IRC** &nbsp_place_holder; [[home page](http://cgiirc.org/) | [features & screen caps](http://cgiirc.org/features/) ]

CGI:IRC looks remarkably like a real GUI IRC program, including tabs for
channels, userlist and options. The javascript to run it is just a few lines.
Best of all, the user connects with their own IP instead of yours, so abusers
can be effectively controlled just as if they were using a real IRC program on
their own PC. Quick and easy to configure. No weird firewall or security
dialog windows to deal with. Works with most modern web browsers. In short,
what more do you want? :) Check it out below.  Nickname:

**JPilot** &nbsp_place_holder; [[home page](http://www.jpilot.com/) | [screen cap](webchat_jp.gif) | [demo1](http://www.jpilot.com/java/irc/chat.html) | [demo2](http://www.arklink.net/Chat/chat.html) ]

JPilot is a reasonably full-featured IRC client, and runs as a Java applet.
Compared to Whiplash, the biggest differences are that JPilot includes identd
(although some people report problems getting it to work on some servers, it
worked for me on my first try) and it allows users to connect using their own
hostname. In other words, once your visitor downloads the small applet, they
are no longer taking up your web servers's system resources and they do not
get your web server's hostname in any trouble due to cloning etc.

There is no incentive to abuse this, since it is functionally similar to the
visitor just running mIRC etc. locally on his own machine. There is one
disadvantage - if your visitor is firewalled, he can't make the IRC connection
with JPilot at all (again just like mIRC etc.). There is also another catch.
To do all this, the applet must run beyond the Java "sandbox" in the visitor's
browser, which is a security risk in general but OK in this case. The first
time it is run, it will open a window (like [this](webchat_perm.gif))
prompting the user to give permission to trust it. You should explain all this
to visitors, because without that permission JPilot will not work.
Furthermore, not all browsers are compatible, the latest versions are
definitely recommended. In particular many problems were reported with Mac
MSIE.

JPilot is $39.99 [shareware](/misc/shareware.html), documentation
seems pretty good.

**IRC CLient for Java** &nbsp_place_holder; [[home page](http://www.alphaworks.ibm.com/formula/)]

This has rapidly become one of the most popular Java IRC clients, perhaps
thanks to major providers like Mindspring which make it their default client.
It is very full-featured for a Java client, but it's still not a replacement
for a dedicated client. There are many different variants, such as an applet
or standalone application. Unfortunately, I had a lot of trouble getting it
working. The client may be good, but it's definitely not packaged in a very
user friendly manner. For example, the "embedded IRC applet" comes with a Word
file describing the 14 step installation process which also requires you to
run an IRC server or relay on your web server.

Freeware, good documentation, support available through discussion groups.

**"Webmaster's Backpack" Java Client** &nbsp_place_holder; [ [home page](http://www.conferenceroom.com/products/productshome.shtml) | [demo](webchat_confrm.html) | [screen cap](webchat_confrm.gif) ]

Conference Room by Webmaster Inc. is commercial Windows IRC server software,
but their "Webmaster's Backpack" java client is free. It is very full-featured
and compliant with the IRC protocol. Like JPilot it runs as an applet on the
visitor's own computer, so it's no good if you're trying to get past a
firewall. Set up is a breeze - you fill out a registration form and they
provide you with a few lines of HTML which you paste into your web page,
that's it. Chatters will connect with a scrambled version of the hostname
(which is good for anonymity and preventing [attacks](../irchelp/nuke/)). The
full applet loads rather slowly, while the light one is very lean. Once loaded
it works very well, without requiring any unusual security permissions like
JPilot did. The biggest drawback is that the client only allows connections to
the company's own chat network, WebMaster's WebChat, so you can't use this to
go to an existing channel on another network. If you're starting a relatively
small new channel, then maybe you won't mind sticking to their network.

The Conference Room Java Client is free; easy setup requires no documentation.

**Whiplash** &nbsp_place_holder; [ [home page and demo](http://www.networkdweebs.com/stuff/whiplash/) | [screen cap](webchat_whip.gif) ]

**Ed. note** - Whiplash used to be free, but appears to have recently become $149 commercial ware only. The web site is still evolving and shows conflicting information. For now I'll show the old review below, and will update it as soon as they stabilize their policies.

Whiplash is a very simple IRC client with a crude interface and limited
features. It runs as a streaming Perl CGI on UNIX systems only. By the
author's own admission, it is more of an "educational tool" rather than an
actual application intended for people to use. The visitor fills out a form
such as the one at the Whiplash home page above, and away he goes. In the
form, the visitor specifies his nickname, server, port, real name, and channel
name. The visitor then connects with the hostname/IP of your web server. In
essence you are allowing any stranger with a web browser to use your web
server machine to connect to IRC.

Whiplash is banned on many servers, due to the following problems: (1) there
is no identd, (2) all users who connect will share your web server's hostname,
which creates clones, and (3) this is a very easy way to circumvent bans and
K-lines or cause semi-anonymous abuse. It's not really anonymous because the
visitor's true IP is encoded into hexadecimal numbers in the username, and so
you could actually ban all or part of the IP specifically. Nevertheless, it's
potentially abusive enough that you should restrict everything so that it can
only go to your specific channel on a specific network, or you'll find
yourself K-lined everywhere.

Support and documentation is sparse, but what did you expect for UNIX
freeware? :-)
