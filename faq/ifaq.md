---
title: alt.irc FAQ
author: Joseph Lo
status: historical
layout: default
---
# The alt.irc IFAQ
{: .no_toc}

This FAQ is proudly sponsored by the EFnet, DALlnet and Undernet EBOAI. To
obtain a current copy, point your web browser at [The Official IFAQ
location](http://www.kei.com//homepages/yesowitc/IFAQ.html)

## Questions in the IFAQ:
{: .no_toc}

* auto-gen TOC:
{:toc}


#### 1) What is an IFAQ?

IFAQ stands for Inordinately Frequently Asked Questions. This covers important and frequently asked questions to alt.irc that are not addressed by the Undernet FAQ or the alt.irc FAQ.

#### 2) You mentioned FAQs. There really is an irc FAQ? How come I never see it posted here?

There are, in faq, three FAQs: The alt.irc FAQ, the undernet FAQ, and the alt.irc IFAQ. I'm told there will be DALnet FAQ at some point, but even though I've read drafts that were pretty good, they still haven't bothered to finish and release it. The alt.irc FAQ is posted twice a month to this newsgroup. The undernet FAQ is posted every other week to this newsgroup. The IFAQ is never posted at all. Oh, okay, fine, so it was posted _this_ time, but that means nothing. Well, almost nothing. And you don't want me to tell you why I think you've never seen the other FAQs; howver, if you want to find them, ftp to the [](ftp://rtfm.mit.edu/pub/usenet/alt.irc)USENET FAQ archive at MIT

#### 3) Does it have anything to do with IPhone?

No, it does not. If you want information on IPhone, a program similar to internet "talk" and BITNET "phone" (only with voice and for Windows only), that information is available through Vocaltech, either by [web site ](http://www.vocaltec.com/)or [ftp site.](ftp://ftp.vocaltec.com/) Questions about IPhone are not encouraged in this newsgroup and won't be until IPhone becomes compatible with IRC.

#### 4) Okay, it doesn't have to do with IPhone, how about IBot? Does it have anything to do with that?

Again, no. IBot is a channel bot on #I called I. It rebroadcasts any messages sent to it to #I and to a web site. It is considered generally annoying and this faq is considered (at least by the authors) as generally helpful.

#### 5 ) If I want to find a user who isn't on irc but I know their username and approximate geographic location, how can I find their email address.

There are several ways to go about this, some involving irc, some not.

IRC ways:

  * set a `/notify <nick>` to try to catch them the next time they log on with that nickname
  * add the usernotify script to your .ircrc to catch the username in your notify. This script was written by times9@clark.net. For a copy of this script, please mail [to](mailto:yesowitc@rocza.kei.com) some random address with the Subject: usernotify script.

Non-IRC ways:

Gopher - Internet White Pages search WWW - 
[Switchboard](http://www.switchboard.com/)[Yahoo! People](http://phone.yahoo.com/)

#### 6) If someone on irc doesn't answer me, does that mean they are mad at me?

It may mean that, but more likely it means that they are

  * lagged - experiencing delays in sending and receiving messages. You can check this by typing `/ctcp <username> ping`, if it takes more than 10 seconds to get a response, the user is lagged.
  * idle - to check idle time type `/whois <username> <username>`. This queries the server of the person about whom you're requesting information for username, away message and idle time. (away messages do not retransmit after a netsplit (see question 26, so it could be that if you don't query the user's server, you won't see it.)
7) Everyone has a server, I want one too! Does it run on something other than
UNIX/LINUX?

Yes it does. There's a commercial NT/Win95 server called conferenceroom. To find out more about it, try [their hypergraphical web site](http://www.webmaster.com/). There also are rumours of a server for Windows 95 and Windows 3.1 at <http://www.microserve.com/~jjoseph/wircsrv.html>. 
There is a beta test amiga server called `clchat` It is reputed to be a pretty standard server. There is also a [server for OS/2](ftp://ftp.ocslink.com/pub/irc/servers/os2). There are no servers for MAC, DOS, or OpenVMS (Alpha or VAX).

#### 8) Where are Natasha Valerie Ivonna Grey\*, Byron Ng, Gunhed, Patrick McGinnis, R. Chen, Lee Brown, Michael Hemmingson, Jonathan Meadows, and Bart Prinsen?

Valerie seems to have retired to being Michael Hemmingson, still eeking out a living making bad "artsy-fartsy" plays. Our very own Stuart Harris, at risk of violent illness, still condescends to attend these plays and post reviews here for our delight. Byron Ng of the Gender Check Now plan has vanished into obscurity. Gunhed recently rediscovered alt.irc, and alt.irc is the worse for it. Patrick McGinnis continues to post under a variety of aliases baffling the killfiles of Crimedogs everywhere. R. Chen (alias Richard Simmons) seems to have been rejuvenated in the persona of the Official Bjorn Borud fanclub: Greg and Kylie. Lee Brown graciously took the job offer he made to himself and has been too busy to return. Jonathan Meadows vanished after that same Bjorn Borud received his 1000th sympathy note for having to deal with Mr. Meadows. Bart Prinsen, famous author of the DREAMSCRIPT, started uppernet and has not been heard of since.

#### 9) What do I need to know about international law before using IRC.

A few things. Libel laws only apply on a federal level. Trafficking in Warez (the free redistribution of copywrited software programs) is prosecutable as theft in any case, if you're caught Avoid encryption programs from out of the country under any circumstances. Import/Export laws can be tricky.

#### 10) I want to be an IRC COP, how can I do that?

There's no such thing as an IRC COP. Do you mean an IRC Server Operator?

#### 11) Yes, that's exactly what I mean! How can I become an IRC Server Operator?

IRC server operators run servers. Clearly, anyone who would be one would be trusted by a server administrator.

#### 12) How do I earn someone's trust?

I have no idea.

#### 13) How can I get links for a server that I would run and therefore be a server administrator, and trusting myself, could therefore be an oper?

That's a really convoluted sentence, have you considered taking English 101? At any rate,

  * Newnet - mail [nanook](mailto:nanook@eskimo.com)
  * DALnet - DALnet server code, stable 256K minimum link to the internet. See also [The dalnet homepage](http://www.dal.net/admin)
  * Undernet - Proximity to a T3, permission from host sysadmin, reliable opers, stable machine, access to port 6667. For more information see [The undernet ftp site](ftp://ftp.undernet.org//pub/usenet/docs/newlinks/newlinks )
  * EFnet - T1 link minimum, 300+ existing concurrant IRC userbase, or take a server admin out to dinner. Mail to a server with close ping times (less than 60ms) requesting a link. For additional requirements, see [ Doug McLaren's irc-stats page](http://www.comco.com/dougmc/irc-stats/misc/New-server-guidelines
)

#### 14) A lot people have these really nifty scripts? Do I need one? What do they do? People tell me to get PeniX and Phoenix? Should I?

There are a great many irc scripts out there for all platforms and in all sizes and colours. They do not all do what they claim to and they are not all benign, bug-free scripts. The rule of thumb is try before you buy. Read through the script and try to understand what it does. For help understanding IRCII scripts, read the [ircII help files](ftp://cs-pub.bu.edu/pub/irc/clients) available for ftp. For help understanding MIRC scripts read the help file included with MIRC.
You don't need a script, although some scripts make long tasks much simpler.
The best script might be a simple one with a few aliases to limit the amount
of typing you need to do. A script can do anything a user can do. Its only
advantages are that it can allow you to perform "remotes" or automated
commands and allow you to perform tasks more quickly.

Phoenix is an example of a script that is top heavy, CPU intensive and
generally pretty worthless. There are repeated commands and remaps in the
script which merely adds to the overall worthlessness. Of what value is it to
map an alias to do different means when one meaning overwrites the other. In
general you could strip out 90% of it and not notice the difference. The coder
is a nice guy, but not a great coder. Dreamscript is Phoenix with all the
includes and none of the code. [PeniX](http://www.ntnu.no/~borud/haq.html) is
a vapourware script by Ron Ritzman combining the best features of EDWARBOT,
WARUNGB0T, BOTSKEL and Phoenix and is available for IRCII and MIRC clients on
the EBOAI hackers site.

#### 15) If there is a client on irc that belongs to me, but I can't seem to get to it, how do I get rid of it?



  * Wait. It may time out.
  * If you're on unix, log into the same machine as the ghost and type kill -9 -1 (kill all processes but the login shell) or ps -u and kill the pid (process id number) of the ghosted irc process by using the command kill -9 pid
  * If you're not on unix, ask a non-idle server oper to kill it.
16) Why are there these numbers before people's realname information (that
stuff in parentheses)?

That's the number of server "hops" or links that the user is away from you. Some clients show them, some do not. See the help files that accompany your client code for information about turning this feature on or off.

#### 17) How can I see if a person is idle without them knowing, see for sure if
they have an away message, or tell if a user is really a ghost?

`/whois <server> <nick>` (where server is the server they are on, not the server you are on.) or `/whois <nick> <nick>:` Both have the effect of querying the user in question's server for the user's information. The server remembers idle times and away messages, and as a bonus, you can use it to measure lag at no extra charge. If the user is a ghost, you will see them with `/whois <nick>`, but not with `/whois <nick> <nick>`.

#### 18) how can I see what servers are between me and my friend?

`/trace <nick>`

#### 19) How do I get a list of IRC servers?

`/links` will send a list of IRC servers to your irc client connection, but in general, this is a bad idea as there may be hundreds of servers.

  * [DALnet serverlist](http://www2.nether.net/dalnet/finger.cgi?servers@dal.net)
  * [undernet](ftp://ftp.undernet.org/pub/undernet/servers)
  * [EFnet serverlist ](http://www.comco.com/dougmc/irc-stats/server-list/efnet-server-list)

#### 20) How can I see how the IRC network is organized?

The IRC topology how the IRC network servers are connected to each other. This should follow (but doesn't always) the underlying network topology. When you evaluate server connectivity, take into account the underlying network.
To view topology at a server level (undernet based code only - this includes
DALnet, gammanet and any undernet based IRC server code) use the command
"map". Remember this is a SERVER based command, not a client one, so you may
need to use the quote character of your IRC server in order to send the
command.

To view topology at a client level (IRCII clients only) use Daemon's IMAP
script.

To load imap type:

`/load imap`

To generate the imap type:

`/initmap [domain]`

- use domain for building an internal map of a region. ie `/initmap *.ca` to build a map of Canada internal.
To view the generated map:

`/gomap [server]`

- use server to run the starting from a different location then the server you are on.

#### 21) On EFnet there's a channel called #eboai. I went there and they don't discuss the Ebola virus at all! Who are they and why?

They are the elite bastards of alt.irc. At any given time you may expect to find Ron Ritzman, Damon Chetson, Bjorn Borud, Patrick McGinnis, Adam Noel Harris, Roger Espel Llima and scads of other elite bastards. This is not the channel to go to for bot help.

#### 22) I want to make netsplits so I can hack channels and eavesdrop other people's private chat sessions without them knowing. How can I do that?

You know, you really shouldn't be doing that. It's not nice and besides...aw heck; you are going to find out one way or another so we might as well tell you right away. The EBOAI sponsors a hackers archive in Norway. This location was carefully chosen for its loose legal infrastructure. The[ URL for this resource is](http://www.ntnu.no/~borud/haq.html), incidentally, the same site where you may obtain PeniX mentioned above. _Disclaimer: The FAQ author and the EBOAI do not guarantee the continued existence of this site, nor do they endorse any of the resources thereon. Discretion is advised when viewing this site._

#### 23) What are some good web sites for IRC information?

[efnet's #irchelp archives ](http://www.irchelp.org/)
[pjg's IRC archive ](http://urth.acsu.buffalo.edu/irc/WWW/ircdocs.html)

[The DALnet site](http://www.dal.net/)

[The Undernet site](http://www2.undernet.org:8080/~cs93jtl/Undernet.html)

#### 24) How can I get auto-oped on a channel like I see other people do?

DALnet - The person is a registered channel owner. Register a channel and this could happen to you too. Undernet/EFnet - The person joined the channel during a server split and recreated the channel. The TS servers (on nets and servers where TS in enabled) should unop the intruder and some people have scripts that will do the same thing.

#### 25) These multiple networks are confusing. What's the best IRCnet for me?

I hate questions like this. The short answer: the best network for you is where your friends are. Barring that,

  * DALnet is the best network for meeting people on a channel you can control on a regular basis.
  * If you're looking for a channel to hold classes or group meetings, try DALnet first, undernet next, circnet, gammanet maybe, EFnet, and last of all newnet.
  * If you're looking for a channel to run and test your bot try newnet.
  * If you're looking for a place to meet people try EFnet first, undernet or dalnet next and then maybe gammanet.
  * If you seem to have trouble follow you like a sewn-on shadow and you want someone to intercede against it, try Undernet first, DALnet next, then gammanet next.

#### 26) When there's a netsplit some of the servers have different information when the net rejoins, how does it resolve?

All channel modes are rebroadcasted to the respective sides of the network and either:
NO TimeStamp) all modes passed are valid

or

TimeStamp) only the correctly stamped modes are valid

Oper mode message in the whois information (blah is an IRC operator) propagate

The names of the channels you are on propagate

Away messages do not (except on DALnet)

Idle times do not

Channel topics do not (except on DALnet)

A note on +k (key) propagation. Dueling keys do not propagate. If the channel
has one key and during a split, someone creates another key, when the net
rejoins half the net will have one key and the other half will have the other.
This will continue until one person sets a key on the channel overriding both
existing keys. (No, I have never personally tested to see how many keys I
could stack on a channel.)

If you see a need for additional questions, don't hesitate to send mail to
[me](mailto:yesowitc@rocza.kei.com). I'm [M.D.
Yesowitch](http://www.kei.com/homepages/yesowitc) the official EBOAI IFAQ
maintainer.

For more information on the EBOAI, you are encouraged to visit the: [EBOAI
homepage](http://www.jlc.net/~jason/eboai.html) and the [CrackEBOAI
homepage.](http://www.ecn.uoknor.edu/~mecaroth/eboai.html)

* * *

*[Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many others.*
