# IRC Server Request FAQ

* * *

by [Helen Rose](http://www.kei.com/homepages/hrose/)

minor updates by Joseph Lo aka Jolo

Last modified: Aug 16 2008

This is required reading for anybody who is interested in running an [IRC
server](/irchelp/ircd/), being an IRC operator, or otherwise interested in
learning more about how IRC servers work.

## What is an IRC Server?

An IRC server is the program that passes messages and other information across
the IRC network. You use an IRC client such as mIRC to connect to an IRC
server.

## Will Having a Server get me IRC Op privileges?

Yes, if you have a server, you will get IRC Op privileges.

There are many myths about IRC operators and what they can and cannot do. You
can check out this [very detailed list](opermyth.html), but here are some
quick facts. They apply to EFnet and IRCnet at least:

  * **CAN** /kill users off of their local server, BUT only if they're breaking server rules (i.e. if they're a bot, etc). 
  * **CAN** break network links, BUT if they do this without a good reason, they'll lose their /oper privileges quickly. 
  * **CANNOT** fix channels. IRC Operators cannot op someone else on a channel. 
  * **CANNOT** op themselves on channels. 
  * **CANNOT** enforce "owned" nicknames (nicknames are not owned!). IRC Operators cannot /kill for nickname "stealers". 
  * **CANNOT** send /kills for gratuitous reasons. Any IRC Operator that /kill's too many innocent users is going to have their privileges revoked. 
  * **CANNOT** find invisible users, or see who is on a +s (secret) channel. 
  * **CANNOT** stop illegal activity. It's not "IRC Cop", but IRC Operator. _Police_ stop criminal or illegal activity. And because IRC is over international borders, it's sometimes confusing whose laws are followed. A good site for reference on The Law and The Net is [EFF](http://www.eff.org/). 

But wait! You might say "people will think I'm smart/sexy if I have an O:
line. I'll look cool". Come on! You're smarter than that! That's the argument
15 year olds make to justify their smoking! ("I'll Look Cool"). Luckily, being
an IRC Operator won't kill you.

Being an IRC Operator may seem glamorous, but it's really not. You spend hours
enforcing rules on your own server and answering user questions. It gets to be
quite tedious for a while.

## Do I Need an IRC Server?

The short answer: probably not, since most small sites do not need their own
servers!

The longer answer: Running an IRC server requires knowledge, experience,
computer resources, access to bandwidth, patience to deal with questions, etc.
The costs far, far outweight the benefits for most people, who just want
somewhere to chat. There are plenty of existing [servers and
networks](/irchelp/networks/) where you can host your channels without the
hassle of running a server. You and your friends or family can all connect to
those servers and be chatting in no time. These networks are already listed in
mainstream IRC clients such as mIRC, Ircle, etc. You can also set private
keywords so that only authorized people can join the channel(s). On networks
such as DALnet you can even register your channel and control ownership over
it, even when you're not online.

Here are just some of the many requirements for running a server on a major
network such as EFnet:

  * You must have the blessing and support of the administrators for not only your computer but also your ISP, and even your upstream providers. IRC servers frequently attract [security problems](/irchelp/security/) from "crackers" (aka "hackers") such as [denial of service attacks](/irchelp/nuke/) - your systems/network administrator would not appreciate this. 
  * You need to have at least a multi-homed, dual DS3 link or faster. ISDN, cable, DSL or any kind of modem just won't do the job. 
  * You need to know all about the UNIX operating system, which is used by nearly all the big, well-run IRC networks. 

Yes, there are **Windows servers** such as [Webmaster's
ConferenceRoom](http://www.webmaster.com/) or
[IRCplus](http://www.ircplus.com/), or do a search for "IRC server" on [
Download.com](http://download.cnet.com/) or [Tucows](http://www.tucows.com/).
You should be aware, however, that Windows servers are probably fine for
small/private networks, but they have sub-standard TCP stacks which makes
running them on a big network problematic. Also, unlike UNIX ircd which is
free and open source, with Windows servers you get what you pay for - the
better choices are all commercial software costing US$100 and up.

If most of that sounded like meaningless jargon to you, then you are most
definitely not ready yet to run your own IRC server.

## OK. But you've not convinced me. How do I get one?

You should learn all about UNIX, first of all. IRC servers can be fussy to
compile and maintain.

Next, you should learn _all_ about IRC. If you get a server, you have to
answer questions of all of your users. That means you have to be familiar with
many different kinds of IRC clients, ranging from the popular (e.g. ircII and
mIRC) to the obscure.

Finally, you should learn about the Internet. Learn what TCP/IP is. Learn what
different links there are (56k, T1, T3, E1, etc). Get "traceroute" and do some
researching on what is close to you and what isn't.

## OK, I've done all that. Now what?

If you want to link to EFnet, start with the **server link application
information** for [Europe](http://www.efnet.org/?module=docs&doc=18),
[Canada](http://www.ca-efnet.org/), and the [US (and also South America and
other parts of the world not otherwise specified)](http://voting.efnet.net/us-
efnet/).

Read those very carefully. They specifically state what is and isn't
acceptable for an IRC server. If you ask any questions that are already
answered by those documents, you only prove that you are not ready yet.

## I get the point already. Just tell me what to do!

Using your skills that you learned already, find out what server on IRC is
closest to you. Write to that IRC Admin and ask for a link. Take the link
guidelines from the previous section, list them point by point, and explain
how you meet (or don't meet) them.

## But why isn't there an easy "How-To" guide here?

We #irchelp'ers like helping IRC'ers. But the best way to help a potential
admin is have him/her learn on his/her own. Spoon-feeding is no way for a
potential IRC-Admin to learn, because at some point, you'll be on your own.
You should carefully look over the documents in the [IRC Server
Software](index.html) section, especially the [Myth of Opers](opermyth.html)
and [IRC Operator's Guide](ircopguide.html).

## Wait! Before you end, I want to help people on IRC. Don't I need O: to do
that?

No! You don't! You can help the network by coming to #IRChelp and answering
questions. You don't have to be a chanop on the channel to answer questions -
everyone is welcome to pitch in as long as they follow our [channel
rules](/irchelp/misc/rules.html). You will help the IRC network much more by
answering newbie questions on #IRChelp than by being an /oper. There are
hundreds of /oper's, but only a dozen or so people dedicated enough to help on
#IRChelp. There are also many other well-run help channels, depending on your
specific area of knowledge.

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

