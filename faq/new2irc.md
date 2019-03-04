---
title: The IRC Prelude
author: David Caraballo (DC-itsme) and Joseph Lo (Jolo)
layout: default
license: irchelp
redirect_from: /irchelp/new2irc.html
---
# The IRC Prelude

By David Caraballo (DC-itsme) and Joseph Lo (Jolo)



The original version of this page is at <[http://www.irchelp.org/faqs/new2irc.html](http://www.irchelp.org/faqs/new2irc.html)>

Translations: [Español](/irchelp/misc/esnew2irc.html) |
[Français](/irchelp/misc/frnew2irc.html) |
[Deutsch](/irchelp/misc/denew2irc.html) |
[Greek](/irchelp/misc/grnew2irc.html) |
[Indonesia](/misc/idnew2irc.html) |
[Italiano](/misc/itnew2irc.html) |
[Nederlands](/irchelp/misc/nlnew2irc.html) |
[Portugues](/misc/ptnew2irc.html) |
[Turkce](/misc/trnew2irc.html)

## Contents

  1. What is IRC, and how does it work?
  2. Some details
  3. Talking, and entering commands
  4. Where to go
  5. Some smileys and jargon
  6. Some advice
  7. IRC server problems, and choosing a server
  8. More detailed help
  9. A word of warning

* * *

## 1. What is IRC, and how does it work?

IRC (Internet Relay Chat) provides a way of communicating in real time with
people from all over the world. It consists of various separate
[networks](/irchelp/networks/) (or "nets") of IRC servers, machines that allow
users to connect to IRC. The largest nets are [EFnet](http://www.efnet.org/)
(the original IRC net, often having more than 32,000 people at once),
[Undernet](http://www.undernet.org/), [IRCnet](http://www.funet.fi/~irc/),
[DALnet](http://www.dal.net/), and [NewNet](http://www.newnet.net/).



Generally, the user (such as you) runs a program (called a "client") to
connect to a server on one of the [IRC nets](/irchelp/networks/). The server
relays information to and from other servers on the same net. Recommended
clients:


* [UNIX/Linux Clients](http://www.irchelp.org/irchelp/clients/unix/)
  * [irssi](/irchelp/clients/unix/irssi/) - terminal-mode client
  * [xchat](/irchelp/clients/unix/xchat.html) - X11 (graphical) client
* [Windows Clients](http://www.irchelp.org/irchelp/clients/windows/)
  * [mIRC](/irchelp/clients/windows/mirc/)
* [Macintosh clients](http://www.irchelp.org/irchelp/clients/mac/)


 Be sure to read the documentation for your client!



 Once connected to an IRC server on an IRC network, you will usually join one
or more "channels" and converse with others there. On
[EFnet](http://www.efnet.org/), there often are more than 12,000
[channels](/irchelp/chanlist/), each devoted to a different topic.
Conversations may be public (where everyone in a channel can see what you
type) or private (messages between only two people, who may or may not be on
the same channel). IRC is not a "game", and I highly recommend you treat
people you meet on IRC with the same courtesy as if you were talking in person
or on the phone, or there may be serious consequences.




* * *

## 2. Some details

 Channel names usually begin with a #, as in #irchelp . The same channels are
shared among all IRC servers on the same net, so you do not have to be on the
same IRC server as your friends. (There are also channels with names beginning
with a & instead of a #. These channels are not shared by all servers on the
net but exist locally on that server only.)



 Each user is known on IRC by a "nick", such as _smartgal_ or _FunGuy_. To
avoid conflicts with other users, it is best to use a nick that is not too
common, e.g., "john" is a poor choice. On some nets, nicks do not belong to
anyone, nor do channels. This can lead to conflict, so, if you feel strongly
about ownership of such things, you may prefer networks with "services" like
[Undernet](http://www.undernet.org/), [DALnet](http://www.dal.net/), or other
[smaller networks](/irchelp/networks/).



 Channels are run by channel operators, or just "ops" for short, who can
control the channel by choosing who may join (by "banning" some users), who
must leave (by "kicking" them out), and even who may speak (by making the
channel "moderated")! Channel ops have **complete** control over their channel,
and their decisions are final. If you are banned from a channel, send a /msg
to a channel op and ask nicely to be let in (see the /who command in the next
section to learn how to find ops). If they ignore you or /who gives no
response because the channel is in secret mode (+s), just go somewhere else
where you are more welcome.



 [IRC servers](/ircd/) are run by IRC admins and by [IRC
operators](/ircd/ircopguide.html), or "IRC ops". IRC ops manage the
servers themselves and, on EFnet and many other networks, do not get involved
in personal disputes, channel takeovers, restoring lost ops, etc. They are
_not_ "IRC cops."


* * *

## 3. Talking, and entering commands

Commands and text are typed in the same place. By default, commands begin
with the character / . If you have a graphical client such as
[mIRC](/irchelp/mirc/) for Windows, many commands can be executed by clicking
on icons with the mouse pointer. It is, however, highly recommended that you
learn to type in the basic IRC commands first. When entering commands, pay
close attention to spacing and capitalization. The basic commands work on all
the good clients.



 Some examples are given below. In these, suppose your nick is "yournick",
and that you are on the channel #coolness.



 Your friend "MaryN" is in #coolness with you, and your friend "Tomm" is on
IRC but is not on a channel with you. You can apply these examples in general
by substituting the relevant nick or channel names.



 What you type

What happens



 /join #coolness

 You join the channel #coolness.



 /who #coolness

 Gives some info on users in the channel.

@ = channel op, while * means IRC op.


 hello everyone

 Everyone on #coolness sees _<yournick> hello everyone_. (You need not type
in your own nick.)



 /me is a pink bunny

 Everyone in #coolness sees _* yournick is a pink bunny_



 /leave #coolness

 You leave the channel.



 /whois Tomm

 You get some info about Tomm or whatever nickname you entered.



 /whois yournick

 This is some info others see about you.



 /nick newnick

 Changes your nick to "newnick"



 /msg Tomm hi there.

 Only Tomm sees your message (you don't need to be on the same channel for
this to work).



 /ping #coolness

 Gives information on the delay (round-trip) between you and everybody on
#coolness.



 /ping Tomm

 Gives information on the delay (round-trip) between you and just Tomm.



 /dcc chat MaryN

 This sends MaryN a request for a dcc chat session. MaryN types /dcc chat
yournick to complete the connection. DCC chat is faster (lag free) and more
secure than /msg.



 /msg =MaryN Hi there!

 Once a DCC connection has been established, use the /msg =nick message
format to exchange messages (note the = sign). DCC does not go through
servers, so it are unaffected by server lag, net splits, etc.



 /help

 This works in many clients. Try it!



 /quit good night!

 You quit IRC completely, with the parting comment so that others see "***
Signoff: yournick (good night!)".



 **NOTE:** When you are not in a named channel, lines not beginning with a /
have no effect, and many commands work differently or fail to work altogether.




* * *

## 4. Where to go

 You can learn a lot by joining a channel and just listening and talking for
a while. For starters, try these channels: #new2irc, #newuser, #newbies, or #chat.



 For help with the [mIRC](/irchelp/mirc/) client, try joining
[#new2mirc](http://www.mirc.co.uk/chat/n2mircef.chat) or
[#mirchelp](http://www.mirc.co.uk/chat/mircheef.chat). For help with general
IRC questions, join #irchelp.



 To form your own channel with the name #mychannel (if #mychannel does not
already exist), type /join #mychannel. The channel is created and you are
automatically made an op.

* * *

## 5. Some smileys and jargon

 :-) is a smiley face, tilt your head to the left to see it. Likewise, :-( is
a frown. ;-) is a wink. :~~( is crying, while :-P is someone sticking their
tongue out. :-P ~~ is drooling. (-: a lefty's smile, etc. There are hundreds
of these faces.



 Here are some common acronyms used in IRC:





     brb =  be right back                     bbiaf = be back in a flash

     bbl =  be back later                     ttfn = ta ta for now

     np  =  no problem                        imho = in my humble opinion

     lol =  laughing out loud                 j/k = just kidding

     re  =  hi again, as in 're hi'           wb = welcome back

     wtf =  what the f--k                     rtfm = read the f--king manual

     rotfl = rolling on the floor laughing




* * *

## 6. Some advice

 **Etiquette**     Typing in all caps, LIKE THIS, is considered "shouting"
and should be avoided. Likewise, do not repeat yourself or otherwise "flood"
the channel with many lines of text at once. Be sure to use correct
terminology, e.g., "channel", not "chat room", and "nick", not "handle".


 While in a channel, follow the lead of the channel ops there. If you
antagonize them, you may be "kicked" off the channel forcibly and possibly
"banned" from returning. On the other hand, some channel ops are power-hungry
and may kick or ban for no good reason. If this happens, or if someone on a
channel is bothering you, simply leave the channel -- there are thousands of
others.

**Registration**   On many networks. services exist for the registration of
nicknames and/or channels. These services vary greatly between networks, but are
useually mentioned in the server's message of the day (MOTD) which is shown when
you first connect. You can show the MOTD again at any time by typing /motd in most clients.

THe network's home page will also detail any services offered on that network.

Nickname registration allows you to "own" a nickname, and prevent others from
using it on that network. Consequently, if you try to use a nickname that someone else already
has reserved on such a network, you will recieve a warning message from the network,
and after a few seconds, your nickname will be changed or your will be disconnected.
In the event that this happens, simply change your nickname until you find one that's
not taken. Consult the MOTD or network homepage for details if you want to register your nickname.


 **Disconnected by /list?**     If you get disconnected when using the /list
command, try switching servers, or else recent channel lists are available on
the WWW at [http://www.irchelp.org/irchelp/chanlist/](/irchelp/chanlist/).


 **Harrassment and attacks**     If someone starts harassing or flooding you,
leave the channel or use the /ignore command. For more details,
[mIRC](/irchelp/mirc/) users see our [flood
protection](/irchelp/mirc/flood.html) page, [ircII](/irchelp/ircii/) users
type [/help ignore](/irchelp/ircii/commands/IGNORE). It is a good idea to set
your user mode to +i (invisible) to avoid unsolicited messages and harrassment
-- if you are "invisible" generally only users on a channel with you can
determine what nick you are using.


 If somebody else is crashing or disconnecting you, see our [Denial of
Service or "Nuke" Attacks](/irchelp/nuke/) page. You can also [log and report
abuse](/irchelp/misc/irclog.html) when it violates server rules, which you can
read by typing /motd.


* * *

## 7. IRC server problems, and choosing a server

 At this point, you are ready to "chat" on IRC. For the most part, the
commands above should suffice for beginners, but things can go wrong in IRC.



 **Net splits**     [Networks](/irchelp/networks/) can become divided (called
a "net split"), thus separating you from users you had been speaking with.
These splits are often relatively short, though common some days.



 **Lag**     A more frequent problem is "lag", where there is a noticeable
delay between the time you type something in and someone else reads it.
[Choosing a server](/irchelp/networks/servermap.html) near you is one way to
try to lessen lag. Lag can be measured by using the /ping command (see the
commands section above). Once you find a better server, the command for
changing servers is /server server.name.here.



 **[Server Lists](/irchelp/networks/)**     On most clients, typing /links
gives a list of servers on your current net. Use this command sparingly, no
more than a couple times in a row, or you may be mistaken for a "link looking"
troublemaker.



 **Ping? Pong!**     [mIRC](/irchelp/mirc/) users: _Ping? Pong!_ in the
status window just means your server pinged you to make sure you were still
connected, and your client automatically replied with a pong. Don't worry
about these.



 **Reminder about DCC chat**     The /dcc chat command can be used to
establish a one-on-one connection that avoids lag and will not be broken by a
net split! Check your docs for usage info. In most clients, you can set up a
DCC chat connection by both typing /dcc chat nick_of_other_person. To talk
through that connection, type /msg =nick whatever (note the = sign). In
[mIRC](/irchelp/mirc/), you can also start a DCC chat session by selecting
_DCC_ and then _Chat_ from the menu and then entering the nick of the user
with whom you wish to chat. A window opens for that dcc chat session.





* * *

## 8. More detailed help

 For further information about these issues, as well as about other commands,
visit the web site <[http://www.irchelp.org](http://www.irchelp.org). There
you can find many [help files](faq.html), such as:



   * [IRC Primer](/irchelp/ircprimer.html)

   * [FAQ (Frequently Asked Questions)](/irchelp/altircfaq.html) for
[alt.irc](news:alt.irc) newsgroup

   * [IRC tutorial](/irchelp/irctutorial.html)



 At that web site you will also find more advanced information for specific
IRC clients, including:



   * [ircII client](/irchelp/ircii/) and [ircII scripts](/irchelp/script/).

   * [Mac clients](/irchelp/mac/)

   * [mIRC client](/irchelp/mirc/) for Windows



 Looking for other clients? The most comprehensive source of clients is at
the [Undernet FTP archive](ftp://ftp.undernet.org/pub/irc/clients/) or
[Undernet WWW archive](http://clients.undernet.org/). The clients are
organized into groups like Windows, Macintosh, DOS, Amiga, Java, etc.



 The [mIRC](/irchelp/mirc/) client also has excellent built-in help files
written by Tjerk Vonck (mirc@dds.nl). Select _Ircintro.hlp_ from the _Help_
menu.




* * *

## 9. A word of warning

 **IRC scripts** are sets of commands that your client _will_ run. Many
otherwise good scripts have been hacked so that if you load them, you can
seriously compromise your security (someone can get into your account, delete
all of your files, read your mail, etc.). There are also evildoers who try to
send people viruses and other bad things. Just like in real life, don't accept
anything from a stranger. There have been many incidents of this type, not
just a few. **Do not ever** run a script unless you know what each line does,
not even if it is given to you by a friend, as your friend may not have the
expertise to detect well-hidden "trojans".



 **Automatic DCC get** is a very bad idea! Once it is on, you are susceptible
to dangers ranging from disconnection from your server to giving someone else
control of your computer. Quite a few people have run into serious problems
because of the DCC autoget setting.





* * *

Special thanks to FreeSoft, prysm, hershey, turtle, Ariell, and other #irchelp
helpers on EFnet for their many helpful suggestions.

Now that you've read this beginner's guide, get on IRC and enjoy! Or if you
are interested in learning more, check out the many documents on the [#IRChelp
home page](http://www.irchelp.org/).

* * *
